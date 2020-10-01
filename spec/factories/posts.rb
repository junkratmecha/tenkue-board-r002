FactoryBot.define do
  factory :post do
    user
    content { "こんにちは" }
  end
end