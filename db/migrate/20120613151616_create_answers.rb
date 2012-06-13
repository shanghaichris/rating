class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :paper
      t.references :option

      t.timestamps
    end
    add_index :answers, :paper_id
    add_index :answers, :option_id
  end
end
