class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :product_img, styles: { medium: "350x350>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_img, content_type: /\Aimage\/.*\Z/
  validates_attachment :product_img,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
