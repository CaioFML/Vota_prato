# frozen_string_literal: true

class Prato < ApplicationRecord
  validates_presence_of :nome, message: ' - deve ser preenchido'

  validates_uniqueness_of :nome, message: " - nome j\xC3\xA1 cadastrado"

  has_and_belongs_to_many :restaurantes
  has_one :receita

  validate :validate_presence_of_more_than_one_restaurante

  private

  def validate_presence_of_more_than_one_restaurante
    errors.add('restaurantes', 'deve haver ao menos um restaurante') if restaurantes.empty?
  end
end
