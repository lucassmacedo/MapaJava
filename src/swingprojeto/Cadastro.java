/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swingprojeto;

import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Lucas
 */
public class Cadastro {

    private String nome;
    private String endereco;
    private String bairro;
    private String cidade;
    private String sexo;
    private String cpf;
    private String rg;
    private String cep;



    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
    void salvar() {
        try {
            //Registra JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            //Abrindo a conexão: ATENÇÃO OS DOIS PARÂMETROS VAZIOS("") SÃO USUÁRIO E SENHA, RESPECTIVAMENTE.
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mapa", "root", "root");

            //Executa a query de inserção
            java.sql.Statement st = conn.createStatement();
            st.executeUpdate("INSERT INTO clientes (nome,endereco,bairro,cidade,cep,sexo,cpf,rg) VALUES ("
                    + "'" + this.nome + "',"
                    + "'" + this.endereco + "',"
                    + "'" + this.bairro + "',"
                    + "'" + this.cidade + "',"
                    + "'" + this.cep + "',"
                    + "'" + this.sexo + "',"
                    + "'" + this.cpf + "',"
                    + "'" + this.rg + "')");

            JOptionPane.showMessageDialog(null, "Cliente inserido");
        } catch (SQLException | ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, e);
        }

    }

    public void save() {

        /*
 * Isso é uma sql comum, os ? são os parâmetros que nós vamos adicionar
 * na base de dados
         */
        String sql = "INSERT INTO clientes(nome,endereco,bairro,cidade,cep,sexo,cpf,rg) VALUES(?,?,?,?,?,?,?,?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            //Cria uma conexão com o banco
            conn = ConnectionFactory.createConnectionToMySQL();

            //Cria um PreparedStatment, classe usada para executar a query
            pstm = conn.prepareStatement(sql);

//            //Adiciona o valor do primeiro parâmetro da sql
            pstm.setString(1, this.nome);
            pstm.setString(2, this.endereco);
            pstm.setString(3, this.bairro);
            pstm.setString(4, this.cidade);
            pstm.setString(5, this.cep);
            pstm.setString(6, this.sexo);
            pstm.setString(7, this.cpf);
            pstm.setString(8, this.rg);

            pstm.execute();

        } catch (Exception e) {
        } finally {

            //Fecha as conexões
            try {
                if (pstm != null) {

                    pstm.close();
                }

                if (conn != null) {
                    conn.close();
                }

            } catch (Exception e) {
            }
        }
    }

}
