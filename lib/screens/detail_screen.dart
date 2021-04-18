import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fungal_knowledge/damage/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final imagePath;

  DetailScreen(this.imagePath);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///image and back button
              Container(
                child: Stack(
                  children: [
                    ///information about fungal
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5 + 16,
                          bottom: 20,
                          right: 32,
                          left: 32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Knowledge Of Fungals",
                            style: GoogleFonts.poppins(
                                color: AppColors.lightGreenColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ), //

                    ///image container hero
                    Container(
                      child: Hero(
                        tag: widget.imagePath,
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: ClipRRect(
                            child: Image.asset(
                              widget.imagePath,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60),
                              bottomLeft: Radius.circular(60),
                            ),
                          ),
                        ),
                      ),
                    ),

                    ///back button

                    Positioned(
                      top: 40,
                      left: 24,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),

              ///spacing
              SizedBox(
                height: 5,
              ),

              ///about text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Tinea Corporis",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              ///about details fungals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "This skin infection is characterized by a ring-like rash on the body or the face. "
                  "This condition frequently occurs in children but is seen in all ages. "
                  "It is more likely to occur in warmer climates. "
                  "Symptoms of this disease may include a red circular lesion with raised edges appearing on the skin,"
                  " middle of the lesion becoming less red as it grows and itching of the affected area."
                  "\n"
                  "\n"
                  "This condition can be avoided by keeping clean, "
                  "staying cool and dry, avoiding infected animals and not sharing personal items.",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////////

              SizedBox(
                height: 22,
              ),

              ///about text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Tinea Pedis",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              ///about details fungals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "This disease mostly affects teenagers and adults. It is caused by many things including sweating, "
                  "not drying the feet well after swimming or bathing, wearing tight socks and shoes and warm weather conditions."
                  " Symptoms of this disease may include whitening of the skin between the toes,"
                  " scaling of the feet, itchy rash on feet, blisters on feet.  "
                  "\n"
                  "\n"
                  "This condition can be avoided by keeping your feet dry (Especially between your toes), "
                  "changing socks regularly, wearing well-ventilated shoes, alternating pairs of shoes, protecting your feet in public places,"
                  " treating your feet and not sharing shoes. ",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////

              SizedBox(
                height: 22,
              ),

              ///about text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Tinea Capitis",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              ///about details fungals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Scalp Ringworm is highly infectious, especially among children."
                  " It occurs mainly in children between the ages 2 and 10. "
                  "Symptoms of this disease may include red, scaly rash on the scalp, "
                  "itching and hair loss of the scalp and rash everywhere else on body."
                  " In some cases, ringworm of the scalp causes kerion – a painful inflammation of the scalp. "
                  "\n"
                  "\n"
                  "This condition can be avoided by shampooing regularly, "
                  "keeping clean, avoiding infected animals, and not sharing personal items.",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////

              /////////////////////////////////////////////////////////////////////////

              SizedBox(
                height: 22,
              ),

              ///about text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Tinea Unguium",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              ///about details fungals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "This is an infection which occurs on the finger or toenail, characterized by a thickened, "
                  "deformed nail. This condition is mostly found in toenails than fingernails and affects adolescents and adults more than younger children."
                  " Symptoms of this disease may include thickening of the ends of the nails and yellowish color to the nails."
                  "\n"
                  "\n"
                  "This condition can be avoided by washing and drying feet well, wearing well ventilated footwear, not sharing shoes and socks with others, "
                  "preventing nail injuries and, going to a salon which uses sterile equipment if getting a manicure or pedicure.",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              /////////////////////////////////////////////////////////////////////////

              /////////////////////////////////////////////////////////////////////////

              SizedBox(
                height: 22,
              ),

              ///about text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Tinea Versicolor",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              ///about details fungals
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "This infection interferes with the normal pigmentation of the skin resulting in small, "
                  "discolored patches which maybe lighter or darker in color than the surrounding skin."
                  " It occurs mostly in teens and young adults especially in warm, humid weather."
                  " Symptoms of this disease may include patches of skin discoloration, mild itching and scaling of the skin."
                  "\n"
                  "\n"
                  "There is no proven way to avoid this condition but using Antifungal creams,"
                  " lotions and shampoos that is prescribed by your doctor can help treat it and prevent it from occurring again.",
                  style: GoogleFonts.poppins(
                      color: AppColors.darkTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 18,
              ),

              /////////////////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
