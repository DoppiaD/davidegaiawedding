class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :recoverable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable,
          :validatable, :trackable

  has_many :guests, dependent: :destroy
end
