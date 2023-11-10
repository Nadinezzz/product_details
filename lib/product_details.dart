import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:input_quantity/input_quantity.dart';

class ProductDetails extends StatelessWidget {
  static const String routeName = "ProductDetails";

  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 110.0),
          child: Text("Product Details",
              style: GoogleFonts.poppins(
                  color: const Color(0xff06004F),
                  fontSize: 20,
                  fontWeight: FontWeight.w500)),
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            textDirection: TextDirection.rtl,
            color: Color(0xff004182),
            size: 26,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(Icons.shopping_cart_outlined,
              textDirection: TextDirection.rtl,
              color: Color(0xff004182),
              size: 26)
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 18.0, right: 10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xff004182), width: 0.7),
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            "assets/images/airjordan.png",
                            width: 368,
                            height: 280,
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(left: 330, top: 12),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_outlined),
                      color: const Color(0xff004182),
                      iconSize: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nike Air Jordon",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff06004F),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "EGP 3,500",
                    style: GoogleFonts.poppins(
                        color: const Color(0xff06004F),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff004182)),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        "3,230 Sold",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: const Color(0xff06004F),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                  Row(children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.8 (7,500)",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: const Color(0xff06004F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400))
                  ]),
                  InputQty.int(
                      onQtyChanged: (val) {
                        print(val.runType);
                      },
                      decoration: const QtyDecorationProps(
                          borderShape: BorderShapeBtn.circle,
                          width: 20,
                          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          fillColor: Color(0xff06004F),
                          iconColor: Colors.white))
                ],
              ),
              Text(
                "Description",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: const Color(0xff06004F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Text(
                  "Nike is a multinational corporation that designs,"
                  " develops, and sells athletic footwear ,apparel, and"
                  " accessories......Read More ",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff06004F),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Size",
                style: GoogleFonts.poppins(
                    color: const Color(0xff06004F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                padding: const EdgeInsets.only(left: 6),
                child: const Text("38   39   40  41   42",
                    style: TextStyle(fontSize: 17, color: Color(0xff06004F))),
              ),
              const SizedBox(height: 8),
              Text(
                "Color",
                style: GoogleFonts.poppins(
                    color: const Color(0xff06004F),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Row(children: [
                  Icon(
                    Icons.circle,
                    color: Color(0xff2F2929),
                    size: 32,
                  ),
                  Icon(Icons.circle, color: Color(0xffBC3018), size: 32),
                  Icon(Icons.circle, color: Color(0xff0973DD), size: 32),
                  Icon(Icons.circle, color: Color(0xff02B935), size: 32),
                  Icon(Icons.circle, color: Color(0xffFF645A), size: 32)
                ]),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Total price",
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(130, 6, 0, 79),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  "EGP 3,500",
                  style: GoogleFonts.poppins(
                      color: const Color(0xff06006F),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(width: 50.0),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xff004182),
                      shape: const StadiumBorder()),
                  child: Row(children: [
                    const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    Text("    Add to cart    ",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500))
                  ]))
            ],
          ),
        ],
      ),
    );
  }
}
