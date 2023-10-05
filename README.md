## テーブル設計

## users テーブル

|     Column         |   Type  |    Options                |
|--------------------|---------|---------------------------|
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| profile            | string  | null: false               |
| member             | string  | null: false               |
| post               | string  | null: false               |

### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

|   Column         | Type       |   Options                      |
|------------------|------------|--------------------------------|
| proto_name       | string     | null: false                    |
| catch_copy       | text       | null: false                    |
| concept          | text       | null: false                    |
| user             | references | null: false, foreign_key: true |
### Association

- belongs_to :user
- has_many :comments

## comments テーブル

|    Column      |    Type    |         Options                |
|--------------------------------------------------------------|
| user           | references | null: false, foreign_key: true |
| prototype      | references | null: false, foreign_key: true |
| text           | text       | null: false                    |

### Association
- belongs_to :user
- belongs_to :prototype