module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :edit]

      def index
        @users = User.all()
        render json: @users, each_serializer: UserSerializer
      end

      def show
        render json: @user, serializer: UserSerializer
      end

      def update=

      end

      def edit=

      end


      private

        def set_user
          @user = User.find(params[:id]) if params[:id].present?
        end

    end
  end
end

