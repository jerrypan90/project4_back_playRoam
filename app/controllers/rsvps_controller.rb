class RsvpsController < ApplicationController
    def index
        # rsvps = Rsvp.all
        # render json: rsvps

        userRsvp = Activity.where(:id => Rsvp.where(:user_id => params[:user_id]))
        render json: userRsvp
    end

    def create
        rsvp = Rsvp.new(rsvp_params)
        rsvp.save!
    end

private
    def rsvp_params
        params.require(:rsvp).permit(:user_id, :activity_id, :attendance)
    end
end
