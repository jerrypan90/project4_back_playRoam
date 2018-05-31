class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
        render json: @activities
    end

    def create
        activity = Activity.new(activity_params)
        activity.save!
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def update
        currentPax = Activity.find(params[:id]).current_pax.to_i
        newCurrentPax = currentPax + 1
        activity = Activity.find(params[:id])
        activity.update!(:current_pax => newCurrentPax.to_s)
    end

private
    def activity_params
        params.require(:activity).permit(:user_id, :title, :genre, :date, :venue, :start_time, :end_time, :max_pax, :current_pax)
    end
end
