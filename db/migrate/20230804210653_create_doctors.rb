class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.string :university
      t.references :hospital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
