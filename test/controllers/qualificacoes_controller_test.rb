require 'test_helper'

class QualificacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualificacao = qualificacoes(:one)
  end

  test "should get index" do
    get qualificacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_qualificacao_url
    assert_response :success
  end

  test "should create qualificacao" do
    assert_difference('Qualificacao.count') do
      post qualificacoes_url, params: { qualificacao: { cliente_id: @qualificacao.cliente_id, nota: @qualificacao.nota, restaurante_id: @qualificacao.restaurante_id, valor_gasto: @qualificacao.valor_gasto } }
    end

    assert_redirected_to qualificacao_url(Qualificacao.last)
  end

  test "should show qualificacao" do
    get qualificacao_url(@qualificacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualificacao_url(@qualificacao)
    assert_response :success
  end

  test "should update qualificacao" do
    patch qualificacao_url(@qualificacao), params: { qualificacao: { cliente_id: @qualificacao.cliente_id, nota: @qualificacao.nota, restaurante_id: @qualificacao.restaurante_id, valor_gasto: @qualificacao.valor_gasto } }
    assert_redirected_to qualificacao_url(@qualificacao)
  end

  test "should destroy qualificacao" do
    assert_difference('Qualificacao.count', -1) do
      delete qualificacao_url(@qualificacao)
    end

    assert_redirected_to qualificacoes_url
  end
end
