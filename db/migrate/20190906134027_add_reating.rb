class AddReating < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :rating , :integer
  end
end
