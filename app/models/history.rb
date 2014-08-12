class History
  include Mongoid::Document
  field :date, type: Date
  field :care_item, type: String
  field :value, type: Integer

  embedded_in :user, :inverse_of => :histories
  # embeds_many :cares 
end
