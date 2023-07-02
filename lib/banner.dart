import 'package:ebookapp/screens/book_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:file_picker/file_picker.dart';

import 'color.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  FilePickerResult? filePickerResult;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timeNow = int.parse(DateFormat('kk').format(now));
    var message = '';
    if (timeNow <= 12) {
      message = 'Good Morning!';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      message = 'Good Afternoon!';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      message = 'Good Evening!';
    } else {
      message = 'Warm Night! ';
    }

    return Align(
      alignment: Alignment.center,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 260,
                width: 370,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bookfly.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                      KFourthColor.withOpacity(0.85),
                      BlendMode.srcATop,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Text(
                        message,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: KPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Which book suits your\ncurrent mood?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: KPrimaryColor.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: GestureDetector(
                  onTap: () async {
                    filePickerResult = await FilePicker.platform.pickFiles(
                        allowedExtensions: ['pdf'], type: FileType.custom);
                    if (filePickerResult != null) {
                      var path = filePickerResult!.files.single.path;
                      

                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return BookViewer(path: path);
                        },
                      ));
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 340,
                    decoration: BoxDecoration(
                      color: KPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Load a doument",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
