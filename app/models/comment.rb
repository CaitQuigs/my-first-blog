class Comment < ApplicationRecord

	belongs_to :post
	belongs_to :user

	validates :message, presence: true, length: {minimum: 5, too_short: "Are you sure that's all you want to write? This doesn't seem like much of a comment!"}
end
