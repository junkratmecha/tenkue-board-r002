FactoryBot.define do
  factory :comment do
    user
    post
    text { "こんばんわ" }
  end
end