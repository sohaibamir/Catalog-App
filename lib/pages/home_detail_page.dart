import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.red800.bold.xl4.make(),
            AddToCart(
              catalog: catalog,
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image).py8())
                .h32(context),
            Expanded(
                child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      width: context.screenWidth,
                      color: context.cardColor,
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.xl
                              .color(context.theme.shadowColor)
                              .make(),
                          5.heightBox,
                          "Et sed sit est lorem sit diam at labore. Et sea eirmod ea ea. Ea diam clita eos ipsum justo dolor dolores eos gubergren. Kasd erat sanctus sadipscing voluptua eos gubergren labore. Amet eirmod ea et dolores lorem sadipscing elitr. At lorem diam sed duo nonumy consetetur, dolores magna nonumy."
                              .text
                              .xs
                              .color(context.theme.shadowColor)
                              .make()
                              .p8()
                        ],
                      ).py64(),
                    )))
          ],
        ),
      ),
    );
  }
}
