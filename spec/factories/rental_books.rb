FactoryBot.define do
  factory :rental_book do
    author { "MyString" }
    title { "MyString" }
    publisher { "MyString" }
    category_id { 2 }
    condition_id { 2 }
    description { "MyText" }
    
    association :user

    after(:build) do |rental_book|
      rental_book.image.attach(io: File.open('public/images/PXL_20230701_042907702.jpg'), filename: 'PXL_20230701_042907702.jpg')
    end
  end
end