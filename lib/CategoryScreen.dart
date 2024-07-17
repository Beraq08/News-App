import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories =
        newsItems.map((news) => news.category).toSet().toList();

    return Scaffold(
      backgroundColor: Color.fromARGB(60, 197, 65, 255),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffef00),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Categories",
          style: TextStyle(
            fontFamily: "Oswald",
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff212435),
            size: 24,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            String category = categories[index];
            NewsItem newsItem =
                newsItems.firstWhere((news) => news.category == category);
            return GestureDetector(
              onTap: () {
                Navigator.pop(context, category); // Pass selected category back
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60.0),
                    child: Image(
                      image: NetworkImage(newsItem.imageUrl),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xc37cb160),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(color: Color(0xffffef00), width: 4),
                    ),
                  ),
                  Text(
                    category,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xffffef00),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
