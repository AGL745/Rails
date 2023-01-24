class Comment < ApplicationRecord
  include Visible
  # belongs_to :article, which sets up an Active Record association. 
  # makes association to article
  belongs_to :article


#Code moved to Concerns

  # VALID_STATUSES = ['public', 'private', 'archived']

  # validates :status, inclusion: { in: VALID_STATUSES }

  # def archived?
  #   status = 'archived'
  # end
end
