class ActivitiesController < ApplicationController
    def index
        @activities = Activity.all
        render json: @activities
    end

    def create
        activity = Activity.new(activity_params)
        activity.save!
    end

private
    def activity_params
        params.require(:activity).permit(:user_id, :title, :genre, :date, :venue, :start_time, :end_time, :max_pax, :current_pax)
    end
end
