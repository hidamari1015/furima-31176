## usersテーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| email       | string  | null: false |
| password    | string  | null: false |
| name        | string  | null: false |
| nickname    | string  | null: false |
| birthday    | integer | null: false |

- has_many :items
- has_many :purchases

## itemsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| title       | string     | null: false |
| category    | string     | null: false |
| status      | string     | null: false |
| catch_copy  | text       | null: false |
| price       | integer    | null: false |

- belongs_to :users
- has_one :purchases

## purchasesテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| user        | references |             |
| item        | references |             |
| address     | references |             |

- has_one :items
- has_many :addresses

## addressesテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| address     | text       | null: false |
| user        | references |             |
| prototype   | references |             |

- belongs_to :purchases