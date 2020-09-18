class API::V1::CategoriesController < ApplicationController

    def index 
        @categories=Categories.all
        render json: @categories
    end

    def create
        @category=Category.new(category_params)
        if @category.save
            render json: @category
        else
            render json: {error: "Error creatign category"}
        end
    end

    def show 
        @category=Categories.find(params[:id])
        render json: @category

    end

    def destroy
        @category=Categories.find(params[:id])
         @category.destroy
    end

    private

    def category_params
        params.require(:category).permit(:name)
    end 
end
