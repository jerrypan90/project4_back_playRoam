class ActivitiesController < ApplicationController
    def create
        activity = Activity.new(activity_params)
        activity.save!
    end

private
    def activity_params
        params.require(:activity).permit(:user_id, :title, :genre, :venue, :time, :max_pax, :current_pax)
    end
end
