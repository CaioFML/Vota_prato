json.extract! comentario, :id, :conteudo, :comentavel_id, :comentavel_type, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
