class Care
  include Mongoid::Document 
  field :care_item, type: String
  field :value, type: Integer

  validates_presence_of :care_item, :value
  validates_numericality_of :value
  
  embedded_in :user, :inverse_of => :cares
  
end
