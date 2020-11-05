class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :delivery_fee
  belongs_to :prefectures
  belongs_to :day

  with_options presence: true do
    validates :title
    validates :category_id
    validates :status_id
    validates :catch_copy
    validates :price
    validates :delivery_fee_id
    validates :prefectures_id
    validates :day_id
  end

  validates :price, numericality: { only_integer: true, greater_than: 299, less_than: 10000000 }
  validates :price, format: { with: /\A[0-9]+\z/}
end
