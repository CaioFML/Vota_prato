# frozen_string_literal: true

class Cliente < ApplicationRecord
  validates_presence_of :nome, message: ' - deve ser preenchido'

  validates_uniqueness_of :nome, message: " - nome j\xC3\xA1 cadastrado"

  validates_numericality_of :idade, greater_than: 0, less_than: 100, message: " - deve ser um n\xC3\xBAmero entre 0 e 100"

  has_many :qualificacoes
end
