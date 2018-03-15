module Api
  module V1
    class ProductsController < ApplicationController



      def index
        @products = Product.all()
        render json: @products, each_serializer: Api::V1::ProductSerializer
      end

      def show
        render json: @product, serializer: ProductSerializer

      end

      def create

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
