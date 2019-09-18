class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|

      t.timestamps
      t.text :body
      t.references :company, null: false, foreign_key: true
    end
  end
end
