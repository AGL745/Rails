module Visible
    extend ActiveSupport::Concern

    VALID_STATUSES = ['public', 'private', 'archived']

    included do
        validates :status, inclusion: { in: VALID_STATUSES }
    end

    #Class methods can also be added to concerns. If we want to display a count of public articles or comments on our main page, we might add a class method to Visible as follows: You can call it in the view like any class method

    class_methods do
        def public_count
            where(status: 'public').count
        end
    end

    def archived?
        status == 'archived'
    end
end
