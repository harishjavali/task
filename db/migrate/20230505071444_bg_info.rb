class BgInfo < ActiveRecord::Migration[7.0]
  def change
    create_table :bg_info do |t|
      t.string :table_name
      t.integer :table_id

      t.timestamps
    end
  end
end
