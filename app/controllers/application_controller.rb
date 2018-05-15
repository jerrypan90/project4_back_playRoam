class ApplicationController < ActionController::Base
    #protect_from_forgery except: :create
    protect_from_forgery unless: -> { request.format.json? }

private
    def encode_token(payload={})
        exp =  24.hours.from_now
        payload[:exp] = exp.to_i
        #JWT.encode(payload, Rails.application.secrets.secret_key_base)
        JWT.encode(payload, nil, 'none')
    end
end
