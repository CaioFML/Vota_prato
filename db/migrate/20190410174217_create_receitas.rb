# frozen_string_literal: true

class CreateReceitas < ActiveRecord::Migration[5.2]
  def change
    create_table :receitas do |t|
      t.text :conteudo
      t.timestamps
    end
  end
end
