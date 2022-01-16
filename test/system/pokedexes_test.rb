require "application_system_test_case"

class PokedexesTest < ApplicationSystemTestCase
  setup do
    @pokedex = pokedexes(:one)
  end

  test "visiting the index" do
    visit pokedexes_url
    assert_selector "h1", text: "Pokedexes"
  end

  test "should create pokedex" do
    visit pokedexes_url
    click_on "New pokedex"

    fill_in "Element", with: @pokedex.element
    fill_in "Name", with: @pokedex.name
    click_on "Create Pokedex"

    assert_text "Pokedex was successfully created"
    click_on "Back"
  end

  test "should update Pokedex" do
    visit pokedex_url(@pokedex)
    click_on "Edit this pokedex", match: :first

    fill_in "Element", with: @pokedex.element
    fill_in "Name", with: @pokedex.name
    click_on "Update Pokedex"

    assert_text "Pokedex was successfully updated"
    click_on "Back"
  end

  test "should destroy Pokedex" do
    visit pokedex_url(@pokedex)
    click_on "Destroy this pokedex", match: :first

    assert_text "Pokedex was successfully destroyed"
  end
end
