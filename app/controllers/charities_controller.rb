class CharitiesController < ApplicationController
    def index
        @charities = Charity.all
      end

    def show
        @charity = Charity.find(params[:id])
      end

    def new
        @charity = Charity.new
      end

    def create
        @charity = Charity.new(charity_params)
        if @charity.save
          redirect_to @charity
        else
          render :new
        end
      end

    def edit
        @charity = Charity.find(params[:id])
      end

    def update
        @charity = Charity.find(params[:id])
        if @charity.update(charity_params)
          redirect_to @charity
        else
          render :edit
        end
      end

    def destroy
        @charity = Charity.find(params[:id])
        @charity.destroy
        redirect_to charities_path
      end

    
  def dashboard
    @charity = Charity.find(params[:id])
    @donations = @charity.donations 
    end
    
    private

    def charity_params
        params.require(:charity).permit(:name, :location, :email, :password, :purpose)
      end
end
