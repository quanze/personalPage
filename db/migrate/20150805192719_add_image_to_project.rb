class AddImageToProject < ActiveRecord::Migration
  def change
    add_column :projects, :image, :attachment
  end
end
