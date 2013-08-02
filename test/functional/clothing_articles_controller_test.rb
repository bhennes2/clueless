require 'test_helper'

class ClothingArticlesControllerTest < ActionController::TestCase
  setup do
    @clothing_article = clothing_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clothing_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clothing_article" do
    assert_difference('ClothingArticle.count') do
      post :create, clothing_article: { brand: @clothing_article.brand, category: @clothing_article.category, color: @clothing_article.color, image_id: @clothing_article.image_id, name: @clothing_article.name, size: @clothing_article.size, style: @clothing_article.style, user_id: @clothing_article.user_id }
    end

    assert_redirected_to clothing_article_path(assigns(:clothing_article))
  end

  test "should show clothing_article" do
    get :show, id: @clothing_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clothing_article
    assert_response :success
  end

  test "should update clothing_article" do
    put :update, id: @clothing_article, clothing_article: { brand: @clothing_article.brand, category: @clothing_article.category, color: @clothing_article.color, image_id: @clothing_article.image_id, name: @clothing_article.name, size: @clothing_article.size, style: @clothing_article.style, user_id: @clothing_article.user_id }
    assert_redirected_to clothing_article_path(assigns(:clothing_article))
  end

  test "should destroy clothing_article" do
    assert_difference('ClothingArticle.count', -1) do
      delete :destroy, id: @clothing_article
    end

    assert_redirected_to clothing_articles_path
  end
end
