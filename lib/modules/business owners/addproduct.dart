import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/business%20owners/ProductDetailsscreen.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final _productNameController = TextEditingController();
  final _productSizeController = TextEditingController();
  final _productPriceController = TextEditingController();

  @override
  void dispose() {
    _productNameController.dispose();
    _productSizeController.dispose();
    _productPriceController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductScreen(
                  productName: _productNameController.text,
                  productSize: _productSizeController.text,
                  productPrice: double.parse(_productPriceController.text),
                )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _productNameController,
                decoration: InputDecoration(
                  labelText: 'Product Name',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _productSizeController,
                decoration: InputDecoration(
                  labelText: 'Product Size',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a product size';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _productPriceController,
                decoration: InputDecoration(
                  labelText: 'Product Price',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter a product price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
