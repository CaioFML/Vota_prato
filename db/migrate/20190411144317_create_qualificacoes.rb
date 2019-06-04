# frozen_string_literal: true

class CreateQualificacoes < ActiveRecord::Migration[5.2]
  def change
    create_table :qualificacoes do |t|
      t.float :nota
      t.float :valor_gasto
      t.timestamps
    end
  end
end
