class DishSerializer < ActiveModel::Serializer
  attributes :id, :name_of_dish,:description, :country,:img,:like, :user_id

end
