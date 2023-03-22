import 'package:flutter/material.dart';
import 'package:groceryshopapp/model/cart_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48,),
            // good morning
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Good Morning"),
            ),

            SizedBox(height: 4,),
      
            // Let's order fresh items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Let's order fresh food items",
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold                
              ),
                ),
              
            ),

            SizedBox(height: 24.0,),
      
            // divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                thickness: 4,
              ),
            ),
      
            //fresh items + grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "fresh Items",
                style: TextStyle(fontSize: 16),
                ),
            ),

            Expanded(
              child: Consumer<CartModel>(
                builder: (context, value, child){
              return GridView.builder(
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder:(context, index) {
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                },
              );
                },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}