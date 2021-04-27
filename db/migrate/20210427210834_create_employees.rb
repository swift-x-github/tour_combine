class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.text :name
      t.boolean :active
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
