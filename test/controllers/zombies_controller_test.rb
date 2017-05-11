require 'test_helper'

class ZombiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zombie = zombies(:one)
  end

  test "should get index" do
    get zombies_url, as: :json
    assert_response :success
  end

  test "should create zombie" do
    assert_difference('Zombie.count') do
      post zombies_url, params: { zombie: { bio: @zombie.bio, name: @zombie.name } }, as: :json
    end

    assert_response 201
  end

  test "should show zombie" do
    get zombie_url(@zombie), as: :json
    assert_response :success
  end

  test "should update zombie" do
    patch zombie_url(@zombie), params: { zombie: { bio: @zombie.bio, name: @zombie.name } }, as: :json
    assert_response 200
  end

  test "should destroy zombie" do
    assert_difference('Zombie.count', -1) do
      delete zombie_url(@zombie), as: :json
    end

    assert_response 204
  end
end
