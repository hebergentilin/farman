# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150911003307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.date     "data_nasc"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone"
    t.string   "celular"
    t.string   "nacionalidade"
    t.string   "naturalidade"
    t.string   "estado_civil"
    t.string   "profissao"
    t.string   "formacao"
    t.integer  "tempo_atividade"
    t.string   "conjuge"
    t.string   "cpf_conjuge"
    t.date     "data_nasc_conjuge"
    t.string   "escolaridade_conjuge"
    t.integer  "numero_filhos"
    t.string   "email"
    t.string   "endereco"
    t.string   "cep"
    t.string   "bairro"
    t.string   "numero"
    t.string   "complemento"
    t.string   "cidade"
    t.string   "estado"
    t.integer  "sexo"
    t.string   "observacao"
    t.integer  "status"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
