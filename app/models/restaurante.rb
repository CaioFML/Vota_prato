# frozen_string_literal: true

class Restaurante < ApplicationRecord
  validates_presence_of :nome, message: 'Deve ser preenchido'
  validates_presence_of :endereco, message: 'Deve ser preenchido'
  validates_presence_of :especialidade, message: 'Deve ser preenchido'

  validates_uniqueness_of :nome, message: "nome j\xC3\xA1 cadastrado"
  validates_uniqueness_of :endereco, message: "endere\xC3\xA7o j\xC3\xA1 cadastrado"

  validate :primeira_letra_deve_ser_maiuscula

  has_many :qualificacoes
  has_and_belongs_to_many :pratos
  has_many :comentarios, as: :comentavel

  has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_file_name :foto, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

  private

  def primeira_letra_deve_ser_maiuscula
    unless nome =~ /[A-Z].*/
      errors.add(:nome,
                 "primeira letra deve ser mai\xC3\xBAscula")
     end
  end
end
