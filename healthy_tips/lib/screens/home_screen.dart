import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const healthTipsList = [
  {
    "tip": "Use a suitable antifungal medication prescribed by a doctor",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "keep the affected area clean and dry as much as possible",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Wear loose-fitting clothing items and footwear that allow your skin to breathe especially in hot and humid climates",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Practice good hygiene daily",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Avoid sharing articles of clothing, towels or any other personal items",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Dry off properly after activities like showering,bathing or swimming using a clean dry towel",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Wear sandals or flip-flops in locker rooms instead of walking barefooted",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Wipe down surfaces that are likely to be shared by other people such as gym equipment or mats",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Stay away from animals that have signs of being infected by a fungal infection, such as missing fur or constant itching",
    "batchColor": Color(0xff8ee1e3),
  },
  {
    "tip": "Get those who live together with you checked and treated for fungal infections",
    "batchColor": Color(0xff8ee1e3),
  },

];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF30EFB3),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 1550,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "Healthy Tips For Fungal",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),

                      ),
                      SizedBox(
                        height: 50,
                      ),
                      tipList(healthTipsList[0]),
                      tipList(healthTipsList[1]),
                      tipList(healthTipsList[2]),
                      tipList(healthTipsList[3]),
                      tipList(healthTipsList[4]),
                      tipList(healthTipsList[5]),
                      tipList(healthTipsList[6]),
                      tipList(healthTipsList[7]),
                      tipList(healthTipsList[8]),
                      tipList(healthTipsList[9]),

                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          "@Powerd By Fungal Doc",

                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class tipList extends StatelessWidget {
  final tipHint;

  tipList(this.tipHint);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5 - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: tipHint["batchColor"],
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  tipHint["tip"],
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
