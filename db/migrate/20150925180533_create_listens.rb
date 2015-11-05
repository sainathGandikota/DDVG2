class CreateListens < ActiveRecord::Migration
  def change
    create_table :listens do |t|

      #t.column :id , :integer
    	t.column :state , :integer
    	t.column :prompt , :integer
    	t.column :help , :integer
      t.column :noinput , :integer
    	t.column :nomatch , :integer
    	t.column :inputtype , :text
    	t.column :grammar , :integer

      t.timestamps 
    end
  end
end
