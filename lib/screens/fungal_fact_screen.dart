import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:fungal_knowledge/damage/app_colors.dart';
import 'package:fungal_knowledge/screens/detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_screen.dart';

class FungalFactScreen extends StatefulWidget {
  @override
  _FungalFactState createState() => _FungalFactState();
}

class _FungalFactState extends State<FungalFactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fungal Facts"),),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///container for header

            Container(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   " Fungal Fact",
                        //   style: GoogleFonts.poppins(
                        //       color: AppColors.lightTextColor,
                        //       fontWeight: FontWeight.w500,
                        //       fontSize: 22),
                        // ),
                        Text(
                          " Information\n About \n Fungals",
                          style: GoogleFonts.play(
                              color: AppColors.darkTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 36),
                        )
                      ],
                    ),
                  ),

                  ///Fungal Doc logo
                  Positioned(
                    child: CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset("assets/desktop_robo.png"),
                      ),
                    ),
                    right: 0,
                    top: 0,
                  )
                ],
              ),
            ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),

            ///Actionable Container
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                ],
              ),
            ),

            ///vertical spacing
            SizedBox(
              height: 16,
            ),

            ///Container for place List
            Expanded(
              child: Container(
                child: LayoutGrid(
                  columnGap: 12,
                  rowGap: 12,
                  templateColumnSizes: [
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(1),



                    ///50% columns
                  ],
                  templateRowSizes: [
                    ///1,2,3 rows
                    FlexibleTrackSize(1),
                    FlexibleTrackSize(0.6),
                    FlexibleTrackSize(1),

                    ///space
                  ],

                  children: [
                    getPlaceWidget("assets/caoitis.png").withGridPlacement(

                        ///corparis
                        rowStart: 0,
                        columnStart: 0,
                        rowSpan: 2),
                    getPlaceWidget("assets/ungium.png").withGridPlacement(

                        ///unguium///
                        rowStart: 2,
                        columnStart: 0,
                        rowSpan: 1),
                    getPlaceWidget("assets/pedia.jpg").withGridPlacement(

                        ///pedis
                        rowStart: 0,
                        columnStart: 1,
                        rowSpan: 1),
                    getPlaceWidget("assets/versicolor22.jpg").withGridPlacement(

                        ///versicolaars
                        rowStart: 1,
                        columnStart: 1,
                        rowSpan: 2),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getPlaceWidget(imagePath) {
    return GestureDetector(
      onTap: (){

        ///next Screen
        Navigator.push(context, MaterialPageRoute(
          ///send image path
            builder: (context) => DetailScreen(imagePath)


        ));

      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.lightRedColor),
          child: Stack(
            children: [
              Hero(
                ///hero animation
                tag: imagePath,
                child: ClipRRect(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\t Read",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),



                  ],
                ),
              )
            ],
          )),
    );
  }
}
