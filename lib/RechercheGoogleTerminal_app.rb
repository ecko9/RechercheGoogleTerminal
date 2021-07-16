require 'rubocop'
require 'nokogiri'
require 'pry'
require 'open-uri'
require 'watir'
require 'twitter'
require 'dotenv'
require 'rspec'
require 'launchy'

######## VERIFIE SI AU MOINS 1 INPUT EST DONNE EN ENTREE
def check_input
  abort("ERREUR: Veuillez Saisir Une Recherche !") if ARGV.empty?
end

######## RECUPERE LES INPUTS CORRESPONDANTS A LA RECHERCHE GOOGLE EN ENTREE 
######## ET LES RETOURNE SOUS FORME D'UNE CHAINE DE CARACTERES (SEPARE PAR DES "+")
def get_input
  return chaine = ARGV.join("+")
end

######## CREER URL A PARTIR DE NOTRE CHAINE
def get_url
  return url = "https://www.google.com/search?q=#{get_input}"
end

######## OUVRIR UNE FENETRE GOOGLE AVEC LAUNCHY A NOTRE URL
def search_launch
  Launchy.open(get_url)
end

######## PERFORM
def perform
  check_input
  search_launch
end

perform