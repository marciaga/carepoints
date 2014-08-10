class History
  include Mongoid::Document
  field :date, type: String

  embedded_in :user, :inverse_of => :history
  embeds_many :cares
end
