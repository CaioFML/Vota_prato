require "application_system_test_case"

class QualificacoesTest < ApplicationSystemTestCase
  setup do
    @qualificacao = qualificacoes(:one)
  end

  test "visiting the index" do
    visit qualificacoes_url
    assert_selector "h1", text: "Qualificacoes"
  end

  test "creating a Qualificacao" do
    visit qualificacoes_url
    click_on "New Qualificacao"

    fill_in "Cliente", with: @qualificacao.cliente_id
    fill_in "Nota", with: @qualificacao.nota
    fill_in "Restaurante", with: @qualificacao.restaurante_id
    fill_in "Valor gasto", with: @qualificacao.valor_gasto
    click_on "Create Qualificacao"

    assert_text "Qualificacao was successfully created"
    click_on "Back"
  end

  test "updating a Qualificacao" do
    visit qualificacoes_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @qualificacao.cliente_id
    fill_in "Nota", with: @qualificacao.nota
    fill_in "Restaurante", with: @qualificacao.restaurante_id
    fill_in "Valor gasto", with: @qualificacao.valor_gasto
    click_on "Update Qualificacao"

    assert_text "Qualificacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualificacao" do
    visit qualificacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualificacao was successfully destroyed"
  end
end
