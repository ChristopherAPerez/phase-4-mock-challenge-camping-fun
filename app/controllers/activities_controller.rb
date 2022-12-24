class ActivitiesController < ApplicationController
    
    def index
        activities = Activity.all 
        render json: activities
    end
    
    # def show
    #     activities = Activity.find(params[:id])
    #     render json: activities
    # end

    def destroy
      activities = Activity.find_by(id: params[:id])
      if activities
          activities.destroy
        head :no_content
      else
        render json: { error: "Activity not found" }, status: :not_found
      end
    end

end
