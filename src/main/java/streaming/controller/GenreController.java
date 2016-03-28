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

    @RequestMapping(value = "ajouterPost", method = RequestMethod.GET)
    public String ajouterPost(@ModelAttribute(value = "monGenre") Genre g) {
        genreCrudService.save(g);
        return "redirect:/genre/lister";
    }

    @RequestMapping(value = "modifier/{idGenre}", method = RequestMethod.GET)
    public String modifier(@PathVariable(value = "idGenre") long id, Model model) {
        System.out.print(id);
        Genre g = genreCrudService.findOne(id);
        model.addAttribute("monGenre", g);

        return "modifierGenre";
    }

    @RequestMapping(value = "modifierPost", method = RequestMethod.GET)
    public String modifierPost(@ModelAttribute(value = "monGenre") Genre g, Model model) {
        long id1 = g.getId();
        Genre g1 = genreCrudService.findOne(id1);
        genreCrudService.delete(g);
        model.addAttribute("monGenre", new Genre());
        g.setId(id1);
        genreCrudService.save(g);

        return "redirect:/genre/lister";
    }

    @RequestMapping(value = "supprimer/{idGenre}", method = RequestMethod.GET)
    public String modifierPost(@PathVariable(value = "idGenre") long id) {
        Genre g = genreCrudService.findOne(id);
        genreCrudService.delete(g);

        return "redirect:/genre/lister";
    }
}
