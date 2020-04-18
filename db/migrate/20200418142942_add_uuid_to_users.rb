class AddUuidToUsers < ActiveRecord::Migration[6.0]
  def up
    safety_assured do
      add_column :users, :uuid, :uuid, default: 'gen_random_uuid()', null: false
      add_column :links, :user_uuid, :uuid

      execute <<-SQL
        UPDATE links SET user_uuid = users.uuid
        FROM users WHERE links.user_id = users.id;
      SQL

      change_column_null :links, :user_uuid, false
      rename_column :links, :user_id, :user_integer_id
      rename_column :links, :user_uuid, :user_id

      add_index :links, :user_id

      remove_foreign_key :links, :users
      remove_column :users, :id
      rename_column :users, :uuid, :id

      execute "ALTER TABLE users ADD PRIMARY KEY (id);"

      add_foreign_key :links, :users
      add_index :users, :created_at
      add_index :links, :created_at
    end

    # Invalidate Cache
    User.update_all(updated_at: Time.current)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
