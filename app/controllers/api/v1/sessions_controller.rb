module Api
  module V1
    class SessionsController < Devise::SessionsController
      skip_before_action :verify_authenticity_token, :only => :create

      respond_to :json
    end
  end
end