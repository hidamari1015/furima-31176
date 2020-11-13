FactoryBot.define do
  factory :user_order do
    token            { 'tok_fb5473fbcb13e861a2e1d65e8231' }
    postal_code      { '123-4567' }
    prefecture_id    { 1 }
    city             { '札幌市' }
    house_number     { '1-1' }
    phone_number     { '09012345678' }
  end
end
