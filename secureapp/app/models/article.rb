class Article < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["title", "body",]
  end

  def self.ransackable_associations(auth_object = nil)
    ["comments"]
  end

  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
