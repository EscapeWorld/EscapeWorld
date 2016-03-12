require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { city: @location.city, company_id: @location.company_id, description: @location.description, email: @location.email, end_time: @location.end_time, name: @location.name, phone: @location.phone, start_time: @location.start_time, state: @location.state, street: @location.street, zip: @location.zip }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { city: @location.city, company_id: @location.company_id, description: @location.description, email: @location.email, end_time: @location.end_time, name: @location.name, phone: @location.phone, start_time: @location.start_time, state: @location.state, street: @location.street, zip: @location.zip }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
