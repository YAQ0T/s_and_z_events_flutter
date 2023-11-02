import 'package:flutter/material.dart';
import 'package:s_and_z_events/Product/Product_class.dart';
import 'package:grouped_list/grouped_list.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List products = [
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "1مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDCFF3),
      appBar: AppBar(

        title: const Text('Products'),
        centerTitle: true,
        backgroundColor: Color(0xffDE89BE),
        elevation: 1,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body:  ListView.builder(
        itemBuilder: (context, index)=>Text('${products[index].productName}    ${products[index]. productInfo} ${products[index].productPrice}'),
        itemCount: products.length,
      )
    );
  }
}
