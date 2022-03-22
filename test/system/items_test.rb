require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Discount", with: @item.discount
    fill_in "Mrp", with: @item.mrp
    fill_in "Net price", with: @item.net_price
    fill_in "Quantity", with: @item.quantity
    fill_in "Sku", with: @item.sku
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Discount", with: @item.discount
    fill_in "Mrp", with: @item.mrp
    fill_in "Net price", with: @item.net_price
    fill_in "Quantity", with: @item.quantity
    fill_in "Sku", with: @item.sku
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
