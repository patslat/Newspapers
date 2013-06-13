class ChangeEditorIdToEditorName < ActiveRecord::Migration
  def change
    remove_column :newspapers, :editor_id
    add_column :newspapers, :editor, :string
  end
end
