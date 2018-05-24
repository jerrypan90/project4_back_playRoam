class RsvpsController < ApplicationController
    def index
        rsvps = Rsvp.all
        render json: rsvps
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
