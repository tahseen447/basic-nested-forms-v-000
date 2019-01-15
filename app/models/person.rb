class Person < ActiveRecord::Base
  has_many :addresses
  accept_nested_attributes_for :addresses
end
