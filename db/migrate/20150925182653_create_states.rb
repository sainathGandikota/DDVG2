class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|

    #	t.column :id, :integer
    	t.column :name, :text
    	t.column :description, :text
    	t.column :statetype, :text
    	t.column :campaign, :integer

      t.timestamps 
    end
  end
end
