class CreateSays < ActiveRecord::Migration
  def change
    create_table :says do |t|

    	#t.column :id , :integer
    	t.column :state , :integer
    	t.column :audio , :integer

      t.timestamps 
    end
  end
end
