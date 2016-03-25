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
import streaming.entity.Effacemoi;
import streaming.service.EffacemoiCrudService;

/**
 *
 * @author tom
 */
@Controller
@RequestMapping(value = "/effacemoi")
public class EffacemoiController {

    @Autowired
    private EffacemoiCrudService effacemoiCrudService;

    @RequestMapping(value = "ajouterPost", method = RequestMethod.POST)
    public String ajouterPost(@ModelAttribute(value = "monEffaceMoi") Effacemoi em) {
        effacemoiCrudService.save(em);
        return "redirect:/effacemoi/lister";
    }

    @RequestMapping(value = "ajouter", method = RequestMethod.GET)
    public String ajouter(Model model) {
        model.addAttribute("monEffaceMoi", new Effacemoi());

        return "effacemoi_ajouter";
    }

    @RequestMapping(value = "modifier", method = RequestMethod.GET)
    public String modifier() {

        System.out.println("modifier");

        return "effacemoi";
    }

    @RequestMapping(value = "lister", method = RequestMethod.GET)
    public String lister(Model model) {

        Iterable<Effacemoi> listeEffacemoi = effacemoiCrudService.findAll();

        model.addAttribute("maListe", listeEffacemoi);

        return "effacemoi";
    }

    @RequestMapping(value = "detail/{idDuRecord}", method = RequestMethod.GET)
    public String detail(@PathVariable("idDuRecord") long monId) {

        System.out.println("==================================================");
        System.out.println(monId);
        System.out.println("==================================================");

        return "effacemoi";
    }

//    @RequestMapping(value = "effacemoi_ajouter", method = RequestMethod.GET)
//    public String detail() {
//
//        System.out.println("==================================================");
//        System.out.println("==================================================");
//
//        return "forward:/effacemoi";
//    }

}
