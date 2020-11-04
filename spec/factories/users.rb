FactoryBot.define do
  factory :user do
    nickname              {"hoge"}
    email                 {"sss@gmail.com"}
    password              {"1qazxsw2"}
    password_confirmation {password}
    last_name             {"山田ヤマダやまだ"}
    first_name            {"福フクふく"}
    last_name_furigana    {"ヤマダ"}
    first_name_furigana   {"フク"}
    birthday              {"19911010"}
  end
end