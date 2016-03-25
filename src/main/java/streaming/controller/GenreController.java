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
import streaming.entity.Film;
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping(value = "/genre")
public class GenreController {
    
    @Autowired
    GenreCrudService genreCrudService;
    
    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model) {

        Iterable<Genre> listeGenre = genreCrudService.findAll();

        model.addAttribute("mesGenres", listeGenre);

        return "listerGenre";
    }
    
    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String ajouter(Model model) {
        
        model.addAttribute("monGenre", new Genre());

        return "ajouterGenre";
    }
    
    @RequestMapping(value = "ajouterPost", method = RequestMethod.POST)
    public String ajouterPost(@ModelAttribute(value = "monGenre") Genre g) {
        genreCrudService.save(g);
        return "redirect:/genre/lister";
    }
    
    @RequestMapping(value = "ajouter/{idGenre}", method = RequestMethod.GET)
    public String modifier(@PathVariable(value = "idGenre") long id) {
        genreCrudService.findOne(id);

        return "ajouterGenre";
    }
}
