import 'package:flutter/material.dart';
import 'package:crud_api_project01/add_products.dart';


class ProductListScreen extends StatefulWidget {
  
  const ProductListScreen({super.key});
  @override 
  State<ProductListScreen> createState() => _ProductListScreenState();
  
}
class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
      ),
          body: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildProductItem();
          },
            separatorBuilder: (_, __)=> const Divider(),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=> const AddProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
  Widget _buildProductItem() {
    return ListTile(
      leading: Image.network('https://i.pinimg.com/736x/61/13/d7/6113d7edb5ad671598dbe59eb99afc90.jpg',
        height: 60,
        width: 60,),
      title:  Text("Product Name"),
      subtitle: Wrap(
        spacing: 4,
        children: [
          Text("Unit Price: 108"),
          Text("Quantity: 100"),
          Text("Total Price: 208")
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.delete_outline_sharp),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}