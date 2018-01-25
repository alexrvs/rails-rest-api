module Api
  module V1
    class UserSerializer < ApplicationSerializer
      attributes :id, :first_name, :last_name,  :address

    end
  end
end