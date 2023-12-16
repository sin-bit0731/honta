FactoryBot.define do
  factory :rental_book do
    author { "MyString" }
    title { "MyString" }
    publisher { "MyString" }
    category_id { 1 }
    condition_id { 1 }
    description { "MyText" }
    user { nil }
  end
end
