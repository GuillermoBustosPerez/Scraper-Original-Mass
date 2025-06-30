# **General information**    

**Title:** Finding the Original Mass: a machine learning model and its deployment for lithic scrapers.    
**Author**: Guillermo Bustos-Pérez $^{(1,2,3)}$   

$^{(1)}$ Department of Human Origins, Max Planck Institute for Evolutionary Anthropology, Leipzig.    
$^{(2)}$ Institut Català de Paleoecologia Humana i Evolució Social (IPHES-CERCA), Tarragona, Spain.    
$^{(3)}$ Departament d’Història i Història de l’Art, Universitat Rovira i Virgili, Tarragona, Spain.   

<div align="justify">  

This repository contains data and code for the draft paper "Finding the Original Mass: a machine learning model and its deployment for lithic scrapers".   

\  

The online application of the Original Scraper Mass Calculator can be accessed at:  

https://guillermo-bustos-perez.shinyapps.io/Original-Scraper-Mass-Calculator/   

\ 

## **Access information**

**License**

The following data and code is publish under a Non Commercial 4.0
International (CC BY-NC 4.0) license. For more details, see the
[License](License.md) file.

![License](License.png)

## **Abstract**   

Predicting the original mass of a retouched scraper has long been a major goal in lithic analysis. It is commonly linked to lithic technological organization of past societies along with notions of stone tool general morphology, standardization through the reduction process, use life, and site occupation patterns. In order to obtain a prediction of original stone tool mass, previous studies have focused on attributes that would remain constant or unaltered through retouch episodes. However, these approaches have provided limited success for predictions and have also remained untested in the framework of successive resharpening episodes. In the research presented here, a set of experimentally knapped flint flakes were successively resharpened as scraper types. After each resharpening episode, four attributes were recorded (scraper mass, height of retouch, maximum thickness and the GIUR index). Four machine learning models were trained using these variables in order to estimate the mass of the flake prior to any retouch. A Random Forest model provided the best results with an $r^2$ value of 0.97 when predicting original flake mass, and a $r^2$ value of 0.84 when predicting percentage of mass lost by retouch.  The Random Forest model has been integrated into an open source and free to use Shiny app. This allows for the wide spread implementation of a highly precise machine learning model for predicting initial mass of flake blanks successively retouched into scrapers.   

## **Structure of the repository**   

</div> 