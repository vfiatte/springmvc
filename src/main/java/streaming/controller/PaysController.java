/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Genre;
import streaming.entity.Pays;
import streaming.service.PaysCrudService;

/**
 *
 * @author Valentin
 */
@Controller
@RequestMapping(value = "/pays")
public class PaysController {
    
    @Autowired
    PaysCrudService paysCrudService;
    
    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model) {

        Iterable<Pays> listePays = paysCrudService.findAll();

        model.addAttribute("mesPays", listePays);

        return "listerPays";
    }
    
    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String ajouter(Model model) {
        
        model.addAttribute("monPays", new Pays());

        return "ajouterPays";
    }
    
    @RequestMapping(value = "ajouterPost", method = RequestMethod.GET)
    public String ajouterPost(@ModelAttribute(value = "monPays") Pays p) {
        paysCrudService.save(p);
        return "redirect:/pays/lister";
    }
    
    @RequestMapping(value = "modifier/{idPays}", method = RequestMethod.GET)
    public String modifier(@PathVariable(value = "idPays") long id, Model model) {
        System.out.print(id);
        Pays p = paysCrudService.findOne(id);
        model.addAttribute("monPays", p);

        return "modifierPays";
    }
    
    @RequestMapping(value = "modifierPost", method = RequestMethod.GET)
    public String modifierPost(@ModelAttribute(value = "monPays") Pays p) {
        paysCrudService.save(p);
        
        return "redirect:/pays/lister";
    }
    
    @RequestMapping(value = "supprimer/{idPays}", method = RequestMethod.GET)
    public String modifierPost(@PathVariable(value = "idPays") long id) {
        Pays p = paysCrudService.findOne(id);
        paysCrudService.delete(p);
        
        return "redirect:/pays/lister";
    }
}

