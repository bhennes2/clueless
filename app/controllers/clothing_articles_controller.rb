class ClothingArticlesController < ApplicationController
  # GET /clothing_articles
  # GET /clothing_articles.json
  def index
    @clothing_articles = ClothingArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clothing_articles }
    end
  end

  # GET /clothing_articles/1
  # GET /clothing_articles/1.json
  def show
    @clothing_article = ClothingArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clothing_article }
    end
  end

  # GET /clothing_articles/new
  # GET /clothing_articles/new.json
  def new
    @clothing_article = ClothingArticle.new
    @categories = get_categories

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clothing_article }
    end
  end

  # GET /clothing_articles/1/edit
  def edit
    @clothing_article = ClothingArticle.find(params[:id])
    @categories = get_categories
  end

  # POST /clothing_articles
  # POST /clothing_articles.json
  def create
    @clothing_article = ClothingArticle.new(params[:clothing_article])

    respond_to do |format|
      if @clothing_article.save
        format.html { redirect_to @clothing_article, notice: 'Clothing article was successfully created.' }
        format.json { render json: @clothing_article, status: :created, location: @clothing_article }
      else
        format.html { render action: "new" }
        format.json { render json: @clothing_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clothing_articles/1
  # PUT /clothing_articles/1.json
  def update
    @clothing_article = ClothingArticle.find(params[:id])

    respond_to do |format|
      if @clothing_article.update_attributes(params[:clothing_article])
        format.html { redirect_to @clothing_article, notice: 'Clothing article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clothing_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_articles/1
  # DELETE /clothing_articles/1.json
  def destroy
    @clothing_article = ClothingArticle.find(params[:id])
    @clothing_article.destroy

    respond_to do |format|
      format.html { redirect_to clothing_articles_url }
      format.json { head :no_content }
    end
  end
  
  private 
  
    def get_categories
      [
        MainCategory.new(name: "Shirts/Tops", sub_categories: ["Dress", "Short Sleeve", "Casual", "Polo", "Tee", "Sweater", "Vest"].map { |cat| SubCategory.new(cat) }),
        MainCategory.new(name: "Outerwear", sub_categories: ["Blazers", "Jacket"].map { |cat| SubCategory.new(cat) }),
        MainCategory.new(name: "Shoes", sub_categories: ["Dress", "Boots", "Sandals", "Sneakers"].map { |cat| SubCategory.new(cat) }),
        MainCategory.new(name: "Accessories", sub_categories: ["Tie", "Belt", "Tie clip", "Watch", "Cufflinks", "Jewelry", "Undies", "Socks"].map { |cat| SubCategory.new(cat) }),
        MainCategory.new(name: "Pants/Bottoms", sub_categories: ["Jeans", "Dress", "Shorts"].map { |cat| SubCategory.new(cat) })
      ]
    end
end
