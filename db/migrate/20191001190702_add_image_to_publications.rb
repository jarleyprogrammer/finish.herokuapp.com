class AddImageToPublications < ActiveRecord::Migration[5.2]
  def up
    add_attachment :publications, :image
  end

  def down
    remove_attachment :publications, :image
  end
end
