class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic

  def self.all_blogs
  	all
  end

  def self.limited_blogs
  	limit(2)
  end
end