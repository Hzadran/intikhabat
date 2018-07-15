require 'test_helper'

class AlterniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alterny = alternies(:one)
  end

  test "should get index" do
    get alternies_url
    assert_response :success
  end

  test "should get new" do
    get new_alterny_url
    assert_response :success
  end

  test "should create alterny" do
    assert_difference('Alterny.count') do
      post alternies_url, params: { alterny: { address: @alterny.address, father_name: @alterny.father_name, mobile_number: @alterny.mobile_number, name: @alterny.name, sex: @alterny.sex, tazkira_number: @alterny.tazkira_number } }
    end

    assert_redirected_to alterny_url(Alterny.last)
  end

  test "should show alterny" do
    get alterny_url(@alterny)
    assert_response :success
  end

  test "should get edit" do
    get edit_alterny_url(@alterny)
    assert_response :success
  end

  test "should update alterny" do
    patch alterny_url(@alterny), params: { alterny: { address: @alterny.address, father_name: @alterny.father_name, mobile_number: @alterny.mobile_number, name: @alterny.name, sex: @alterny.sex, tazkira_number: @alterny.tazkira_number } }
    assert_redirected_to alterny_url(@alterny)
  end

  test "should destroy alterny" do
    assert_difference('Alterny.count', -1) do
      delete alterny_url(@alterny)
    end

    assert_redirected_to alternies_url
  end
end
