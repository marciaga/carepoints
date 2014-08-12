class Care
  include Mongoid::Document 
  field :care_item, type: String
  field :value, type: Integer

  validates_presence_of :care_item, :value
  embedded_in :user, :inverse_of => :cares
  embedded_in :histories, :inverse_of => :cares
end
