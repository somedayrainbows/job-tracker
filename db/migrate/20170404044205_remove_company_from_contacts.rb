class RemoveCompanyFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :company
  end
end
