class AddNeedBlankToOptions < ActiveRecord::Migration
  def change
    add_column :options, :need_blank, :boolean
  end
end
