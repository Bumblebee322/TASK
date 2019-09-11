class AddCurrentSumm < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :current_sum, :real, :default => 0.0
  end
end
