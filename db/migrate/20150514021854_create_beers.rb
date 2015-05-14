class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :company, null: false
      t.integer :count, null: false, default: 0
      t.timestamps null: false
    end
  end
end
