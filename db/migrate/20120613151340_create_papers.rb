class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :collection_from
      t.references :survey

      t.timestamps
    end
    add_index :papers, :survey_id
  end
end
