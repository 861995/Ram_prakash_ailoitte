import 'package:flutter/material.dart';
import 'package:Ram_prakash_assignment/model/drink_model.dart';

class DetailScreen extends StatelessWidget {
final DrinkElement drink;
 DetailScreen({required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details Screen')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.idDrink),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strDrink),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strAlcoholic),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strCategory),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.dateModified.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strCreativeCommonsConfirmed),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strDrinkAlternate??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strDrinkThumb),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strGlass),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIba??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strImageAttribution??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strImageSource??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient1),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient2),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient3.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient4.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient5.toString()),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient6??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient7??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strIngredient8??""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strInstructions??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strInstructionsDe??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strInstructionsEs??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strInstructionsZhHans??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strMeasure1??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strTags??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strVideo??""),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(drink.strMeasure12??""),
            ),
          ],
        ),
      ),
    );
  }
}
