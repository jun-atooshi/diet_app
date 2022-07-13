class Health < ApplicationRecord
    validates :name, presence: true
    validates :height, presence: true
    validates :weight, presence: true
    validates :content, presence: true
end
