module Api
  module V1
    class ProductsController < ApplicationController
      before_action

      def index
        @products = Product.all()
        render json: {status: 200, data: @products}

      end

      def show
        render json: {status: 200, }

      end


      private

        def find_product
          @product = Product.find(params[:id])
        end


        def product_params
          params.permit(:name, :price)

        end


    end
  end
end
