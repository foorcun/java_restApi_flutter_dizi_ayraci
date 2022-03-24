package com.troyatech.dizi_ayraci.restApi;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class DiziController {

//   private IDiziService diziService;
//
//    public DiziController(IDiziService diziService) {
//        this.diziService = diziService;
//    }

    public DiziController(){}


    @GetMapping("/test")
    public String test(){
        return "bu test stringidir..";
    }
}
