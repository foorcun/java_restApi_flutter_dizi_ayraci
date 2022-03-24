package com.troyatech.dizi_ayraci.dataAccess;

import com.troyatech.dizi_ayraci.entities.Dizi;

import java.util.List;


public interface IDiziDal {

	List<Dizi> getAll();
	void add(Dizi city);
	void update(Dizi city);
	void delete(Dizi city);
}
