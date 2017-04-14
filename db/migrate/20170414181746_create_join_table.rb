class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :jobs, :tags do |t|
      t.index :job_id
      t.index :tag_id

      t.timestamps null: false
    end
  end
end
