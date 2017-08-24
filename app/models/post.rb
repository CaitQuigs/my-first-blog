class Post < ApplicationRecord

	has_many :comments
	belongs_to :user

	paginates_per 3

	validates :message, presence: true, length: {minimum: 10, too_short: "Are you sure that's all you want to write? This doesn't seem like much of a blog post!"}
	
end
