require 'test_helper'

class THoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_holder = t_holders(:one)
  end

  test "should get index" do
    get t_holders_url
    assert_response :success
  end

  test "should get new" do
    get new_t_holder_url
    assert_response :success
  end

  test "should create t_holder" do
    assert_difference('THolder.count') do
      post t_holders_url, params: { t_holder: { address: @t_holder.address, father_nam: @t_holder.father_nam, mobile_number: @t_holder.mobile_number, name: @t_holder.name, sex: @t_holder.sex, tazkira_number: @t_holder.tazkira_number } }
    end

    assert_redirected_to t_holder_url(THolder.last)
  end

  test "should show t_holder" do
    get t_holder_url(@t_holder)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_holder_url(@t_holder)
    assert_response :success
  end

  test "should update t_holder" do
    patch t_holder_url(@t_holder), params: { t_holder: { address: @t_holder.address, father_nam: @t_holder.father_nam, mobile_number: @t_holder.mobile_number, name: @t_holder.name, sex: @t_holder.sex, tazkira_number: @t_holder.tazkira_number } }
    assert_redirected_to t_holder_url(@t_holder)
  end

  test "should destroy t_holder" do
    assert_difference('THolder.count', -1) do
      delete t_holder_url(@t_holder)
    end

    assert_redirected_to t_holders_url
  end
end
