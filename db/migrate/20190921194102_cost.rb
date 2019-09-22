class Cost < ActiveRecord::Migration[6.0]
  def change
    add_column :donates, :cost, :real
    
  end
end
