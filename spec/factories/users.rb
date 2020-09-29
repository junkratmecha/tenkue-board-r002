FactoryBot.define do
  factory :user do
    email                 { "guest@guest.mail" }
    password              { "foobarfoo1" }
    password_confirmation { "foobarfoo1" }
    name                  { "guest" }
  end
end