package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import beans.Cliente;
import cad.Conexion;
import interfaces.ClienteInterface;

public class daoCliente implements ClienteInterface {

	@Override
	public Cliente AutenticacionCliente(String usu, String contra) {
		Connection con = null;
		PreparedStatement pst = null;
	   
	    ResultSet rs = null;
	    Cliente cli = null;
		
		try {
			con = Conexion.conectar();
			String query = "select *from cliente where usuario_cli='"+usu+"' and contraseña_cli='"+contra+"'";
			pst = con.prepareStatement(query);

			rs = pst.executeQuery();
			
			while(rs.next()) {
				cli = new Cliente();
				cli.setId_cliente(rs.getInt(1));
				cli.setNom_cliente(rs.getString(2));
				cli.setApepat_cli(rs.getString(3));
				cli.setApemat_cli(rs.getString(4));
				cli.setDireccion_cli(rs.getString(5));
				cli.setUsuario_cli(rs.getString(6));
				cli.setContraseña_cli(rs.getString(7));
				
			
			}
		
			
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return cli;
	}

	

	
	
}
