## usersテーブル

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| email               | string  | null: false |
| encrypted_password  | string  | null: false |
| last_name           | string  | null: false |
| first_name          | string  | null: false |
| last_name_furigana  | string  | null: false |
| first_name_furigana | string  | null: false |
| nickname            | string  | null: false |
| birthday            | integer | null: false |

- has_many :items
- has_many :purchases

## itemsテーブル

| Column        | Type       | Options     |
| -----------   | ---------- | ----------- |
| title         | string     | null: false |
| category      | string     | null: false |
| status        | string     | null: false |
| catch_copy    | text       | null: false |
| price         | integer    | null: false |
| delivery_fee  | string     | null: false |
| area          | string     | null: false |
| days          | string     | null: false |
| user          | references | null: false |

- belongs_to :user
- has_one :purchases

## purchasesテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| item        | references | foreign_key: true |
| address     | references |                   |

- belongs_to :user
- has_one :item
- has_one :addresses

## addressesテーブル

| Column        | Type       | Options     |
| -----------   | ---------- | ----------- |
| postal_code   | string     | null: false |
| prefectures   | string     | null: false |
| municipality  | string     | null: false |
| address       | string     | null: false |
| building_name | string     |             |
| phone_number  | integer    | null: false |
| prototype     | references |             |

- belongs_to :purchases