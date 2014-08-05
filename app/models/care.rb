class Care
  include Mongoid::Document 
  field :care_item, type: String
  field :value, type: Integer
  embedded_in :user, :inverse_of => :cares
end
