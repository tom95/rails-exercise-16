class CreateAuthorsPapers < ActiveRecord::Migration
  def change
    create_table :authors_papers, id: false do |t|
      t.belongs_to :author, index: true
      t.belongs_to :paper, index: true
    end
  end
end
