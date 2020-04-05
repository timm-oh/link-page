class AddPositionToLinks < ActiveRecord::Migration[6.0]
  def up
    add_column :links, :position, :integer
    change_column_default :links, :position, 0
    Link.update_all(position: 0)
  end

  def downe
    remove_column :links, :position
  end
end
