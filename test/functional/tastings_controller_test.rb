require 'test_helper'

class TastingsControllerTest < ActionController::TestCase
  setup do
    @tasting = tastings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tastings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tasting" do
    assert_difference('Tasting.count') do
      post :create, tasting: { beer_id: @tasting.beer_id, clarityClarity: @tasting.clarityClarity, clarityPrecipitate: @tasting.clarityPrecipitate, color: @tasting.color, coment: @tasting.coment, date: @tasting.date, foamAmout: @tasting.foamAmout, foamColor: @tasting.foamColor, foamDensity: @tasting.foamDensity, foamTime: @tasting.foamTime, mouthCarbon: @tasting.mouthCarbon, mouthFill: @tasting.mouthFill, mouthTemp: @tasting.mouthTemp, scentFruit: @tasting.scentFruit, scentHopsFlower: @tasting.scentHopsFlower, scentMalt: @tasting.scentMalt, score: @tasting.score, tasteAftertaste: @tasting.tasteAftertaste, tasteBitterness: @tasting.tasteBitterness, tasteSweetness: @tasting.tasteSweetness, user_id: @tasting.user_id }
    end

    assert_redirected_to tasting_path(assigns(:tasting))
  end

  test "should show tasting" do
    get :show, id: @tasting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tasting
    assert_response :success
  end

  test "should update tasting" do
    put :update, id: @tasting, tasting: { beer_id: @tasting.beer_id, clarityClarity: @tasting.clarityClarity, clarityPrecipitate: @tasting.clarityPrecipitate, color: @tasting.color, coment: @tasting.coment, date: @tasting.date, foamAmout: @tasting.foamAmout, foamColor: @tasting.foamColor, foamDensity: @tasting.foamDensity, foamTime: @tasting.foamTime, mouthCarbon: @tasting.mouthCarbon, mouthFill: @tasting.mouthFill, mouthTemp: @tasting.mouthTemp, scentFruit: @tasting.scentFruit, scentHopsFlower: @tasting.scentHopsFlower, scentMalt: @tasting.scentMalt, score: @tasting.score, tasteAftertaste: @tasting.tasteAftertaste, tasteBitterness: @tasting.tasteBitterness, tasteSweetness: @tasting.tasteSweetness, user_id: @tasting.user_id }
    assert_redirected_to tasting_path(assigns(:tasting))
  end

  test "should destroy tasting" do
    assert_difference('Tasting.count', -1) do
      delete :destroy, id: @tasting
    end

    assert_redirected_to tastings_path
  end
end
