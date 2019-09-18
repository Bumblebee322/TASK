class AddTitleToNews < ActiveRecord::Migration[6.0]
  def change
    add_column(:news, :title, :string, limit: 50, null: false, default: '')
  end
end
