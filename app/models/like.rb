class Like
	include Mongoid::Document
	field :text, type: String

	belongs_to :user
end