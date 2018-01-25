module Api
  module V1
    class ProductSerializer < ActiveModel::Serializer
      attributes :id, :name
    end
  end
end

