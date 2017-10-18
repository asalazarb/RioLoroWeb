class EspecieImage < ApplicationRecord
  belongs_to :especie, foreign_key: "especie_id"
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
