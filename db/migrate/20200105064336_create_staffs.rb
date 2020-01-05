class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.references :language, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
