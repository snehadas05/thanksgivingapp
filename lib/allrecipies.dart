import 'package:flutter/material.dart';

class Recipe {
  String name;
  String imageurl;
  String ingredients;
  String instructions;
  Recipe(this.name, this.imageurl, this.ingredients, this.instructions);
  String getName() {
    return name;
  }

  String getImage() {
    return imageurl;
  }

  static List<Recipe> turkeyrecipes = [
    Recipe(
        'Classic Thanksgiving Turkey',
        'assets/turkey.jpeg',
        '12-18 pound turkey, 2 tablespoons dried parsley, 2 tablespoons ground dried rosemary, 2 tablespoons rubbed dried sage, 2 tablespoons dried thyme leaves, 1 tablespoon lemon-pepper seasoning, 1 tablespoon salt',
        'Preheat the oven to 350 degrees F. Melt the butter in a small saucepan. Add the zest and juice of the lemon and 1 teaspoon of thyme leaves to the butter mixture. Set aside. Take the giblets out of the turkey and wash the turkey inside and out. Remove any excess fat and leftover pinfeathers and pat the outside dry. Place the turkey in a large roasting pan. Liberally salt and pepper the inside of the turkey cavity. Stuff the cavity with the bunch of thyme, halved lemon, quartered onion, and the garlic. Brush the outside of the turkey with the butter mixture and sprinkle with salt and pepper. Tie the legs together with string and tuck the wing tips under the body of the turkey. Roast the turkey about 2 1/2 hours, or until the juices run clear when you cut between the leg and the thigh. Remove the turkey to a cutting board and cover with aluminum foil; let rest for 20 minutes. Slice the turkey and serve.'),
    Recipe(
        'Turducken',
        'assets/turducken.webp',
        '2 3/4 cups bread stuffing, 2 cups cornbread stuffing, 1/2 cup whole berry cranberry sauce, 1/4 cup coarsely chopped pecans, 2 ounces unsalted butter, room temperature, 3 cloves garlic, quartered, 6 fresh sage leaves, 2 tablespoons fresh thyme leaves, 1 (10- to 12-pound) turkey, deboned, 1 tablespoon browning sauce, 1 tablespoon olive oil, salt, black pepper, 1 duck, deboned, 1 chicken, deboned',
        'Place 2 1/4 cups of the bread stuffing in a bowl. Place 1 1/2 cups of the cornbread stuffing in another bowl. Place the remaining 1/2 cup of bread stuffing in a third bowl and add the remaining 1/2 cup of the cornbread stuffing. Add the whole berry cranberry sauce and pecans and toss gently to combine. You should now have 3 separate bowls of stuffings. In a food processor fitted with the metal blade, combine the butter, garlic, sage, and thyme until the herbs are finely chopped. Gently run your hand under the turkey skin to make sort of a pocket, but do not separate the skin completely from the meat. Distribute the herb butter mixture evenly under the skin. Rub the skin with the browning sauce, then the olive oil. Sprinkle generously with kosher salt and freshly ground pepper. Preheat the oven to 300 F. Flip the deboned turkey over so it is open and skin-side down. Sprinkle with salt and pepper. Spread bread stuffing evenly over the turkey cavity. Place the duck on top of the bread stuffing, skin-side down. Spread the cranberry nut stuffing on top of the open duck cavity. Top with the chicken, skin-side down. Spread cornbread stuffing on top of the open chicken cavity. Skewer the back of the chicken closed. Bring up the sides of the duck to cover the chicken. Skewer the back of the duck closed. Repeat the process with the turkey. Place the turducken in a heavy roaster. Roast 3 to 4 hours, or until a meat thermometer inserted in the very center of the chicken stuffing reaches 165 F.'),
    Recipe(
        'Tofurkey',
        'assets/Tofurkey.jpeg',
        '3 tablespoons (45 ml) olive oil, 2 tablespoons (30 ml) soy sauce, 2 teaspoons dried poultry or Italian seasoning, 1 medium sweet potato, peeled and chopped, 1-2 carrots, peeled and chopped, 3 tablespoons (35 grams) flour, 2 cups (500 ml) vegetable broth',
        'Prepare the baste in a small bowl. Mix together olive oil, soy sauce, maple syrup, minced garlic, and herbs. If cooking vegetables, toss them with 3 tablespoons of baste. Arrange vegetables in your baking dish. Put a piece of parchment paper in the center of your baking dish. Add the Tofurky Roast and cover with half of the baste. Cook for 1 hour and 20 minutes. Check for doneness after 1 hour. Once the vegetables are almost tender and the Tofurky is golden-brown, pour the remaining baste over the Tofurky and cook, uncovered, for another 10-15 minutes. Cook until the vegetables are tender and the Tofurky Roast reaches an internal temperature of 165°F')
  ];
  static List<Recipe> dessertrecipes = [
    Recipe(
        'Apple Pie',
        'assets/applepie.jpeg',
        'crust, 6 cups thinly sliced, peeled apples (6 medium), 3/4 cup sugar, 2 tablespoons all-purpose flour, 3/4 teaspoon ground cinnamon, , 1/4teaspoon salt , 1/8 easpoon ground nutmeg, 1 tablespoon lemon juice ',
        'Heat oven to 425°F. Place 1 pie crust in ungreased 9-inch glass pie plate. Press firmly against side and bottom. In large bowl, gently mix filling ingredients; spoon into crust-lined pie plate. Top with second crust. Wrap excess top crust under bottom crust edge, pressing edges together to seal; flute. Cut slits or shapes in several places in top crust. Bake 40 to 45 minutes or until apples are tender and crust is golden brown. Cover edge of crust with 2- to 3-inch wide strips of foil after first 15 to 20 minutes of baking to prevent excessive browning. Cool on cooling rack at least 2 hours before serving.'),
    Recipe(
        'Pumpkin Pie',
        'assets/pumpkinpie.jpeg',
        '1 (15 ounce) can pumpkin puree, 1 (14 ounce) can EAGLE BRAND® Sweetened Condensed Milk, 2 large eggs, 1 teaspoon ground cinnamon, ½ teaspoon ground ginger, ½ teaspoon ground nutmeg, ½ teaspoon salt, 1 (9 inch) unbaked pie crust',
        'Preheat the oven to 425 degrees F (220 degrees C). Whisk pumpkin puree, condensed milk, eggs, cinnamon, ginger, nutmeg, and salt together in a medium bowl until smooth. Pour into crust. Bake in the preheated oven for 15 minutes. Reduce oven temperature to 350 degrees F (175 degrees C) and continue baking until a knife inserted 1 inch from the crust comes out clean, 35 to 40 minutes.'),
    Recipe(
        'Pecan Pie',
        'assets/PecanPie.jpeg',
        '1 cup Corn Syrup, 3 eggs, 1 cup granulated sugar 2 tablespoons butter, melted, 1 teaspoon pure vanilla extract, 1/2 cups (6 ounces) coarsely chopped pecans 1 (9-inch) unbaked OR frozen deep-dish pie crust',
        'Preheat oven to 350°F. corn Syrup, eggs, sugar, butter and vanilla using a spoon or a rubber spatula. Mix Karo® Light Corn Syrup, eggs, sugar, butter and vanilla using a spoon or a rubber spatula. Pour the mixture into pie crust. Bake on center rack of oven for 60 to 70 minutes.')
  ];
  static List<Recipe> drinkrecipes = [
    Recipe(
        'Hot Chocolate',
        'assets/hotchoc.webp',
        '2 tablespoons unsweetened cocoa powder, 1 to 2 tablespoons sugar (depending on how sweet you like it), Pinch of salt, 1 cup milk or any combination of milk, half-and-half, or cream, ¼ teaspoon vanilla extract',
        'Whisk together the cocoa, sugar, salt, and about 2 tablespoons milk in a small saucepan over medium-low heat until cocoa and sugar are dissolved. Whisk in the rest of the milk and heat it over medium heat, whisking occasionally, until it is hot. Stir in the vanilla and serve.'),
    Recipe(
        'Pumpkin Spice Latte',
        'assets/Pumpkin-Spice-Latte-Tasty-1200.jpeg',
        'Coffee, milk, pumpkin puree, sugar, pumpkin pie spices, and vanilla extract',
        'Start by heating the milk, pumpkin puree, sugar, pumpkin pie spices, and vanilla extract on the stove. Then mix the pumpkin spice milk with the strong coffee'),
    Recipe(
        'Punch',
        'assets/download.jpeg',
        'Hawaiian Punch, Pineapple Juice, Ginger Ale',
        'Mix all drinks together')
  ];
}
