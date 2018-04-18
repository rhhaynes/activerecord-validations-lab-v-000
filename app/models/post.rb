class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :length {:minimum => 250}
  validates :summary, :length {:maximum => 250}
  validates :category, :inclusion => {:in => ['Fiction', 'Non-Fiction']}
  
  def title_is_clickbaity
    title.include?
  end
end
