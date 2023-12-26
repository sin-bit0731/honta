class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :rental_books
  has_many :rental_histories
  with_options presence: true do
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英字と半角数字の両方を含めて設定してください' }
  end
end