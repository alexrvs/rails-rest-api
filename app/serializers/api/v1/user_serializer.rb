module Api
  module V1
    class UserSerializer < ApplicationSerializer
      attributes :id, :first_name, :last_name,  :address, :authentication_token

    end
  end
end