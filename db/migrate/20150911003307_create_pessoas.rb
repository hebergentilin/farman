class CreatePessoas < ActiveRecord::Migration
  def change
  	create_table :pessoas do |t|
      t.string :nome
      t.date :data_nasc
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :celular
      t.string :nacionalidade
      t.string :naturalidade
      t.string :estado_civil
      t.string :profissao
      t.string :formacao
      t.integer :tempo_atividade
      t.string :conjuge
      t.string :cpf_conjuge
      t.date :data_nasc_conjuge
      t.string :escolaridade_conjuge
      t.integer :numero_filhos
      t.string :email
      t.string :endereco
      t.string :cep
      t.string :bairro
      t.string :numero
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.integer :sexo
      t.string :observacao
      t.integer :status
      t.references :usuario

      t.timestamps
    end
  end
end
