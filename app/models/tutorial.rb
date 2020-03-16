class Tutorial < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates_presence_of :title, :body

  belongs_to :topic, optional: true
  

  def self.special_tutorials
    all
  end

  def self.featured_tutorials
    limit(2)
  end
end

