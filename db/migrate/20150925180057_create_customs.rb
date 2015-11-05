class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|

    	#t.column :id , :integer
    	t.column :state , :integer
    	t.column :url , :text
    	t.column :next , :integer

      t.timestamps 
    end
  end
end
