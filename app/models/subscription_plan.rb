class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :daily, :newspaper_id

  validates :price, :newspaper, :presence => true
  validates_inclusion_of :daily, :in => [true, false]

  belongs_to :newspaper


end
