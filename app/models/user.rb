class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :customers, dependent: :destroy
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :store, presence: true
end
