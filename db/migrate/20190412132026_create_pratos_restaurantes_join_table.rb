# frozen_string_literal: true

class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pratos_restaurantes, id: false do |t|
      t.integer :prato_id
      t.integer :restaurante_id
    end
  end
end
