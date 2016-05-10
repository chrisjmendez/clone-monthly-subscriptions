class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :href
      t.string :title
      t.string :artist
      t.string :place
      t.text   :quip
      t.boolean :visible, default: false
      t.timestamps null: false
    end
  end
end
