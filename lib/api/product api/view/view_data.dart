import 'package:all_teckstack/api/product%20api/controller/product_controlle.dart';
import 'package:all_teckstack/api/product%20api/view/view_all_details.dart';
import 'package:flutter/material.dart';

import 'image_view.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({super.key});

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {

  List<String> slider = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products data"),
      ),

      body: FutureBuilder(
          future: ProductController().productDataApi(),
          builder: (context, snapshot) {
            var productData = snapshot.data;

            return
              ListView.builder(
                itemCount: productData?.products?.length,
                itemBuilder: (context, index) {
                   return
                     Column(
                       children: [
                         imageWithIndicators(context, productData?.products![index].images?? [], 16 / 9),
                         InkWell(
                           onTap: () {
                             Navigator.push(
                                 context, MaterialPageRoute(builder: (context) => ViewAllDetails(
                               idP: "${productData?.products?[index].id}",
                               title: "${productData?.products?[index].title}",
                               brand: "${productData?.products?[index].brand}",
                               category: "${productData?.products?[index].category}",
                               description: "${productData?.products?[index].description}",
                               discountPercentage: "${productData?.products?[index].discountPercentage}",
                               images: "${productData?.products?[index].images}",
                               price: "${productData?.products?[index].price}",
                               rating: "${productData?.products?[index].rating}",
                               stock: "${productData?.products?[index].stock}",
                               thumbnail: "${productData?.products?[index].thumbnail}",

                             ),));
                           },

                           child: Column(
                             children: [

                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: NetworkImage("${productData?.products?[index].thumbnail}"),
                                 ),
                                 title: Text(productData?.products?[index].title ?? "title"),
                                 subtitle: Text(productData?.products?[index].description ?? "description"),
                                 trailing: Text("Rs"+"${productData?.products?[index].price ?? "price"}"),
                               ),
                             ],
                           ),


                         ),
                         const Divider(thickness: 1)
                       ],
                     );


                },);
          },),
    );
  }
}
