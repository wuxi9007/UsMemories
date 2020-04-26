class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :place, null: false, foreign_key: true, type: :integer
      t.timestamp :taken_time
      t.text :memo

      t.timestamps
    end
  end
end
