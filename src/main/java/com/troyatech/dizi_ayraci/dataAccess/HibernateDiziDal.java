package com.troyatech.dizi_ayraci.dataAccess;

import java.util.List;

import javax.persistence.EntityManager;


import com.troyatech.dizi_ayraci.entities.Dizi;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class HibernateDiziDal implements IDiziDal {
	
	private EntityManager entityManager;

	@Autowired
	public HibernateDiziDal(EntityManager entityManager) {
		
		this.entityManager = entityManager;
	}

	@Override
	@Transactional
	public List<Dizi> getAll() {
		// TODO Auto-generated method stub
		Session session= entityManager.unwrap(Session.class);
		List<Dizi> diziler = session.createQuery("from Dizi", Dizi.class).getResultList();
		return diziler;
	}

	@Override
	public void add(Dizi city) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Dizi city) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Dizi city) {
		// TODO Auto-generated method stub
		
	}

}
