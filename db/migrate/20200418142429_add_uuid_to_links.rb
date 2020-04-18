class AddUuidToLinks < ActiveRecord::Migration[6.0]
  def up
    safety_assured do
      add_column :links, :uuid, :uuid, default: 'gen_random_uuid()', null: false
      rename_column :links, :id, :integer_id
      rename_column :links, :uuid, :id
      execute "ALTER TABLE links drop constraint links_pkey;"
      execute "ALTER TABLE links ADD PRIMARY KEY (id);"

      execute "ALTER TABLE ONLY links ALTER COLUMN integer_id DROP DEFAULT;"
      change_column_null :links, :integer_id, true
      execute "DROP SEQUENCE IF EXISTS links_id_seq"
    end

    # Invalidate Cache
    Link.update_all(updated_at: Time.current)
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
