import 'package:flutter/material.dart';
import 'package:image_galerie/detail_screen.dart';
import 'package:image_galerie/gallery_data.dart';

class ImgPage extends StatelessWidget {
  const ImgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: buildImages(context),
    );
  }

  List<Widget> buildImages(BuildContext context) {
    List<Widget> myWidgets = [];

    for (GalleryItem galleryItem in galleryData) {
      myWidgets.add(
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(
                  galleryItem: galleryItem,
                );
               },
              ),
             );
            },
          child: Card(
            color: Color.fromARGB(0, 0, 0, 0),
            child: Column(
              children: [
                Expanded(
                  child: Hero(
                    tag: galleryItem.imgPath,
                    child: Image.asset(
                      galleryItem.imgPath,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
            ),
           ),
          ),
                Text(galleryItem.imgTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
         ),
        ),
       ],
      ),
     ),
    ),
   );
  }
  return myWidgets;
 }
}