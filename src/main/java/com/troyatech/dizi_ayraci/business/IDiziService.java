package com.troyatech.dizi_ayraci.business;

import com.troyatech.dizi_ayraci.entities.Dizi;

import java.util.List;


public interface IDiziService {
	
	List<Dizi> getAll();
	void add(Dizi city);
	void update(Dizi city);
	void delete(Dizi city);

}
