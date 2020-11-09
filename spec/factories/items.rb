FactoryBot.define do
  factory :item do
    title              { 'hoge' }
    category_id        { 2 }
    status_id          { 2 }
    catch_copy         { 'hoge' }
    price              { 300 }
    delivery_fee_id    { 2 }
    prefectures_id     { 2 }
    day_id             { 2 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
