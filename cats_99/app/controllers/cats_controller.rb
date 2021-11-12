class CatsController < ApplicationController

    def index 
        @cats = Cat.all 
        render :index
    end 

    def new
        @cat = Cat.new 
        render :new
    end 

    def edit 
        @cat = Cat.find(params[:id])
        render :edit 
    end 

    def show 
        @cat = Cat.find(params[:id])
        render :show
    end 

    def create 
        @cat = Cat.new(cats_params)
        if @cat.save
            redirect_to cat_url(@cat)
        else 
            render json: @cat.errors.full_messages, status: 422
        end 
    end 

    def destroy 
        @cat = Cat.find(params[:id])
        @cat.destroy 
        redirect_to cats_url
    end 

    def update
        @cat = Cat.find(params[:id])
        if @cat.update(cats_params)
            redirect_to cat_url(@cat)
        else   
            render json: @cat.errors.full_messages, status: 422
        end
    end

    def cats_params
        params.require(:cat).permit(:birthdate, :color, :name, :sex, :description)
    end 

end 