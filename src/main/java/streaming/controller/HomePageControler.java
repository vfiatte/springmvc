/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author tom
 */
@Controller
@RequestMapping(value = "/")    
public class HomePageControler {
    
    
   
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home(){
        return "home";
    }
    
    @RequestMapping(value = "accueilContenu", method = RequestMethod.GET)
    public String contenu(){
        return "_accueilContenu";
    }
    
     @RequestMapping(value = "menu", method = RequestMethod.GET)
    public String menu(){
        return "_menu";
    }
    @RequestMapping(value = "pied", method = RequestMethod.GET)
    public String pied(){
        return "_pied";
    }
    
   
}
