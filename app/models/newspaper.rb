class Newspaper < ActiveRecord::Base
  attr_accessible :editor_id, :title
  validates :edtior, :title, :presence_of => true

  belongs_to :editor

end
