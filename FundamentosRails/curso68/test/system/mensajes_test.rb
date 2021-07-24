require "application_system_test_case"

class MensajesTest < ApplicationSystemTestCase
  setup do
    @mensaje = mensajes(:one)
  end

  test "visiting the index" do
    visit mensajes_url
    assert_selector "h1", text: "Mensajes"
  end

  test "creating a Mensaje" do
    visit mensajes_url
    click_on "New Mensaje"

    fill_in "Content", with: @mensaje.content
    fill_in "Usuario", with: @mensaje.usuario_id
    click_on "Create Mensaje"

    assert_text "Mensaje was successfully created"
    click_on "Back"
  end

  test "updating a Mensaje" do
    visit mensajes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @mensaje.content
    fill_in "Usuario", with: @mensaje.usuario_id
    click_on "Update Mensaje"

    assert_text "Mensaje was successfully updated"
    click_on "Back"
  end

  test "destroying a Mensaje" do
    visit mensajes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mensaje was successfully destroyed"
  end
end
