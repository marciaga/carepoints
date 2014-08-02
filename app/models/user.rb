class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :points, type: Integer
end
