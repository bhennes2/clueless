class MainCategory
  
  attr_accessor :name, :sub_categories
  
  def initialize(params)
    @name = params[:name]
    @sub_categories = params[:sub_categories]
  end
  
end