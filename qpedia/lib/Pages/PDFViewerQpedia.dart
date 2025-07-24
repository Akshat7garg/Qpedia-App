import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewerPage extends StatefulWidget {
  final String? pdfUrl;

  PDFViewerPage({required this.pdfUrl});
  @override
  _PDFViewerPageState createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  bool isUrl = true;
  String pdfUrl = '';
  @override
  void initState() {
    if (widget.pdfUrl == 'commingSoon') {
      isUrl = false;
    } else {
      setState(() {
        pdfUrl = widget.pdfUrl.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isUrl ? SfPdfViewer.network(pdfUrl) : _buildBackground(),
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

            // #FFD24C
            // Add more colors as needed
          ],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
          child: Center(
            child: Text(
              'Coming Soon !!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
