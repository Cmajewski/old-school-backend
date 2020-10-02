class Api::V1::PostsController < ApplicationController


    def index 
        if params[:category_id]
            @posts=Category.find(params[:category_id]).posts
            render json: @posts
        else  
            @posts=Post.all
            render json: @posts
        end
    end

    def create
        @post=Post.new(post_params)
        if @post.save
            render json: @post
        else 
            render json: {error: "Posting Failed"}
        end
    end

    def show 
        if 
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

    def post_params
        params.require(:post).permit!
    end 

end
