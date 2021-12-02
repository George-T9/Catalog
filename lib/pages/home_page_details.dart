import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageDetails extends StatelessWidget {
  final Item catalog;

  const HomePageDetails({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 30, 32, 30),
              child: Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
              child: VxArc(
            height: 10,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
            child: Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    catalog.name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(catalog.desc),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
