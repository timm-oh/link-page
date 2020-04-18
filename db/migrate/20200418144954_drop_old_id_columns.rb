class DropOldIdColumns < ActiveRecord::Migration[6.0]
  def up
    safety_assured do
      remove_column :links, :integer_id
      remove_column :links, :user_integer_id
    end
  end
end
