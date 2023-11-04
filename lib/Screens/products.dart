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
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
    ProductClass("مزهرية", "pic", "مزهرية ملونه وحلوه كتير", 55.5, "مزهريات"),
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
      backgroundColor: Color(0xFFFDF7FA),
      appBar: AppBar(

        title: const Text('Products'),
        centerTitle: true,
        backgroundColor: Color(0xFF60435F),
        elevation: 1,
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.search)),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body:
        GridView.builder(
          itemCount: products.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) =>
                Card(
                color: Color(0xFF60435F),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(

                    mainAxisSize: MainAxisSize.min,

                      children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(8.0),

                          child: const Image(

                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Chinese_vase.jpg/220px-Chinese_vase.jpg',


                              ),


                            height: 134,

                          ),
                        ),
                        SizedBox(height: 5)
                        ,
                        Text(products[index].productName, style: TextStyle(
                          fontSize: 15
                        ),),
                        Text('${products[index].productPrice.toString()} Shekel',
                        style: TextStyle(
                          fontSize: 9
                        ),)


                      ]
                  ),
                ),
              ),
            ),

    );
  }
}
