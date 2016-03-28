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
import streaming.entity.Pays;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;
import streaming.service.PaysCrudService;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping(value = "/film")
public class FilmController {

    @Autowired
    FilmCrudService filmCrudService;

    @Autowired
    GenreCrudService genreCrudService;
    
    @Autowired
    PaysCrudService paysCrudService;

    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model) {

        Iterable<Film> listeFilm = filmCrudService.findAll();

        model.addAttribute("mesFilms", listeFilm);

        return "listerFilm";
    }

    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String ajouter(Model model) {

        Iterable<Genre> listeGenre = genreCrudService.findAll();

        model.addAttribute("mesGenres", listeGenre);
        
        Iterable<Pays> listePays = paysCrudService.findAll();

        model.addAttribute("mesPays", listePays);

        model.addAttribute("monFilm", new Film());

        return "ajouterFilm";
    }

    @RequestMapping(value = "ajouterPost", method = RequestMethod.GET)
    public String ajouterPost(@ModelAttribute(value = "monFilm") Film f) {
        filmCrudService.save(f);
        return "redirect:/film/lister";
    }

    @RequestMapping(value = "supprimer/{idFilm}", method = RequestMethod.GET)
    public String modifierPost(@PathVariable(value = "idFilm") long id) {
        Film f = filmCrudService.findOne(id);
        filmCrudService.delete(f);

        return "redirect:/film/lister";
    }
}
