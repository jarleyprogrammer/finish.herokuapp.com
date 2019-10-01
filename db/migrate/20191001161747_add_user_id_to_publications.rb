class AddUserIdToPublications < ActiveRecord::Migration[5.2]
  def change
    add_reference :publications, :user, foreign_key: true
  end
end
