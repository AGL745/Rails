class Article < ApplicationRecord
    #Concern
    include Visible


    #Makes association to comments
    has_many :comments, dependent: :destroy

    #If you have an instance variable @article containing an article, you can retrieve all the comments belonging to that article as an array using @article.comments.
    

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}

    # You may be wondering where the title and body attributes are defined. Active Record automatically defines model attributes for every table column, so you don't have to declare those attributes in your model file.

#Concern used for this logic

    # VALID_STATUSES = ['public', 'private', 'archived']

    # validates :status, inclusion: { in: VALID_STATUSES }

    # def archived?
    #     status == 'archived'
    # end
end
