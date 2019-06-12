# frozen_string_literal: true

class Comentario < ApplicationRecord
  belongs_to :comentavel, polymorphic: true
end
