class AddDeviseColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    # Пароль в зашифрованном виде
    add_column :users, :encrypted_password, :string, null: false, default: ""

    # Восстановление пароля
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime

    # Запомнить сессию
    add_column :users, :remember_created_at, :datetime

    # Индексы (уникальный email и токен для восстановления)
    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
