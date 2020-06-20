class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:id]
        if @comment.save
            redirect_to :back
        else
            flash[:errors] = ['Your comment could not be created']
            redirect_to :back
        end
    end

    private
        def comment_params
            params.require(:comment).permit(:content, :event_id)
        end 
end
