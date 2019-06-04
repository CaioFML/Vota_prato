# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_190_412_132_026) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'clientes', force: :cascade do |t|
    t.string 'nome', limit: 80
    t.integer 'idade'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'pratos', force: :cascade do |t|
    t.string 'nome', limit: 80
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'pratos_restaurantes', id: false, force: :cascade do |t|
    t.integer 'prato_id'
    t.integer 'restaurante_id'
  end

  create_table 'qualificacoes', force: :cascade do |t|
    t.float 'nota'
    t.float 'valor_gasto'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'cliente_id'
    t.integer 'restaurante_id'
  end

  create_table 'receitas', force: :cascade do |t|
    t.text 'conteudo'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'prato_id'
  end

  create_table 'restaurantes', force: :cascade do |t|
    t.string 'nome', limit: 80
    t.string 'endereco'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'especialidade', limit: 40
  end
end
