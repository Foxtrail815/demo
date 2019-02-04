class CreateCounters < ActiveRecord::Migration[5.1]
  def change
    create_table :counters do |t|
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :expired_text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
