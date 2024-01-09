class RentalBook < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :author
    validates :description
    validates :publisher
  end

  validates :category_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank"}

  validate :image_presence

  private

  def image_presence
    errors.add(:image, 'must be attached') unless image.attached?
  end
end