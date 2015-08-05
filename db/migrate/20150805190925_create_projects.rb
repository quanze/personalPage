class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :tech_used
      t.string :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
