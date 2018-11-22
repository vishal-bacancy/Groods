class Photo < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>", large: '600x600>', hd: '1000x1000>' }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
