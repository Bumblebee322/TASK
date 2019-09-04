class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :title
      t.string :short_discription
      t.text :discription

      t.timestamps
    end
  end
end
