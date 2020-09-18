class CommentsController < ApplicationController
before_action: set_category

    def index 
        @comments=Comment.all
        render json: @comments
    end

    def create
        @comment=Comment.new(category_params)
        if @comment.save
            render json: @comment
        else
            render json: {error: "Error creatign category"}
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

    def set_category
        @category=Category.find(params[:category_id])
    end

    def comment_params
    end 
end
