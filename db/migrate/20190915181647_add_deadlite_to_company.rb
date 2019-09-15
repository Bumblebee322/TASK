class AddDeadliteToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :deadline, :datetime
  end
end
