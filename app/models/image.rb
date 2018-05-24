class Image < ApplicationRecord
  belongs_to :Project
  has_attached_file :avatar, styles: { medium: "600x600>", thumb: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end