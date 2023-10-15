import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class ViewAllDetails extends StatefulWidget {
  final String idP;
  final String title;
  final String description;
  final String price;
  final String discountPercentage;
  final String rating;
  final String stock;
  final String brand;
  final String category;
  final String thumbnail;
  final String images;

  const ViewAllDetails(
      {super.key,
        required this.idP,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images
      });

  @override
  State<ViewAllDetails> createState() => _ViewAllDetailsState();
}

class _ViewAllDetailsState extends State<ViewAllDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View All Details"),
      ),
      body: ListView(
        children: [
              SizedBox(
                child: Image.network(widget.thumbnail),
              ),
              Row(children: [
                Text(widget.title),
                Text(widget.price),
                Text(widget.discountPercentage),
                Text(widget.stock),
              ],),

              Text(widget.category),
              Text(widget.brand),
        ],
      ),
    );
  }
}
