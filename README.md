# HomeChef

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
This app will be designed to enable users to search and select from over a hundred of recipes from a database. They will be able to store the recipes to view and attempt later. Once a recipe is selected, the user will be brought to another page with an image of the recipe, a list of the ingredients, serving size, calorie, and instructions. There will be a page to contact support in case a user needs help or has suggestions for new recipes.

### App Evaluation
- **Category:** Food & Drink
- **Mobile:** This app will be developed for mobile-use only as of now. While it is feasible to create a web application, we have decided it is more convenient for the user if they can search for and read off recipes from their handphone and upload photos of what they created. 
- **Story:** The user starts a search for a recipe and selects one. They will view the details and if interested, choose to recreate the recipe or if not, go back to the search form. If they recreate it, they can upload a photo of their creation online.
- **Market:** Home cooks that are looking to improve their culinary skills in a fun, interactive way. 
- **Habit:** The user is free to use the app whenever they are interested in making a homemade meal. This can be as often as multiple times a day or less frequent such as once a week. 
- **Scope:** We want to create an app and community where users can conveniently look up a recipe, recreate it, and post photos. Eventually we would like to expand this to be more interactive by establishing a point system for each recipe recreated and leadership board. Perhaps we will also have discussion boards. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in with their Facebook credentials
* User searches for and selects a recipe 
* User can save a recipe for later
* When a recipe is selected, it will go to a new screen with its details
* User can take photos of the recipe they recreated and upload it
* Profile page of the user

**Optional Nice-to-have Stories**

* User receives points for each recipe they recreate and upload photos of 
* Leadership board of users with the highest points

### 2. Screen Archetypes

* Login - User must log in through their Facebook account.
* Search Screen - form where user can enter their query
* Results Screen - where the results of the search query is shown
  * User can select a recipe from the list
* Details Screen - lists information of each recipe
* Bookmark Screen - recipes that users chose to save
* Camera Screen 
  * User can take a photo or upload a photo 
* Profile Screen
   * User can upload their photo if desired and write a bio

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Search
* Bookmark
* Camera
* Profile

**Flow Navigation** (Screen to Screen)

* Login -> Facebook authorization & verification
* Search -> Results
* Camera -> Photos if they wish to pick an image from their library
* Results -> Recipe details when user selects a recipe
* Profile -> Select image to upload for profile or text to be modified for bio

## Wireframes
<img src="https://i.imgur.com/SipSfvz.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/AiL05sy.png" width=300> <img src="https://i.imgur.com/iQwEKN1.png" width=300> <img src="https://i.imgur.com/jXqMrm3.png" width=300> <img src="https://i.imgur.com/kQzRLnL.png" width=300> <img src="https://i.imgur.com/TDdcbuD.png" width=300> <img src="https://i.imgur.com/Ss0QqDf.png" width=300>

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
