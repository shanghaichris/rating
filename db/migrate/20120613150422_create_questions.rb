class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject
      t.boolean :multi_options
      t.references :survey
      t.timestamps
    end
  end
end
