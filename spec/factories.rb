FactoryGirl.define do
  factory :user do
    name      "Test User"
    email     "test_user@example.org"
    password  "foobar"
    password_confirmation "foobar"
  end
end