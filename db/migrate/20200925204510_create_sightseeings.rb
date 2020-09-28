class CreateSightseeings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightseeings do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
