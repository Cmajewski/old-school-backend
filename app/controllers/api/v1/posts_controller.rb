class Api::V1::PostsController < ApplicationController

    before_action :set_category,only: [:create, :index]

    def index 
        @posts=@category.posts  
        render json: @posts
    end

    def create
        @post=@category.posts.new(post_params)
        if @post.save
            render json: @post
        else 
            render json: {error: "Posting Failed"}
        end
    end

    def show 
        if @category=Category.find(params[:category_id])
            @post=@category.posts.find(params[:id])
            render json:@post
        else
            @post=Post.find(params[:id])
            render json: @post
        end
    end

    def destroy 
        @post=Post.find(params[:id])
        @post.destroy
    end

    private

    def set_category
        @category=Category.find(params[:category_id])
    end

    def post_params
        params.require(:post).permit!
    end 

end
