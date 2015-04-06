require 'test_helper'

class SlujbesControllerTest < ActionController::TestCase
  setup do
    @slujbe = slujbes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slujbes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slujbe" do
    assert_difference('Slujbe.count') do
      post :create, slujbe: { beneficii: @slujbe.beneficii, competente_obligatorii: @slujbe.competente_obligatorii, competente_optionale: @slujbe.competente_optionale, descriere: @slujbe.descriere, nivel_cariera: @slujbe.nivel_cariera }
    end

    assert_redirected_to slujbe_path(assigns(:slujbe))
  end

  test "should show slujbe" do
    get :show, id: @slujbe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slujbe
    assert_response :success
  end

  test "should update slujbe" do
    patch :update, id: @slujbe, slujbe: { beneficii: @slujbe.beneficii, competente_obligatorii: @slujbe.competente_obligatorii, competente_optionale: @slujbe.competente_optionale, descriere: @slujbe.descriere, nivel_cariera: @slujbe.nivel_cariera }
    assert_redirected_to slujbe_path(assigns(:slujbe))
  end

  test "should destroy slujbe" do
    assert_difference('Slujbe.count', -1) do
      delete :destroy, id: @slujbe
    end

    assert_redirected_to slujbes_path
  end
end
