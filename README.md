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
| birthday            | date    | null: false |

- has_many :items
- has_many :purchases

## itemsテーブル

| Column        | Type       | Options          |
| -----------   | ---------- | ---------------- |
| title         | string     | null: false      |
| category      | integer    | null: false      |
| status        | integer    | null: false      |
| catch_copy    | text       | null: false      |
| price         | integer    | null: false      |
| delivery_fee  | integer    | null: false      |
| area          | integer    | null: false      |
| days          | integer    | null: false      |
| user          | references | foreign_key: true|

- belongs_to :user
- has_one :purchases

## purchasesテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| item        | references | foreign_key: true |

- belongs_to :user
- belongs_to :item
- has_one :addresses

## addressesテーブル

| Column        | Type       | Options           |
| -----------   | ---------- | ----------------- |
| postal_code   | string     | null: false       |
| prefectures   | integer    | null: false       |
| municipality  | string     | null: false       |
| address       | string     | null: false       |
| building_name | string     |                   |
| phone_number  | string     | null: false       |
| purchases     | references | foreign_key: true |

- belongs_to :purchases