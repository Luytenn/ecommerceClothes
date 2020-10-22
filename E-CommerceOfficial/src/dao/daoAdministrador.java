package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Administrador;
import cad.Conexion;
import interfaces.AdministradorInterface;

public class daoAdministrador implements AdministradorInterface {

	@Override
	public List<AdministradorInterface> listar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AdministradorInterface buscarAdmin(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int registrarAdministrador(AdministradorInterface obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizarAdministrador(AdministradorInterface obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int elimianrAdministrador(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Administrador AutenticacionAdmin(String usu, String contra) {
		Connection con = null;
		PreparedStatement pst = null;
	   
	    ResultSet rs = null;
	    Administrador admin = null;
		
		try {
			con = Conexion.conectar();
			String query = "select *from administrador where usuario_admin='"+usu+"' and contraseña_admin='"+contra+"'";
			pst = con.prepareStatement(query);

			rs = pst.executeQuery();
			
			while(rs.next()) {
				admin = new Administrador();
				admin.setId_admin(rs.getInt(1));
				admin.setNombreAdmin(rs.getString(2));
				admin.setApepatAdmin(rs.getString(3));
				admin.setApematAdmin(rs.getNString(4));
				admin.setUsuario_admin(rs.getString(5));
				admin.setContraseña_admin(rs.getString(6));
			
			}
		
			
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return admin;
	}




}
