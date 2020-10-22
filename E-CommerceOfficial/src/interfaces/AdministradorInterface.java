package interfaces;

import java.util.ArrayList;
import java.util.List;

import beans.Administrador;
import dao.daoAdministrador;

public interface AdministradorInterface {

	public List<AdministradorInterface> listar();
	
	public AdministradorInterface buscarAdmin(int id);
	
	public int registrarAdministrador(AdministradorInterface obj);
	
	public int actualizarAdministrador(AdministradorInterface obj);
	
	public int elimianrAdministrador(int id);

	public Administrador AutenticacionAdmin(String usu, String contra);
	
	
	
}
