package sn.senstock.dao;

import sn.senstock.entities.Produit;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class ProduitImpl implements IProduit {

    EntityManager em;
    public ProduitImpl(){
        EntityManagerFactory emf = Persistence
                .createEntityManagerFactory("stockPU");
        em = emf.createEntityManager();
    }
    @Override
    public int add(Produit produit) {
        try {
            em.getTransaction().begin();
            em.persist(produit);
            em.getTransaction().commit();
            return 1;
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }


    }

    @Override
    public List<Produit> list() {
        return em.createQuery("SELECT p FROM Produit p").getResultList();
    }
}
