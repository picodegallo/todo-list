class Item < ActiveRecord::Base
  attr_accessible :name, :completed, :list_id
  belongs_to :list 
end
