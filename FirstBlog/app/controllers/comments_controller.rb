class CommentsController < ApplicationController

    #Each request for a comment has to keep track of the article to which the comment is attached, thus the initial call to the find method of the Article model to get the article in question.
    def create
        @article = Article.find(params[:article_id])

        #use the create method on @article.comments to create and save the comment. This will automatically link the comment so that it belongs to that particular article.
        @comment = @article.comments.create(comment_params)

        #send the user back to the original article using the article_path(@article) helper. As we have already seen, this calls the show action of the ArticlesController which in turn renders the show.html.erb template

        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: :see_other
    end

    # Strong parameters 
    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
end
