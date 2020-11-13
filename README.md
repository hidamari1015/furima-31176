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
- has_many :orders

## itemsテーブル

| Column          | Type       | Options          |
| --------------- | ---------- | ---------------- |
| title           | string     | null: false      |
| category_id     | integer    | null: false      |
| status_id       | integer    | null: false      |
| catch_copy      | text       | null: false      |
| price           | integer    | null: false      |
| delivery_fee_id | integer    | null: false      |
| prefecture_id   | integer    | null: false      |
| day_id          | integer    | null: false      |
| user            | references | foreign_key: true|

- belongs_to :user
- has_one :orders

## ordersテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| user        | references | foreign_key: true |
| item        | references | foreign_key: true |

- belongs_to :user
- belongs_to :item
- has_one :address

## addressesテーブル

| Column         | Type       | Options           |
| -------------- | ---------- | ----------------- |
| postal_code    | string     | null: false       |
| prefecture_id  | integer    | null: false       |
| city           | string     | null: false       |
| house_number   | string     | null: false       |
| building_name  | string     |                   |
| phone_number   | string     | null: false       |
| order          | references | foreign_key: true |

- belongs_to :order