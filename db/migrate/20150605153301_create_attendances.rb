class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.boolean :present?

      t.timestamps null: false
    end
  end
end
