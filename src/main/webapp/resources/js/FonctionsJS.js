function init() {
    $('.contenu').load('accueilContenu');
    $('.menu').load('menu');
    $('.pied').load('pied');
}

function listerFilm() {
    $('.menu').load('menu');
    $('.contenu').load('film/lister');
    $('.pied').load('pied');
}

function listerGenre() {
    $('.menu').load('menu');
    $('.contenu').load('genre/lister');
    $('.pied').load('pied');
}

function modifierFilm(idFilm) {
    $('.contenu').load('/springmvc/film/modifier/'+idFilm);
}
function modifierGenre(idGenre) {
    $('.contenu').load('/springmvc/genre/modifier/'+idGenre);
}

function modifierFilmPost() {
    $.post(('/springmvc/film/modifierPost'), $('form').serialize());
    $('.contenu').load('film/lister');
}
function modifierGenrePost() {
    $.post(('/springmvc/genre/modifierPost'), $('form').serialize());
    $('.contenu').load('genre/lister');
}

function supprimerFilm(idFilm) {
    $('.contenu').load('/springmvc/film/supprimer/'+idFilm);
}
function supprimerGenre(idGenre) {
    $('.contenu').load('/springmvc/genre/supprimer/'+idGenre);
}

function ajouterFilm() {
    $('.contenu').load('film/ajouter');
}
function ajouterGenre() {
    $('.contenu').load('genre/ajouter');
}

function ajouterFilmPost() {
    $.post(('/springmvc/film/ajouter'), $('form').serialize());
    $('.contenu').load('film/lister');
}
function ajouterGenrePost() {
    $.post(('/springmvc/genre/ajouterPost'), $('form').serialize());
    $('.contenu').load('genre/lister');
}






