class Customer < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :email, presence: true
    validates :mobile_number, presence: true
    validates :store, presence: true
    validates :agreement, acceptance: true
end
