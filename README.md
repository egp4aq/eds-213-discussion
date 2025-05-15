## Repository for EDS 213: Databases and Data Management Discussion Section

### Description
This repository holds the code for our quarter-long database project in the EDS 213 discussion section. Specifically, it hosts the code to create, query into, and visualize results from a lego database, built off of a kaggle dataset. The visualization answers the question of which themes in the lego universe has the most pink parts.

### Repository Structure
```{bash}
eds-213-discussion
|
├── images/
|     └── downloads_schema.png   # schema diagram for README.md
|
├── lego-data/
|     ├── colors.csv
|     ├── inventories.csv
|     ├── inventory_parts.csv
|     ├── inventory_sets.csv
|     ├── part_categories.csv
|     ├── parts.csv
|     ├── sets.csv
|     └── themes.csv
|
├── lego.db  # lego database
|
├── lego-creation.sql  # sql code to create database
|
├── dependencies  #  text file with R version, operating system, & packages used 
|
├── eds-213-discussion.Rproj   # R project 
|
├── README.md 
|
└── .gitignore     

```
### Database Schema
![](images/downloads_schema.png)

### Data Access
The data in this repository is sourced from a [kaggle dataset](https://www.kaggle.com/datasets/rtatman/lego-database?resource=download&select=sets.csv). 
This dataset contains the LEGO Parts/Sets/Colors and Inventories of every official LEGO set in the Rebrickable database. These files are current as of July 2017. 

### Authors & Contributors
Liz Peterson

### References & Acknowledgements
This assignment was created for the class EDS 213: Databases and Data Management at the Bren School of Environmental Science & Management by TA Annie Adams and instructors Greg Janee and Julien Brun. 
