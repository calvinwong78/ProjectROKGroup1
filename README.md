# ProjectROKGroup1

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/othneildrew/Best-README-Template">
   
  </a>

  <h3 align="center">Diabetes Prediction</h3>




<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#contribution">Member and Contribution </a>
    </li>
    <li><a href="#Methods">Methods</a></li>
    <li><a href="#Roadmap">Roadmap</a></li>
    <li><a href="#Refrence">Refrence</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This dataset is originally from the National Institute of Diabetes and Digestive and Kidney Diseases. The objective of the dataset is to diagnostically predict whether or not a patient has diabetes, based on certain diagnostic measurements included in the dataset. Several constraints were placed on the selection of these instances from a larger database.
In particular, all patients here are females at least 21 years old of Pima Indian heritage. And this code will be displaying the result of prediction from diabetes.csv.
### Built With

This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.
* [Rstudio](https://www.rstudio.com/)



<!-- contribution -->
## contribution

1. CALVIN WONG = monitoring all member and helping them, Logistic Regression model part,shiny.
2. CHANDRA WINATA TJIA =  Decision Tree part
3. DANIEL CHEWNALDO = SVM part
4. ALEXANDRO MIKHA
5. CLAO PANSON



<!-- Methods -->
## Methods
1. Logistic Regression model
2. Decision Tree
3. SVM





<!-- Roadmap -->
## Roadmap

Logistic Regression model
<br />
<img src="www/logisticR.png" >
<br />
In logistic regression model we create data partition or spliting the data into 70% and 30%.
pima_training is 70% and pima_testing is 30%,and we train the model glm_fm1 shown in the below  
<br />
<img src="www/glm1.png" > 
<br />
if we look carefully at picture shown above we can see at the right side of Pr(> |z|) result there is star shown the more star the more it affect the result of prediction
so we select the Triceps_Skin,Serum_Insulin and Age to remove from model therefore there is glm_fm2 which shown below
<br />
<img src="www/glm2.png" > 
<br />
here is the plot of model glm_fm2
<br />
<img src="www/LRM.png" > 
<br />
and last after the model tested we got the confusionmatrix which is shown below 
<br />
<img src="www/GLMconfusion.png" > 




<br />
<br />
Decision Tree
<br />
<img src="www/decisionTree.png" >
<br />
In Decision Tree first thing we do is create data partition or spliting the data into 70% and 30%.
Train is 70% and test in 30%, the model is trained and the model name is treemod here is the plot of treemod
<br />
<img src="www/RplotDecision.png" >
<br />
and last is the result of the confusionmatrix 
<br />
<img src="www/DecisionTreeconfusionmatrix.png" >


<!-- Refrence -->
##Refrence
https://rpubs.com/rzezela77/346228




<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
* [Img Shields](https://shields.io)
* [Choose an Open Source License](https://choosealicense.com)
* [GitHub Pages](https://pages.github.com)
* [Animate.css](https://daneden.github.io/animate.css)
* [Loaders.css](https://connoratherton.com/loaders)
* [Slick Carousel](https://kenwheeler.github.io/slick)
* [Smooth Scroll](https://github.com/cferdinandi/smooth-scroll)
* [Sticky Kit](http://leafo.net/sticky-kit)
* [JVectorMap](http://jvectormap.com)
* [Font Awesome](https://fontawesome.com)





