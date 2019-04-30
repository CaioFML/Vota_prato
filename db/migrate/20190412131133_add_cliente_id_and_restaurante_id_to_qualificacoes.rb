class AddClienteIdAndRestauranteIdToQualificacoes < ActiveRecord::Migration[5.2]
  def change
  	add_column :qualificacoes, :cliente_id, :integer
	add_column :qualificacoes, :restaurante_id, :integer
  end
end
