
package dal;

import entity.Cliente;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class ClienteDAL {

    public void inserirCliente(Cliente cliente) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("MapaJavaPU");
        
        EntityManager em = emf.createEntityManager();
        
        em.getTransaction().begin();
        try {
            em.persist(cliente);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }
    
}
