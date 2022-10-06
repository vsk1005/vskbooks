require "application_system_test_case"

class BukusTest < ApplicationSystemTestCase
  setup do
    @buku = bukus(:one)
  end

  test "visiting the index" do
    visit bukus_url
    assert_selector "h1", text: "Bukus"
  end

  test "should create buku" do
    visit bukus_url
    click_on "New buku"

    fill_in "Author", with: @buku.author
    fill_in "Title", with: @buku.title
    click_on "Create Buku"

    assert_text "Buku was successfully created"
    click_on "Back"
  end

  test "should update Buku" do
    visit buku_url(@buku)
    click_on "Edit this buku", match: :first

    fill_in "Author", with: @buku.author
    fill_in "Title", with: @buku.title
    click_on "Update Buku"

    assert_text "Buku was successfully updated"
    click_on "Back"
  end

  test "should destroy Buku" do
    visit buku_url(@buku)
    click_on "Destroy this buku", match: :first

    assert_text "Buku was successfully destroyed"
  end
end
