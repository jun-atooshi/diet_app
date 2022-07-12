class CreateHealths < ActiveRecord::Migration[6.1]
  def change
    create_table :healths do |t|
      t.string :name
      t.decimal :height, precision: 6, scale: 2
      t.decimal :weight, precision: 6, scale: 2
      t.text :content

      t.timestamps
    end
  end
end
