class Post < ActiveRecord::Base
  validates :title, :presence => true, :title_is
  validates :content, :length {:minimum => 250}
  validates :summary, :length {:maximum => 250}
  validates :category, :inclusion => {:in => ['Fiction', 'Non-Fiction']}
  
  def title_is_clickbait
    title.any?{|word| ["Won't Believe","Secret","Top","Guess"].include?(word)}
  end
end
