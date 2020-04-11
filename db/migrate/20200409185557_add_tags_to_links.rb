class AddTagsToLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :tags, :jsonb
    change_column_default :links, :tags, from: nil, to: {}
    Link.update_all(tags: {})
  end
end
