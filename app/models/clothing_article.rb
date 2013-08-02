class ClothingArticle < ActiveRecord::Base
  
  #Attributes
  attr_accessible :brand, :category, :color, :image_id, :name, :size, :style, :user_id
  
  #Callback
  before_create :assign_user_id
  
  #Instance
  def assign_user_id
    self.user_id = 1
  end
  
end
