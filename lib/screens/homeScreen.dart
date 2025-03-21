import 'package:flutter/material.dart';
import 'package:shoppingapp/screens/productdetailscreen.dart';

class Homescreen extends StatelessWidget {
  List<String> tabs = ["All","category","top","Recomended"];

  @override
  Widget build(BuildContext context) {

Widget spaceh = const SizedBox(height: 20,);

    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child:
        Padding(padding: 
        EdgeInsets.only(left: 15,right: 15,top: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.red,),
                          border: InputBorder.none,
                          hintText: 'Find products'
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                         boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.05),
                            blurRadius: 2,
                            spreadRadius: 1,
                          )
                        ]
                      ),
                      child: Center(
                        child: Icon(
                          Icons.notifications,color: Colors.red,
                        ),
                      ),
                    )
                ],
              ),
              spaceh,
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xFFFFF0DD),
                  borderRadius: BorderRadius.circular(20),
                
                ),
               
                
              ),
              spaceh,
              SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,

                  itemBuilder:(context,index){
                    return FittedBox(
                      child: Container(
                        height:40 ,
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.only(left: 15,right: 15),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20),

                        ),
                            child: Center(
                              child: FittedBox(
                                child: Text(tabs[index],
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                              ),
                            ),
                      ),
                    );
                  } ,
                  ),
              ),

              spaceh,
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    imageContainer(context,"assets/image1.jpg","adidas","49.99"),
                    imageContainer(context,"assets/image2.jpg","nike","48.99"),
                    imageContainer(context,"assets/image3.jpg","alen solly","30.00"),
                    imageContainer(context,"assets/image4.jpg","us polo","35.99"),
                  ],
                ),
                
              ),
              spaceh,
              Align(
                alignment: Alignment.topLeft,
                child: Text("Newest Product",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
              ),
              spaceh,
               SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    imageContainer(context,"assets/image5.jpg","adidas","49.99",showfavorite: false),
                    imageContainer(context,"assets/image7.jpg","nike","48.99",showfavorite: false),
                    imageContainer(context,"assets/image3.jpg","alen solly","30.00",showfavorite: false),
                    imageContainer(context,"assets/image4.jpg","us polo","35.99",showfavorite: false),
                  ],
                ),
              ),
               SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  
                  children: [
                    imageContainer(context,"assets/image6.jpg","adidas","49.99",showfavorite: false),
                    imageContainer(context,"assets/image2.jpg","nike","48.99",showfavorite: false),
                    imageContainer(context,"assets/image4.jpg","alen solly","30.00",showfavorite: false),
                    imageContainer(context,"assets/image7.jpg","us polo","35.99",showfavorite: false),
                  ],
                ),
              ),
          ],
        ),
        ) 
        ),
      )
    );
  }
//
 Widget imageContainer(BuildContext context,String img, String name, String price,{bool showfavorite = true}) {
  return GestureDetector(
    onTap: (){
      Navigator.push( context, // Ensure `context` is accessible
        MaterialPageRoute(
          builder: (context) => ProductDetailScreen(image: img, name: name, price: price),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
        children: [
          Stack(
            children: [
              // Image Container with Rounded Borders
              Container(
                height: 190,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    if(showfavorite)
              // Favorite Icon Positioned on Top Right
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.7), // Semi-transparent background
                  child: Icon(
                    Icons.favorite, // Favorite icon (outlined)
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
    
          SizedBox(height: 8), // Spacing between image and text
    
          // Name of the Image
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
    
          // Price of the Image
          Text(
            "\$ $price", // Add currency symbol
            style: TextStyle(
              fontSize: 14,
              color: Colors.green, // Price in green color
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

}