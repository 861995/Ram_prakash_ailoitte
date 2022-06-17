import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Ram_prakash_assignment/repository/http_service.dart';
import 'package:Ram_prakash_assignment/screens/details_page.dart';

import '../model/drink_model.dart';


class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {


 final HttpService httpService = HttpService();

  Drink? drinks;


 late List<DrinkElement>? _foundUsers = [];

 @override
 initState() {
   super.initState();
   if (drinks != null) {
     _foundUsers = drinks as List<DrinkElement>;
   }
   httpService.getPost();

 }

 void _runFilter(String enteredKeyword)async {
   List<DrinkElement>? results = [];
   if (enteredKeyword.isEmpty) {
     results =drinks as List<DrinkElement>?;
   } else {
   results = drinks?.drinks.where((idDrink) => "idDrink".toLowerCase().contains(enteredKeyword.toLowerCase())).toList();//.where((idDrink) => "strDrink".toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
   }

   // Refresh the UI
   setState(() {
     _foundUsers = results!;
   });
 }


 @override
  Widget build(BuildContext context) {
     drinks  = Provider.of<HttpService>(context, listen: false).drinkModel;

   if (drinks != null) {
     _foundUsers = drinks as List<DrinkElement>;
   }

   return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('List Screen')),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => _runFilter(value),
            decoration: const InputDecoration(
                labelText: 'Search', suffixIcon: Icon(Icons.search)),
          ),
         _foundUsers!= null? FutureBuilder(
            future: httpService.getPost(),

          builder: (context, snapshot  ){
            if(snapshot.data != null) {
              Drink posts = snapshot.data as Drink ;

              return Expanded(
                child: ListView.builder(
                      itemCount: posts.drinks.length,
                        itemBuilder: (BuildContext context,int index)
                        { return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailScreen(drink: posts.drinks![index],)),
                          );
                          },
                            child: Container( decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green.shade300,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [Text('Drink ID: ',style: TextStyle(fontWeight: FontWeight.bold),), Text(posts!.drinks[index].idDrink),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [Text('Drink Name: ',style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text(posts!.drinks[index].strDrink),
                                      ],
                                    ),
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [Text('Category : ',style: TextStyle(fontWeight: FontWeight.bold),),
                                        Expanded(child: Text(posts!.drinks[index].strCategory)),
                                      ],
                                    ),
                                    SizedBox(height: 10,),

                                    Row(
                                      children: [
                                        Text('Alcoholic : ',style: TextStyle(fontWeight: FontWeight.bold),),
                                        Expanded(child: Text(posts!.drinks[index].strAlcoholic)),
                                      ],
                                    ),
                                    SizedBox(height: 10,),

                                  ],
                                ),
                              ),

                            ),
                          ),
                        );

                        }

                    ),
              );

            }

            return Center(child: CircularProgressIndicator());

          },
          ) : const Text(
            'No results found',
            style: TextStyle(fontSize: 24),
          ),
        ],
      )
    );
  }
}
