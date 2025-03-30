class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :email, uniqueness: true

  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "full_name", "id", "notes", "phone", "updated_at", "image"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
