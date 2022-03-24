package com.troyatech.dizi_ayraci.restApi;

import com.troyatech.dizi_ayraci.business.IDiziService;
import com.troyatech.dizi_ayraci.dataAccess.IDiziDal;
import com.troyatech.dizi_ayraci.entities.Dizi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DiziController {

   private IDiziService diziService;

    public DiziController(IDiziService diziService) {
        this.diziService = diziService;
    }

//    public DiziController(){}
//    @Autowired
//    private IDiziDal diziDal;
//
//    public DiziController(IDiziDal diziDal) {
//        this.diziDal = diziDal;
//    }


    @GetMapping("/test")
    public String test(){
        return "bu test stringidir..";
    }

    @GetMapping("/test/entities")
    public List<Dizi> get(){
        return diziService.getAll();
    }
}
