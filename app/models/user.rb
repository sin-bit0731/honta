class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rental_books
  has_many :rental_histories
  with_options presence: true do
    validates :nickname
    validates :birth_date

    with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々]/, message: 'は全角(漢字・ひらがな・カタカナ)を使用して下さい' } do
      validates :last_name
      validates :first_name
    end

    with_options format: { with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/, message: 'は全角(カタカナ)を使用して下さい' } do
      validates :last_name_kana
      validates :first_name_kana
    end

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英字と半角数字の両方を含めて設定してください' }
  end
end