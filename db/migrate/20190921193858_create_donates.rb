class CreateDonates < ActiveRecord::Migration[6.0]
  def change
    create_table :donates do |t|
      t.string :title
      t.text :body
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
