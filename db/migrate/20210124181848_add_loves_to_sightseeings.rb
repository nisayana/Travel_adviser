class AddLovesToSightseeings < ActiveRecord::Migration[6.0]
  def change
    add_column :sightseeings, :loves, :integer
  end
end
