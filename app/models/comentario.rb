class Comentario < ApplicationRecord
    belongs_to :comentavel, polymorphic: true
end
