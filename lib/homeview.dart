import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
   Homeview({super.key});

   List<Map<String,dynamic>> lstImages = [
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe A",'price':20},
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe B",'price':30},
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe C",'price':15},
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe D",'price':25},
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe C",'price':15},
     {'url':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG3JX1v18YamxTm4tdLeGcaDSKlNOezKShCknXjquCxpo_mRH5kHVO8hFQ0rzDGOR02o&usqp=CAU",'name':"Shoe D",'price':25},
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("browser".toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text("Woman shoes",style: TextStyle(fontSize: 15),),IconButton(onPressed: (){}, icon: Icon(Icons.expand_more))
                ],
              ),

            ],
          ),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                prefixIcon: Icon(Icons.search),
                hintText: "Search"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(

              children: [
                Text("Woman shoes",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(
                  width: 160,
                ),
                Text("Filters",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.filter_list),),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: lstImages.length,
                itemBuilder: (context, index) {
                  final img = lstImages[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            img['url'],
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          img['name'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "\$${img['price'].toString()}",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),),
                          ),
                          child: Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Buy"),
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: "Product"),
          BottomNavigationBarItem(icon: Icon(Icons.payment),label: "Pay"),
        ],
      ),
    );
  }
}