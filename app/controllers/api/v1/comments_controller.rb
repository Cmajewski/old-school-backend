class Api::V1::CommentsController < ApplicationController

    before_action :set_post

    def index 
        @comments=@post.comments
        render json: @comments
    end

    def create
        @comment=@post.comments.new(comment_params)
        if @comment.save
            render json: @comment
        else
            render json: {error: "Error creating comment"}
        end
    end

    def show 
        @comment=Comment.find(params[:id])
        render json: @comment

    end

    def destroy
        @comment=Comment.find(params[:id])
        @comment.destroy
    end


    private

    def set_post
        @post=Post.find(params[:post_id])
    end 


    def comment_params
        params.require(:comment).permit!
    end 
end
