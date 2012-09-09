require 'test_helper'

class TastesControllerTest < ActionController::TestCase
  setup do
    @taste = tastes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taste" do
    assert_difference('Taste.count') do
      post :create, taste: { beer_id: @taste.beer_id, clarityClarity: @taste.clarityClarity, clarityPrecipitate: @taste.clarityPrecipitate, color: @taste.color, coment: @taste.coment, date: @taste.date, foamAmout: @taste.foamAmout, foamColor: @taste.foamColor, foamDensity: @taste.foamDensity, foamTime: @taste.foamTime, mouthCarbon: @taste.mouthCarbon, mouthFill: @taste.mouthFill, mouthTemp: @taste.mouthTemp, scentFruit: @taste.scentFruit, scentHopsFlower: @taste.scentHopsFlower, scentMalt: @taste.scentMalt, score: @taste.score, tasteAftertaste: @taste.tasteAftertaste, tasteBitterness: @taste.tasteBitterness, tasteSweetness: @taste.tasteSweetness, user_id: @taste.user_id }
    end

    assert_redirected_to taste_path(assigns(:taste))
  end

  test "should show taste" do
    get :show, id: @taste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taste
    assert_response :success
  end

  test "should update taste" do
    put :update, id: @taste, taste: { beer_id: @taste.beer_id, clarityClarity: @taste.clarityClarity, clarityPrecipitate: @taste.clarityPrecipitate, color: @taste.color, coment: @taste.coment, date: @taste.date, foamAmout: @taste.foamAmout, foamColor: @taste.foamColor, foamDensity: @taste.foamDensity, foamTime: @taste.foamTime, mouthCarbon: @taste.mouthCarbon, mouthFill: @taste.mouthFill, mouthTemp: @taste.mouthTemp, scentFruit: @taste.scentFruit, scentHopsFlower: @taste.scentHopsFlower, scentMalt: @taste.scentMalt, score: @taste.score, tasteAftertaste: @taste.tasteAftertaste, tasteBitterness: @taste.tasteBitterness, tasteSweetness: @taste.tasteSweetness, user_id: @taste.user_id }
    assert_redirected_to taste_path(assigns(:taste))
  end

  test "should destroy taste" do
    assert_difference('Taste.count', -1) do
      delete :destroy, id: @taste
    end

    assert_redirected_to tastes_path
  end
end
