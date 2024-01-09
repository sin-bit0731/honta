require 'rails_helper'

RSpec.describe RentalBook, type: :model do
  before do
    @rental_book = FactoryBot.build(:rental_book)
  end

  describe '本を貸し出す' do
    context '本を貸し出しできるとき' do
      it '全ての項目が正しく入力できていれば貸し出しできる' do
        expect(@rental_book).to be_valid
      end

      it 'userが紐づいていれば登録できる' do
        @rental_book.user = FactoryBot.create(:user)
        expect(@rental_book).to be_valid
      end
    end

    context '本を貸し出せないとき' do
      it 'imageが空だと貸し出しできない' do
        @rental_book.image = nil
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include('Image must be attached')
      end

      it 'authorが空だと貸し出しできない' do
        @rental_book.author = ''
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Author can't be blank")
      end

      it 'titleが空だと貸し出しできない' do
        @rental_book.title = ''
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Title can't be blank")
      end

      it 'publisherが空だと貸し出しできない' do
        @rental_book.publisher = ''
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Publisher can't be blank")
      end

      it 'descriptionが空だと貸し出しできない' do
        @rental_book.description = ''
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Description can't be blank")
      end

      it 'categoryが未選択だと貸し出しできない' do
        @rental_book.category_id = 1
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Category can't be blank")
      end

      it 'conditionが未選択だと貸し出しできない' do
        @rental_book.condition_id = 1
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include("Condition can't be blank")
      end

      it 'userが紐づいていないと登録できない' do
        @rental_book.user = nil
        @rental_book.valid?
        expect(@rental_book.errors.full_messages).to include('User must exist')
      end
    end
  end
end