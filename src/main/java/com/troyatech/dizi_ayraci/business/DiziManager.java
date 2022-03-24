package com.troyatech.dizi_ayraci.business;

import java.util.List;

import com.troyatech.dizi_ayraci.dataAccess.IDiziDal;
import com.troyatech.dizi_ayraci.entities.Dizi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



@Service
public class DiziManager implements IDiziService {

	private IDiziDal diziDal;
	
	@Autowired
	public DiziManager(IDiziDal diziDal) {
		
		this.diziDal = diziDal;
	}

	@Override
	@Transactional
	public List<Dizi> getAll() {
		// TODO Auto-generated method stub
		return this.diziDal.getAll();
	}

	@Override
	public void add(Dizi dizi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Dizi dizi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Dizi dizi) {
		// TODO Auto-generated method stub
		
	}

}
