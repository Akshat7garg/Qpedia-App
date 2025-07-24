import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qpedia/Pages/LandingScreen.dart';
import 'package:qpedia/Pages/PDFViewerQpedia.dart';

class UniversitiesPage extends StatefulWidget {
  final String comingFrom;
  const UniversitiesPage({super.key, required this.comingFrom});

  @override
  State<UniversitiesPage> createState() => _UniversitiesPageState();
}

class _UniversitiesPageState extends State<UniversitiesPage> {
  Map<String, dynamic> DropDownpdfPathsPapers = {
    "Engineering Mathematics-I": {
      "2022-2023": {
        "First Semester": "/PDFS/Maths1-sem1-22-23.pdf",
        "Second Semester": "/html/notfound.html",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Maths1-sem1.pdf",
        "Second Semester": "/html/notfound.html",
      },
    },
    "Engineering Mathematics-II": {
      "2022-2023": {
        "First Semester": "/html/notfound.html",
        "Second Semester": "/PDFS/Maths2-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/html/notfound.html",
        "Second Semester": "/PDFS/Maths2-sem2.pdf",
      },
    },
    "Engineering Physics": {
      "2022-2023": {
        "First Semester": "/PDFS/Physics-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Physics-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Physics-sem1.pdf",
        "Second Semester": "/PDFS/Physics-sem2.pdf",
      },
    },
    "Electronics Engineering": {
      "2022-2023": {
        "First Semester": "/PDFS/Electronics-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Electronics-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Electronics-sem1.pdf",
        "Second Semester": "/PDFS/Electronics-sem2.pdf",
      },
    },
    "Electrical Engineering": {
      "2022-2023": {
        "First Semester": "/PDFS/Electrical-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Electrical-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Electrical-sem1.pdf",
        "Second Semester": "/PDFS/Electrical-sem2.pdf",
      },
    },
    "Mechanical Engineering": {
      "2022-2023": {
        "First Semester": "/PDFS/Mechanical-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Mechanical-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Mechanical-sem1.pdf",
        "Second Semester": "/PDFS/Mechanical-sem2.pdf",
      },
    },
    "Programming for problem solving": {
      "2022-2023": {
        "First Semester": "/PDFS/Pps-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Pps-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Pps-sem1.pdf",
        "Second Semester": "/PDFS/Pps-sem2.pdf",
      },
    },
    "Softskill": {
      "2022-2023": {
        "First Semester": "/PDFS/Softskill-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Softskills-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/PDFS/Softskill-sem1.pdf",
        "Second Semester": "/PDFS/Softskill-sem2.pdf",
      },
    },
    "Environment and Ecology": {
      "2022-2023": {
        "First Semester": "/PDFS/Evs-sem1-22-23.pdf",
        "Second Semester": "/PDFS/Evs-sem2-22-23.pdf",
      },
      "2021-2022": {
        "First Semester": "/html/notfound.html",
        "Second Semester": "/html/notfound.html",
      },
    },
  };
  Map<String, dynamic> dropDownpdfPaths = {
    "Engineering Mathematics-I": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/PDFS/Maths1-importantquestions.pdf",
      },
    },
    "Engineering Mathematics-II": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/PDFS/Maths1-importantquestions.pdf",
      },
    },
    "Engineering Physics": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/PDFS/Physics-unit5.pdf",
        "Lab File": "/PDFS/Physics-labfile.pdf",
        "Important Questions": "/PDFS/Physics-importantquestions.pdf",
      },
    },
    "Engineering Chemistry": {
      "2023-2024": {
        "Unit 1": "/PDFS/Chemistry-unit1.pdf",
        "Unit 2": "/PDFS/Chemistry-unit2.pdf",
        "Unit 3": "/PDFS/Chemistry-unit3.pdf",
        "Unit 4": "/PDFS/Chemistry-unit4.pdf",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/html/notfound.html",
      },
    },
    "Electronics Engineering": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/PDFS/Electronics-unit5.pdf",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/PDFS/Electronics-importantquestions.pdf",
      },
    },
    "Electrical Engineering": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/PDFS/Electrical-unit3.pdf",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/PDFS/Electrical-unit5.pdf",
        "Lab File": "/PDFS/Electrical-labfile.pdf",
        "Important Questions": "/PDFS/Electrical-importantquestions.pdf",
      },
    },
    "Mechanical Engineering": {
      "2023-2024": {
        "Unit 1": "/html/notfound.html",
        "Unit 2": "/PDFS/Mechanical-unit2.pdf",
        "Unit 3": "/PDFS/Mechanical-unit3.pdf",
        "Unit 4": "/PDFS/Mechanical-unit4.pdf",
        "Unit 5": "/PDFS/Mechanical-unit5.pdf",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/PDFS/Mechanical-importantquestions.pdf",
      },
    },
    "Programming for problem solving": {
      "2023-2024": {
        "Unit 1": "/PDFS/Pps-unit1.pdf",
        "Unit 2": "/PDFS/Pps-unit2.pdf",
        "Unit 3": "/PDFS/Pps-unit3.pdf",
        "Unit 4": "/PDFS/Pps-unit4.pdf",
        "Unit 5": "/PDFS/Pps-unit5.pdf",
        "Lab File": "/PDFS/Pps-labfile.pdf",
        "Important Questions": "/PDFS/Pps-importantquestions.pdf",
      },
    },
    "Softskill": {
      "2023-2024": {
        "Unit 1": "/PDFS/Softskill-unit1.pdf",
        "Unit 2": "/PDFS/Softskill-unit2.pdf",
        "Unit 3": "/PDFS/Softskill-unit3.pdf",
        "Unit 4": "/PDFS/Softskill-unit4.pdf",
        "Unit 5": "/PDFS/Softskill-unit5.pdf",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/PDFS/Softskill-importantquestions.pdf",
      },
    },
    "Environment and Ecology": {
      "2023-2024": {
        "Unit 1": "/PDFS/Evs-unit1.pdf",
        "Unit 2": "/PDFS/Evs-unit2.pdf",
        "Unit 3": "/PDFS/Evs-unit3.pdf",
        "Unit 4": "/PDFS/Evs-unit4.pdf",
        "Unit 5": "/PDFS/Evs-unit5.pdf",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/html/notfound.html",
      },
    },
    "Cyber Security": {
      "2023-2024": {
        "Unit 1": "/PDFS/Cs-unit1.pdf",
        "Unit 2": "/PDFS/Cs-unit2.pdf",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/html/notfound.html",
      },
    },
    "COA": {
      "2023-2024": {
        "Unit 1": "/PDFS/COA-unit1.pdf",
        "Unit 2": "/PDFS/COA-unit2.pdf",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/html/notfound.html",
      },
    },
    "DSTL": {
      "2023-2024": {
        "Unit 1": "/PDFS/DSTL-unit1.pdf",
        "Unit 2": "/PDFS/DSTL-unit2.pdf",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "Important Questions": "/html/notfound.html",
      },
    },
    "Data Structure": {
      "2023-2024": {
        "Unit 1": "/PDFS/DS-unit1.pdf",
        "Unit 2": "/html/notfound.html",
        "Unit 3": "/html/notfound.html",
        "Unit 4": "/html/notfound.html",
        "Unit 5": "/html/notfound.html",
        "Lab File": "/html/notfound.html",
        "DS Lab (Code Tantra)": "/PDFS/Ds-lab.pdf",
        "Important Questions": "/html/notfound.html",
      },
    },
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                    backgroundColor: Color.fromARGB(220, 255, 210, 76),
                    text: 'AKTU',
                    imagePath: 'assets/aktu-logo.webp'),
                SizedBox(height: 20),
                _buildCard(
                    backgroundColor: Color.fromARGB(220, 255, 210, 76),
                    text: 'Delhi University',
                    imagePath: 'assets/du-logo.webp'),
                SizedBox(height: 20),
                _buildCard(
                    backgroundColor: Color(0xFFFFE69A),
                    text: 'GGSIPU',
                    imagePath: 'assets/ipu-logo.webp'),
                SizedBox(height: 20),
                _buildCard(
                    backgroundColor: Color.fromARGB(220, 255, 210, 76),
                    text: 'VTU',
                    imagePath: 'assets/vtu-logo.webp'),
                SizedBox(height: 20),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFB3E5FC), // very light sky blue
            Color(0xFFBBDEFB), // soft, pastel sky blue
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFFFFFFF), // pure white
            Color(0xFFE3F2FD), // very pale sky blue, close to white
            Color(0xFFBBDEFB), // soft, pastel sky blue
          ],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
      ),
    );
  }

  Widget _buildCard({
    required Color backgroundColor,
    required String text,
    required String imagePath,
  }) {
    return GestureDetector(
      onTap: () async {
        String pdfUrl =
            await _showDialog(context, text, imagePath, widget.comingFrom);
        print('Returned pdfUrl: $pdfUrl');
        if (pdfUrl != "comingSoon") {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (builder) => PDFViewerPage(
                      pdfUrl: pdfUrl,
                    )),
          );
        } else {
          // showSnackbar(context, "Comming Soon");
        }
      },
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 30, 30, 30).withOpacity(0.2),
              blurRadius: 3,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Positioned(
                top: 3,
                right: 3,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color.fromARGB(198, 255, 255, 255),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _showDialog(BuildContext context, String whoesDialogue,
      String imagePath, String comingFrom) async {
    String pdfUrl = 'comingSoon';
    String selectedSubject = 'Select Subject';
    String selectedYear = 'Select Year';
    String selectedUnit =
        comingFrom == "Question Papers" ? 'Select Semester' : 'Select Unit';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Row(
                children: [
                  Image.asset(
                    imagePath,
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(whoesDialogue),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    menuMaxHeight: MediaQuery.of(context).size.height / 3,
                    items: (() {
                      if (whoesDialogue == 'AKTU') {
                        if (comingFrom != "Question Papers") {
                          return dropDownpdfPaths?.keys
                              ?.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                              ?.toList()
                              ?.cast<DropdownMenuItem<String>>();
                        } else {
                          return DropDownpdfPathsPapers?.keys
                              ?.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                              ?.toList()
                              ?.cast<DropdownMenuItem<String>>();
                        }
                      }
                    })(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedSubject = value ?? 'Select Subject';

                        selectedYear = 'Select Year';
                        selectedUnit = comingFrom == "Question Papers"
                            ? 'Select Semester'
                            : 'Select Unit';
                      });
                    },
                    hint: Text(selectedSubject),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    items: (() {
                      if (comingFrom != "Question Papers") {
                        return dropDownpdfPaths?[selectedSubject]
                            ?.keys
                            ?.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            ?.toList()
                            ?.cast<DropdownMenuItem<String>>();
                      } else {
                        return DropDownpdfPathsPapers?[selectedSubject]
                            ?.keys
                            ?.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            ?.toList()
                            ?.cast<DropdownMenuItem<String>>();
                      }
                    })(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedYear = value ?? 'Select Year';

                        selectedUnit = comingFrom == "Question Papers"
                            ? 'Select Semester'
                            : 'Select Unit';
                      });
                    },
                    hint: Text(selectedYear),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    items: (() {
                      if (comingFrom != "Question Papers") {
                        return dropDownpdfPaths?[selectedSubject]?[selectedYear]
                            ?.keys
                            ?.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            ?.toList()
                            ?.cast<DropdownMenuItem<String>>();
                      } else {
                        return DropDownpdfPathsPapers?[selectedSubject]
                                ?[selectedYear]
                            ?.keys
                            ?.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            ?.toList()
                            ?.cast<DropdownMenuItem<String>>();
                      }
                    })(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedUnit = value ?? 'Select Unit';
                      });
                    },
                    hint: Text(selectedUnit),
                  ),
                ],
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    if (whoesDialogue == 'AKTU') {
                      if (selectedSubject != 'Select Subject' &&
                          selectedYear != 'Select Year' &&
                          selectedUnit != 'Select Unit') {
                        String pdfPath;
                        if (comingFrom != "Question Papers") {
                          pdfPath = dropDownpdfPaths?[selectedSubject]
                                  ?[selectedYear]?[selectedUnit] ??
                              "/html/notfound.html";
                        } else {
                          pdfPath = DropDownpdfPathsPapers?[selectedSubject]
                                  ?[selectedYear]?[selectedUnit] ??
                              "/html/notfound.html";
                          print('pdfPath for papers $pdfPath');
                        }

                        if (pdfPath == "/html/notfound.html") {
                          showSnackbar(context, "Coming Soon");
                        } else {
                          pdfUrl = 'https://qpedia.vercel.app$pdfPath';
                          // Do something with the pdfUrl
                          print('chal basanti $pdfUrl');
                        }
                      } else {
                        showSnackbar(context, 'All Fields are Necessary');
                      }
                    } else {
                      showSnackbar(context, 'Others are comming Soon');
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text('Submit'),
                ),
              ],
            );
          },
        );
      },
    );
    return pdfUrl;
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
