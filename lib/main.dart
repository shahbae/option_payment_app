import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(PaymentApps());
}

//primary DC6950
//low FFCFC5
class PaymentApps extends StatefulWidget {
  @override
  _PaymentAppsState createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget buttonCheckout() {
      return Column(
        children: [
          Container(
            width: 311,
            height: 51.23,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffDC6950),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(71),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Checkout Now",
                style: buttonTitleStyle,
              ),
            ),
          )
        ],
      );
    }

    Widget option(int index, String title, String subTitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color:
                    selectedIndex == index ? Color(0xffDC6950) : Colors.white38,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              selectedIndex == index
                  ? Image.asset(
                      "assets/ellips.png",
                      width: 18,
                      height: 18,
                    )
                  : Image.asset(
                      "assets/ellipstwo.png",
                      width: 18,
                      height: 18,
                    ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: planTitleStyle,
                  ),
                  Text(
                    subTitle,
                    style: descTitleStyle,
                  ),
                ],
              ),
              Text(
                price,
                style: priceTitleStyle,
              )
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 0.0, left: 32.0, right: 32.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/naikroket.png",
                width: 180.0,
                height: 180.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                // right: 86.0,
                // left: 90.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Upgrade to",
                    style: titleStyle,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Pro",
                    style: titleProStyle,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Go unlock all features and \nbuild your self",
              style: subTitleStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff04112f),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            header(),
            option(
                1, "Low budget but worth it", "worth it for your self", "\$40"),
            option(
                2, "Medium budget worth it", "worth it for your self", "\$80"),
            option(3, "High budget very worth it", "worth it for your self",
                "\$100"),
            SizedBox(
              height: 50,
            ),
            buttonCheckout(),
            // SizedBox(
            //   height: 50,
            // )
          ],
        ),
      ),
    );
  }
}
