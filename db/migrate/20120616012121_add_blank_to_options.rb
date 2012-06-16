class AddBlankToOptions < ActiveRecord::Migration
  def change
    add_column :options, :blank, :string
  end
end
