class AddStyleToLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :style, :integer
    change_column_default :links, :style, from: nil, to: 0
    Link.update_all(style: 0)
  end
end
