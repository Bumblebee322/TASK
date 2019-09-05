class AddCreatorAndHimId < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :creator_name, :string
    add_column :companies, :creator_id, :integer
  end
end
