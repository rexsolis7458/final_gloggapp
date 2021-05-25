import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          alignment: Alignment.bottomLeft,
          child: Text(
            "Publish Recipe",
          ),
        )
        addRecipe('Photos and videos'),

        Container(
          alignment: Alignment.bottomLeft,
          child: IconButton(
            iconSize: 100.0,
            icon: Icon(Icons.add_box_outlined),
            onPressed: () => pickImage(),
          )
        ),
        addRecipe('Name'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: name,
            decoration: textFieldRoundInputDecoration('Enter Recipe Name...'),
          ),
        ),
        addRecipe('Ingredients'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: ingredients.lenght,
            itemBuilder: (context, index) {
              return AddIngredients(
                ingredients[index], amount[index]
              );
            },
          ),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                ingredients.add(TextEditingController());
                amount.add(TextEditingController());
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("add ingredient"),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)
            ),
          ),
        ),
        addRecipe('Recipe'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: recipe.length,
              itemBuilder: (context, index) {
                return AddRecipe(recipe[index]);
              },
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                recipe.add(TextEditingController());
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Add Recipe",
              ),
            ),
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
          ),
        ),
        Container(alignment: Alignment.bottomRight,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: RaisedButton(
          onPressed: () {
            createFood(context);
          },
          child: Text(
            'Submit',
          ),
          color: Colors.indigo[300],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0)
          ),
        ),),
        SizedBox(height: 16.0,),
      ],
    ),),);
  }
}
