class CommentsController < ApplicationController
    def new
        @post = Post.find(params[:post_id])
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.new
        @comment.memo = params[:comment][:memo]
        @comment.post_id = params[:post_id]
        @comment.save
        
        redirect_to root_path
    end
end
