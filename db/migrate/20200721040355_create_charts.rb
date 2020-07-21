class CreateCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :charts do |t|
      t.integer :price
      t.timestamp :start_at

      t.timestamps
    end
  end
end
