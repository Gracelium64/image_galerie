import 'package:flutter/material.dart';
import 'package:image_galerie/gallery_data.dart';

class DetailScreen extends StatefulWidget {
  final GalleryItem galleryItem;
  
  const DetailScreen({super.key, required this.galleryItem});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Details',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
                 ),
                ),
               ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            Hero(
              tag: widget.galleryItem.imgPath,
              child: Image.asset(widget.galleryItem.imgPath),
              ),
            Text(
              widget.galleryItem.imgTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
             ),
            Text(widget.galleryItem.imgDate,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white
            ),
                  
           ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.galleryItem.imgDescription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white
                        ),
                       ),
                      ),
                     ],
                    ),
            ),
     ],
    ),
   ),
  );
 }
}