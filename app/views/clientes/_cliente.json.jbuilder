# frozen_string_literal: true

json.extract! cliente, :id, :nome, :idade, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
