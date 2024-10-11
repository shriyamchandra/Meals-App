import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
List<Category> availableCategories = [
  const Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
    imageUrl: 'https://images.pexels.com/photos/5794877/pexels-photo-5794877.jpeg?cs=srgb&dl=pexels-n-voitkevich-5794877.jpg&fm=jpg&_gl=1*1ujxhcw*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTMxNC4wLjAuMA..',
  ),
  const Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
    imageUrl: 'https://images.pexels.com/photos/1092730/pexels-photo-1092730.jpeg?cs=srgb&dl=pexels-janetrangdoan-1092730.jpg&fm=jpg&_gl=1*16lf2fi*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTM4OS4wLjAuMA..',
  ),
  const Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
    imageUrl: 'https://wallpaperaccess.com/download/hamburguer-1598022',
  ),
  const Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
    imageUrl: 'https://wallpapercave.com/download/black-food-wallpapers-wp9506455',
  ),
  const Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
    imageUrl: 'https://images.pexels.com/photos/1414651/pexels-photo-1414651.jpeg?cs=srgb&dl=pexels-adonyi-foto-1414651.jpg&fm=jpg&_gl=1*8fnmvp*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTc1Mi4wLjAuMA..',
  ),
  const Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
    imageUrl: 'https://images.pexels.com/photos/6089654/pexels-photo-6089654.jpeg?cs=srgb&dl=pexels-shameel-mukkath-3421394-6089654.jpg&fm=jpg&_gl=1*6a39dq*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTc5MC4wLjAuMA..',
  ),
  const Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
    imageUrl: 'https://images.pexels.com/photos/685527/pexels-photo-685527.jpeg?cs=srgb&dl=pexels-victorfreitas-685527.jpg&fm=jpg&_gl=1*1bllze1*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTg1MC4wLjAuMA..',
  ),
  const Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
    imageUrl: 'https://images.pexels.com/photos/1907227/pexels-photo-1907227.jpeg?cs=srgb&dl=pexels-catscoming-1907227.jpg&fm=jpg&_gl=1*evm3h8*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMzQ4MDA0Ni40LjEuMTcyMzQ4MTkwNS4wLjAuMA..',
  ),
  const Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
    imageUrl: 'https://images.unsplash.com/photo-1581512778119-b71ae58bc687?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=tom-morel-OCH09QSOOyM-unsplash.jpg',
  ),
  const Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
    imageUrl: 'https://images.pexels.com/photos/158053/fresh-orange-juice-squeezed-refreshing-citrus-158053.jpeg?cs=srgb&dl=pexels-pixabay-158053.jpg&fm=jpg',
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c1',
    ],
    title: 'Margherita Pizza',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.pexels.com/photos/18431672/pexels-photo-18431672.jpeg?cs=srgb&dl=pexels-renestrgar-18431672.jpg&fm=jpg&_gl=1*4rbbpc*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMjYxNjE5Ni4xLjAuMTcyMjYxNjE5Ni4wLjAuMA..',
    duration: 30,
    ingredients: [
      'Pizza Dough',
      '200g Tomato Sauce',
      '200g Mozzarella Cheese',
      'Fresh Basil',
      'Olive Oil',
      'Salt'
    ],
    steps: [
      'Preheat the oven to 220°C.',
      'Roll out the pizza dough on a floured surface.',
      'Spread the tomato sauce over the dough.',
      'Tear mozzarella into pieces and distribute evenly.',
      'Add fresh basil leaves, a drizzle of olive oil, and a pinch of salt.',
      'Bake in the oven for 10-15 minutes until the crust is golden.',
      'Serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c8',
    ],
    title: 'Sushi',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl: 'https://images.pexels.com/photos'
        '/357756/pexels-photo-357756.'
        'jpeg?cs=srgb&dl=pexels-pixabay-'
        '357756.jpg&fm=jpg&_gl=1*1w3aeq7*'
        '_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_g'
        'a_8JE65Q40S6*MTcyMjc4OTI5OC4yLjEuMTcyMjc4O'
        'TU3Mi4wLjAuMA..',
    duration: 50,
    ingredients: [
      '2 Cups Sushi Rice',
      '3 Cups Water',
      '1/3 Cup Rice Vinegar',
      '3 Tablespoons Sugar',
      '1 Teaspoon Salt',
      'Nori Sheets',
      'Sliced Avocado',
      'Cucumber Sticks',
      'Sliced Raw Fish'
    ],
    steps: [
      'Rinse the rice until the water runs clear.',
      'Cook the rice with water in a rice cooker.',
      'Mix rice vinegar, sugar, and salt in a small bowl.',
      'Fold the vinegar mixture into the cooked rice.',
      'Place a nori sheet on a bamboo mat.',
      'Spread a thin layer of rice over the nori.',
      'Place avocado, cucumber, and fish slices on top.',
      'Roll the bamboo mat to form the sushi roll.',
      'Cut the roll into slices and serve.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c7',
    ],
    title: 'Omelette',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://images.pexels.com/photos/1437268/pexels'
        '-photo-1437268.jpeg?cs=srgb&dl=pexels-enginakyurt-'
        '1437268.jpg&fm=jpg&_gl=1*1rissyn*_ga*MTQzMDc0MTk2MC'
        '4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMjc4OTI5OC4yLjEuMT'
        'cyMjc4OTQzOS4wLjAuMA..',
    duration: 10,
    ingredients: [
      '2 Eggs',
      'Salt',
      'Pepper',
      'Butter',
      'Cheese',
      'Chopped Vegetables (optional)'
    ],
    steps: [
      'Beat the eggs in a bowl with salt and pepper.',
      'Heat butter in a frying pan over medium heat.',
      'Pour the egg mixture into the pan.',
      'Tilt the pan to spread the eggs evenly.',
      'Add cheese and vegetables on one half.',
      'Fold the omelette and cook for another minute.',
      'Serve warm.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c10',
    ],
    title: 'Grilled Vegetables',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://images.pexels.com/photos/533325/'
        'pexels-photo-533325.jpeg?cs=srgb&dl='
        'pexels-pixabay-533325.jpg&fm=jpg&_gl='
        '1*ki7ing*_ga*MTQzMDc0MTk2MC4xNzIyNjE2'
        'MTk2*_ga_8JE65Q40S6*MTcyMjc4OTI5OC4yL'
        'jEuMTcyMjc4OTM0OC4wLjAuMA..',
    duration: 25,
    ingredients: [
      '1 Zucchini',
      '1 Red Bell Pepper',
      '1 Yellow Bell Pepper',
      '1 Red Onion',
      '2 Tablespoons Olive Oil',
      'Salt',
      'Pepper',
      'Balsamic Vinegar'
    ],
    steps: [
      'Preheat grill to medium heat.',
      'Slice the zucchini, bell peppers, and onion.',
      'Toss the vegetables with olive oil, salt, and pepper.',
      'Grill the vegetables for about 5 minutes on each side.',
      'Drizzle with balsamic vinegar before serving.',
      'Serve as a side or main dish.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c9',
    ],
    title: 'Ratatouille',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://thumbs.dreamstime.com/z/colorful'
        '-ratatouille-cast-iron-skillet-freshly'
        '-baked-displayed-garnished-herbs-dark-'
        'background-318048472.jpg?dl=1',
    duration: 60,
    ingredients: [
      '1 Eggplant',
      '2 Zucchinis',
      '1 Red Bell Pepper',
      '1 Yellow Bell Pepper',
      '1 Onion',
      '2 Cloves Garlic',
      '400g Canned Tomatoes',
      '1 Teaspoon Herbes de Provence',
      'Salt and Pepper'
    ],
    steps: [
      'Cut the eggplant, zucchinis, bell peppers, and onion into cubes.',
      'Heat olive oil in a large pan.',
      'Add the onion and garlic, sauté until soft.',
      'Add the eggplant and cook until browned.',
      'Add the zucchinis, bell peppers, canned tomatoes, and herbs.',
      'Simmer for about 40 minutes.',
      'Season with salt and pepper.',
      'Serve hot or cold.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c11',
      'c1',
    ],
    title: 'Penne Arrabbiata',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl: 'https://images.pexels.com/photos/12667658/pexels-'
        'photo-12667658.jpeg?cs=srgb&dl=pexels-peps-'
        'silvestro-180443212-12667658.jpg&fm=jpg&_gl='
        '1*1nmm0fq*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_'
        'ga_8JE65Q40S6*MTcyMjc4OTI5OC4yLjEuMTcyMjc4OTk0OC4wLjAuMA..',
    duration: 25,
    ingredients: [
      '200g Penne Pasta',
      '2 Tomatoes',
      '2 Garlic Cloves',
      '1 Red Chili',
      '2 Tablespoons Olive Oil',
      'Parmesan Cheese',
      'Salt and Pepper'
    ],
    steps: [
      'Cook the penne pasta according to package instructions.',
      'In a pan, heat olive oil and sauté garlic and chili.',
      'Add chopped tomatoes and cook until the sauce thickens.',
      'Mix in the cooked penne pasta and season with salt and pepper.',
      'Serve with grated Parmesan cheese.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c13',
      'c1',
    ],
    title: 'Tiramisu',
    affordability: Affordability.expensive,
    complexity: Complexity.hard,
    imageUrl: 'https://images.pexels.com/photos/7783245/pexels'
        '-photo-7783245.jpeg?cs=srgb&dl=pexels-ofir-'
        'eliav-2397652-7783245.jpg&fm=jpg&_gl=1*1c9fu7'
        'd*_ga*MTQzMDc0MTk2MC4xNzIyNj'
        'E2MTk2*_ga_8JE65Q40S6*MTcyMjc4OTI5OC4yLjEuMTcyMjc5MDA2Mi4wLjAuMA..',
    duration: 45,
    ingredients: [
      '6 Egg Yolks',
      '200g Sugar',
      '500g Mascarpone Cheese',
      '300ml Espresso',
      '200g Ladyfingers',
      'Cocoa Powder'
    ],
    steps: [
      'Whisk egg yolks with sugar until creamy.',
      'Fold in mascarpone cheese until smooth.',
      'Dip ladyfingers in espresso and layer in a dish.',
      'Spread mascarpone mixture over ladyfingers.',
      'Repeat layers and refrigerate for at least 4 hours.',
      'Dust with cocoa powder before serving.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c14',
      'c1',
    ],
    title: 'Italian Minestrone Soup',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl:
        'https://th.bing.com/th/id/R.19b381158b3f4ec82331ef3c9170b2fe?rik=vWBwMo3PpRQcvQ&pid=ImgRaw&r=0',
    duration: 40,
    ingredients: [
      '1 Onion',
      '2 Carrots',
      '2 Celery Stalks',
      '1 Potato',
      '1 Zucchini',
      '400g Tomatoes',
      '1 Liter Vegetable Broth',
      '200g Pasta',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Chop the vegetables into small pieces.',
      'In a large pot, heat olive oil and sauté onions, carrots, and celery.',
      'Add remaining vegetables and cook for 5 minutes.',
      'Add tomatoes and vegetable broth, bring to a boil.',
      'Add pasta and cook until tender.',
      'Season with salt and pepper to taste.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c14',
      'c8',
    ],
    title: 'Khichdi',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl:
        'https://images.pexels.com/photos/6363501/pexels-photo-6363501.jpeg?cs=srgb&dl=pexels-thomas-nahar-15365650-6363501.jpg&fm=jpg&_gl=1*1t9vn0d*_ga*MTQzMDc0MTk2MC4xNzIyNjE2MTk2*_ga_8JE65Q40S6*MTcyMjk2NTM0OC4zLjAuMTcyMjk2NTM0OC4wLjAuMA..',
    duration: 40,
    ingredients: [
      '1 Onion',
      '2 Carrots',
      '2 Celery Stalks',
      '1 Potato',
      '1 Zucchini',
      '400g Tomatoes',
      '1 Liter Vegetable Broth',
      '200g Pasta',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Chop the vegetables into small pieces.',
      'In a large pot, heat olive oil and sauté onions, carrots, and celery.',
      'Add remaining vegetables and cook for 5 minutes.',
      'Add tomatoes and vegetable broth, bring to a boil.',
      'Add pasta and cook until tender.',
      'Season with salt and pepper to taste.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
