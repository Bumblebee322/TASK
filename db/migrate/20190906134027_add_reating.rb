class AddReating < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :rating , :integer
    add_column :companies, :goal, :real
  end
end
