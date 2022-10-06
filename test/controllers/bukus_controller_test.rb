require "test_helper"

class BukusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buku = bukus(:one)
  end

  test "should get index" do
    get bukus_url
    assert_response :success
  end

  test "should get new" do
    get new_buku_url
    assert_response :success
  end

  test "should create buku" do
    assert_difference("Buku.count") do
      post bukus_url, params: { buku: { author: @buku.author, title: @buku.title } }
    end

    assert_redirected_to buku_url(Buku.last)
  end

  test "should show buku" do
    get buku_url(@buku)
    assert_response :success
  end

  test "should get edit" do
    get edit_buku_url(@buku)
    assert_response :success
  end

  test "should update buku" do
    patch buku_url(@buku), params: { buku: { author: @buku.author, title: @buku.title } }
    assert_redirected_to buku_url(@buku)
  end

  test "should destroy buku" do
    assert_difference("Buku.count", -1) do
      delete buku_url(@buku)
    end

    assert_redirected_to bukus_url
  end
end
