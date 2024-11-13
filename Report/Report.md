<div align="justify">

## **Abstract**

Predicting the original mass of a retouched scraper has long been a
major goal in lithic analysis. It is commonly linked to lithic
technological organization of past societies along with notions of stone
tool general morphology, standardization through the reduction process,
use life, and site occupation patterns. In order to obtain a prediction
of original stone tool mass, previous studies have focused on attributes
that would remain constant or unaltered through retouch episodes.
However, these approaches have provided limited success for predictions
and have also remained untested in the framework of successive
resharpening episodes. In the research presented here, a set of
experimentally knapped flint flakes were successively resharpened as
scraper types. After each resharpening episode, four attributes were
recorded (scraper mass, height of retouch, maximum thickness and the
GIUR index). Four machine learning models were trained using these
variables in order to estimate the mass of the flake prior to any
retouch. A Random Forest model provided the best results with an r2
value of 0.97 when predicting original flake mass, and a r2 value of
0.84 when predicting percentage of mass lost by retouch. The Random
Forest model has been integrated into an open source and free to use
Shiny app. This allows for the wide spread implementation of a highly
precise machine learning model for predicting initial mass of flake
blanks successively retouched into scrapers.

**Key words:** experimental archaeology; lithic reduction; flake mass;
machine learning.  
\# **Introduction**

Scrapers are some of the most common lithic implements among
archaeological lithic assemblages. They are present from the first
Oldowan stone tools
\[[1](#ref-barsky_early_2011)–[3](#ref-semaw_26-million-year-old_2003)\]
through to modern ethnographic studies of hunter gatherers
\[[4](#ref-casamiquela_temas_1978)–[7](#ref-sillitoe_living_2003)\]. The
“reduction model”
\[[8](#ref-dibble_middle_1995),[9](#ref-dibble_interpretation_1987)\]
suggests that some stone tools (including scrapers) can represent
different stages of reuse and modification through retouch. When
considering scrapers within the reduction model, an integral concept is
that of curation. The initial definition of curation included a series
of behavioral patterns related to provisioning strategies
\[[10](#ref-binford_organization_1979),[11](#ref-renfrew_interassemblage_1973)\].
However, further authors included into curation behavioral strategies
such as tool transport, utilization in a wide range of tasks,
anticipated production, hafting, and recycling (after the original tool
had been discarded). An alternative definition of curation was proposed
by Shott
\[[12](#ref-shott_exegesis_1996),[13](#ref-shott_tool-class_1989)\], who
defined curation as “the ratio of realized to potential utility”. This
new approach to the definition of curation has important implications
for lithic analysis and the study of lithic technological organization
since it transforms curation into a continuous variable
\[[12](#ref-shott_exegesis_1996)\]. Given this new definition, and in
the framework of the reduction model, the amount of mass lost by a
lithic artifact by reuse/resharpening will be equivalent to its ratio of
curation. Both variables (amount in grams and percentage of mass lost by
a stone tool) can be empirically calculated in experimental contexts and
estimated in archaeological contexts. The presence of scrapers and their
curation relates to several aspects of the organization of lithic
technology of past societies
\[[14](#ref-clarkson_holocene_2002)–[19](#ref-shott_use_2017)\]. Amount
of curation affects the shape of stone tools at the moment of their
discard (thus affecting the morphological variability of stone tool
assemblages observed through time). Amount of curation can also relate
to raw material sources, with more curated artifacts coming from longer
distances. Curation also relates to the selection of technological
products for more intensive retouch, or shifts in technological
strategies of transport, thus informing about the cultural choices and
patterns of past human groups. Finally, curation also relates to tool
use and use-wear analysis.

Because of these reasons, predicting original scraper mass is a major
goal in lithic analysis. Thus far, two approaches are employed to
estimate the reduction and curation undergone by a retouched artifact.
The first approach uses estimations derived from direct measurements on
retouch. This has led to the proposal of several indexes using different
measurements, such as height of retouch, length of retouched edge or
projection of the original angle
\[[20](#ref-bustos-perez_exploring_2019)–[23](#ref-morales_measuring_2015)\].
These indices usually provide good correlation values with mass lost,
but they are usually conditioned by flake morphology, direction of
retouch, or tool type (laterally retouched scrapers, endscrapers,
bifacial products, etc.) and each one uses different scale ranges.

The second approach aims at estimating original flake mass based on
remaining flake features. This approach has the advantage of not being
limited by tool type, direction of retouch or flake morphology. Initial
work focused on controlled experiments of flake formation using
different measures of flake platform (width, depth) and exterior
platform angle (EPA) to estimate flake mass
\[[24](#ref-dibble_platform_1997)–[28](#ref-pelcin_controlled_1996)\].
Some of the reasons to select these features were that they usually
remain unaltered in most retouched artefacts. These controlled
experiments provided strong explanatory power for the formation of
flakes, with flake mass being predicted with an r2 value above 0.8
\[[25](#ref-dibble_effect_1995),[29](#ref-li_synthesis_2023)\]. However,
when the same variables are used to predict mass of experimentally
knapped flakes, the predictive power of the model diminishes
significantly, with r2 values dropping to 0.403
\[[30](#ref-davis_quantifying_1998)\] (0.224 for the same retouched
flakes), and 0.384 \[[31](#ref-shott_flake_2000)\]. These results meant
an important drawback since, as Dibble
\[[32](#ref-dibble_comment_1998)\]

# **References**

</div>

<div id="refs" class="references csl-bib-body">

<div id="ref-barsky_early_2011" class="csl-entry">

<span class="csl-left-margin">1.
</span><span class="csl-right-inline">Barsky D, Chapon-Sao C, Bahain
J-J, Beyene Y, Cauche D, Celiberti V, et al. The Early Oldowan
Stone-Tool Assemblage from Fejej FJ-1A, Ethiopia. Journal of African
Archaeology. 2011;9: 207–224.
doi:[10.3213/2191-5784-10196](https://doi.org/10.3213/2191-5784-10196)</span>

</div>

<div id="ref-sahnouni_further_2002" class="csl-entry">

<span class="csl-left-margin">2.
</span><span class="csl-right-inline">Sahnouni M. Further research at
the Oldowan site of Ain Hanech, North-eastern Algeria. Journal of Human
Evolution. 2002;43: 925–937.
doi:[10.1006/jhev.2002.0608](https://doi.org/10.1006/jhev.2002.0608)</span>

</div>

<div id="ref-semaw_26-million-year-old_2003" class="csl-entry">

<span class="csl-left-margin">3.
</span><span class="csl-right-inline">Semaw S, Rogers MJ, Quade J, Renne
PR, Butler RF, Dominguez-Rodrigo M, et al. 2.6-Million-year-old stone
tools and associated bones from OGS-6 and OGS-7, Gona, Afar, Ethiopia.
Journal of Human Evolution. 2003;45: 169–177.
doi:[10.1016/S0047-2484(03)00093-9](https://doi.org/10.1016/S0047-2484(03)00093-9)</span>

</div>

<div id="ref-casamiquela_temas_1978" class="csl-entry">

<span class="csl-left-margin">4.
</span><span class="csl-right-inline">Casamiquela RM. Temas patagónicos
de interes arqueológico. La talla del vidrio. Relaciones de la Sociedad
Argentina de Antropología. 1978;12: 213–223. </span>

</div>

<div id="ref-gallagher_contemporary_1977" class="csl-entry">

<span class="csl-left-margin">5.
</span><span class="csl-right-inline">Gallagher JP. Contemporary Stone
Tools in Ethiopia: Implications for Archaeology. Journal of Field
Archaeology. 1977;4: 407–414.
doi:[10.1179/009346977791490131](https://doi.org/10.1179/009346977791490131)</span>

</div>

<div id="ref-shott_measuring_2007" class="csl-entry">

<span class="csl-left-margin">6.
</span><span class="csl-right-inline">Shott MJ, Weedman KJ. Measuring
reduction in stone tools: An ethnoarchaeological study of Gamo
hidescrapers from Ethiopia. Journal of Archaeological Science. 2007;34:
1016–1035.
doi:[10.1016/j.jas.2006.09.009](https://doi.org/10.1016/j.jas.2006.09.009)</span>

</div>

<div id="ref-sillitoe_living_2003" class="csl-entry">

<span class="csl-left-margin">7.
</span><span class="csl-right-inline">Sillitoe P, Hardy K. Living
Lithics: Ethnoarchaeology in Highland Papua New Guinea. Antiquity.
2003;77: 555–566.
doi:[10.1017/S0003598X00092619](https://doi.org/10.1017/S0003598X00092619)</span>

</div>

<div id="ref-dibble_middle_1995" class="csl-entry">

<span class="csl-left-margin">8.
</span><span class="csl-right-inline">Dibble HL. Middle Paleolithic
Scraper Reduction: Background, Clarification, and Review of the Evidence
to Date. Journal of Archaeological Method and Theory. 1995;2: 300–368.
</span>

</div>

<div id="ref-dibble_interpretation_1987" class="csl-entry">

<span class="csl-left-margin">9.
</span><span class="csl-right-inline">Dibble HL. The interpretation of
Middle Paleolithic scraper morphology. American Antiquity. 1987;52:
109–117. </span>

</div>

<div id="ref-binford_organization_1979" class="csl-entry">

<span class="csl-left-margin">10.
</span><span class="csl-right-inline">Binford LR. Organization and
Formation Processes: Looking at Curated Technologies. Journal of
Anthropological Research. 1979;35: 255–273. </span>

</div>

<div id="ref-renfrew_interassemblage_1973" class="csl-entry">

<span class="csl-left-margin">11.
</span><span class="csl-right-inline">Binford LR. Interassemblage
variability - the Mousterian and the ’functional ’ argument. In: Renfrew
C, editor. The Explanation Of Culture Change Models in Prehistory.
Gloucester: Duckworth; 1973. pp. 227–254. </span>

</div>

<div id="ref-shott_exegesis_1996" class="csl-entry">

<span class="csl-left-margin">12.
</span><span class="csl-right-inline">Shott MJ. An Exegesis of the
Curation Concept. Journal of Anthropological Research. 1996;52: 259–280.
</span>

</div>

<div id="ref-shott_tool-class_1989" class="csl-entry">

<span class="csl-left-margin">13.
</span><span class="csl-right-inline">Shott MJ. On Tool-Class Use Lives
and The Formation of Archaeological Assemblages. American Antiquity.
1989;54: 9–30.
doi:[10.2307/281329](https://doi.org/10.2307/281329)</span>

</div>

<div id="ref-clarkson_holocene_2002" class="csl-entry">

<span class="csl-left-margin">14.
</span><span class="csl-right-inline">Clarkson C. Holocene scraper
reduction, technological organization and landuse at Ingaladdi
Rockshelter, Northern Australia. Archaeology in Oceania. 2002;37: 79–86.
doi:[10.1002/j.1834-4453.2002.tb00508.x](https://doi.org/10.1002/j.1834-4453.2002.tb00508.x)</span>

</div>

<div id="ref-glauberman_late_2020" class="csl-entry">

<span class="csl-left-margin">15.
</span><span class="csl-right-inline">Glauberman P, Gasparyan B,
Wilkinson K, Frahm E, Nahapetyan S, Arakelyan D, et al. Late Middle
Paleolithic Technological Organization and Behavior at the Open-Air Site
of Barozh 12 (Armenia). Journal of Paleolithic Archaeology. 2020;3:
1095–1148.
doi:[10.1007/s41982-020-00071-4](https://doi.org/10.1007/s41982-020-00071-4)</span>

</div>

<div id="ref-andrefsky_construction_2008" class="csl-entry">

<span class="csl-left-margin">16.
</span><span class="csl-right-inline">Hiscock P, Clarkson C. The
construction of morphological diversity: A study of Mousterian implement
retouching at Combe Grenal. In: Andrefsky W, editor. Lithic Technology:
Measures of Production, Use and Curation. Cambridge: Cambridge
University Press; 2008. pp. 106–135. </span>

</div>

<div id="ref-kuhn_unpacking_1991" class="csl-entry">

<span class="csl-left-margin">17.
</span><span class="csl-right-inline">Kuhn SL. “Unpacking” Reduction:
Lithic Raw Material Economy in the Mousterian of West-Central Italy.
Journal of Anthropological Archaeology. 1991;10: 76–106. </span>

</div>

<div id="ref-shott_costs_2018" class="csl-entry">

<span class="csl-left-margin">18.
</span><span class="csl-right-inline">Shott MJ. The Costs and Benefits
of Technological Organization: Hunter-Gatherer Lithic Industries and
Beyond. In: Robinson E, Sellet F, editors. Lithic Technological
Organization and Paleoenvironmental Change: Global and Diachronic
Perspectives. Cham: Springer International Publishing; 2018. pp.
321–333.
doi:[10.1007/978-3-319-64407-3_15](https://doi.org/10.1007/978-3-319-64407-3_15)</span>

</div>

<div id="ref-shott_use_2017" class="csl-entry">

<span class="csl-left-margin">19.
</span><span class="csl-right-inline">Shott MJ, Seeman MF. Use and
Multifactorial Reconciliation of Uniface Reduction Measures: A Pilot
Study at the Nobles Pond Paleoindian Site. American Antiquity. 2017;82:
723–741.
doi:[10.1017/aaq.2017.40](https://doi.org/10.1017/aaq.2017.40)</span>

</div>

<div id="ref-bustos-perez_exploring_2019" class="csl-entry">

<span class="csl-left-margin">20.
</span><span class="csl-right-inline">Bustos-Pérez G, Baena J. Exploring
volume lost in retouched artifacts using height of retouch and length of
retouched edge. Journal of Archaeological Science: Reports. 2019;27:
101922.
doi:[10.1016/j.jasrep.2019.101922](https://doi.org/10.1016/j.jasrep.2019.101922)</span>

</div>

<div id="ref-eren_defining_2005" class="csl-entry">

<span class="csl-left-margin">21.
</span><span class="csl-right-inline">Eren MI, Domínguez-Rodrigo M, Kuhn
SL, Adler DS, Le I, Bar-Yosef O. Defining and measuring reduction in
unifacial stone tools. Journal of Archaeological Science. 2005;32:
1190–1201.
doi:[10.1016/j.jas.2005.03.003](https://doi.org/10.1016/j.jas.2005.03.003)</span>

</div>

<div id="ref-kuhn_geometric_1990" class="csl-entry">

<span class="csl-left-margin">22.
</span><span class="csl-right-inline">Kuhn SL. A Geometric Index of
Reduction for Unifacial Stone Tools. Journal of Archaeological Science.
1990;17: 583–593. </span>

</div>

<div id="ref-morales_measuring_2015" class="csl-entry">

<span class="csl-left-margin">23.
</span><span class="csl-right-inline">Morales JI, Lorenzo C, Vergès JM.
Measuring Retouch Intensity in Lithic Tools: A New Proposal Using 3D
Scan Data. Journal of Archaeological Method and Theory. 2015;22:
543–558.
doi:[10.1007/s10816-013-9189-0](https://doi.org/10.1007/s10816-013-9189-0)</span>

</div>

<div id="ref-dibble_platform_1997" class="csl-entry">

<span class="csl-left-margin">24.
</span><span class="csl-right-inline">Dibble HL. Platform variability
and flake morphology: A comparison of experimental and archaeological
data and implications for interpreting prehistoric lithic technological
strategies. Lithic Technology. 1997;22: 150–170. </span>

</div>

<div id="ref-dibble_effect_1995" class="csl-entry">

<span class="csl-left-margin">25.
</span><span class="csl-right-inline">Dibble HL, Pelcin A. The Effect of
Hammer Mass and Velocity on Flake Mass. Journal of Archaeological
Science. 1995;22: 429–439.
doi:[10.1006/jasc.1995.0042](https://doi.org/10.1006/jasc.1995.0042)</span>

</div>

<div id="ref-dibble_new_1981" class="csl-entry">

<span class="csl-left-margin">26.
</span><span class="csl-right-inline">Dibble HL, Whittaker JC. New
Experimental Evidence on the Relation Between Percussion Flaking and
Flake Variation. Journal of Archaeological Science. 1981;8: 283–296.
</span>

</div>

<div id="ref-pelcin_formation_1997" class="csl-entry">

<span class="csl-left-margin">27.
</span><span class="csl-right-inline">Pelcin AW. The Formation of
Flakes: The Role of Platform Thickness and Exterior Platform Angle in
the Production of Flake Initiations and Terminations. Journal of
Archaeological Science. 1997;24: 1107–1113.
doi:[10.1006/jasc.1996.0190](https://doi.org/10.1006/jasc.1996.0190)</span>

</div>

<div id="ref-pelcin_controlled_1996" class="csl-entry">

<span class="csl-left-margin">28.
</span><span class="csl-right-inline">Pelcin AW. Controlled experiments
in the production of flake attributes. {PhD}, University of
Pennsylvania. 1996. </span>

</div>

<div id="ref-li_synthesis_2023" class="csl-entry">

<span class="csl-left-margin">29.
</span><span class="csl-right-inline">Li L, Lin SC, McPherron SP,
Abdolahzadeh A, Chan A, Dogandžić T, et al. A Synthesis of the Dibble et
al. Controlled Experiments into the Mechanics of Lithic Production.
Journal of Archaeological Method and Theory. 2023;30: 1284–1325.
doi:[10.1007/s10816-022-09586-2](https://doi.org/10.1007/s10816-022-09586-2)</span>

</div>

<div id="ref-davis_quantifying_1998" class="csl-entry">

<span class="csl-left-margin">30.
</span><span class="csl-right-inline">Davis ZJ, Shea JJ. Quantifying
Lithic Curation: An Experimental Test of Dibble and Pelcin’s Original
Flake-Tool Mass Predictor. Journal of Archaeological Science. 1998;25:
603–610.
doi:[10.1006/jasc.1997.0255](https://doi.org/10.1006/jasc.1997.0255)</span>

</div>

<div id="ref-shott_flake_2000" class="csl-entry">

<span class="csl-left-margin">31.
</span><span class="csl-right-inline">Shott MJ, Bradbury AP, Carr PJ,
Odell GH. Flake Size from Platform Attributes: Predictive and Empirical
Approaches. Journal of Archaeological Science. 2000;27: 877–894.
doi:[10.1006/jasc.1999.0499](https://doi.org/10.1006/jasc.1999.0499)</span>

</div>

<div id="ref-dibble_comment_1998" class="csl-entry">

<span class="csl-left-margin">32.
</span><span class="csl-right-inline">Dibble HL. Comment on “Quantifying
Lithic Curation: An Experimental Test of Dibble and Pelcin’s Original
Flake-Tool Mass Predictor,” by Zachary J. Davis and John J. Shea.
Journal of Archaeological Science. 1998;25: 611–613.
doi:[10.1006/jasc.1997.0254](https://doi.org/10.1006/jasc.1997.0254)</span>

</div>

</div>
