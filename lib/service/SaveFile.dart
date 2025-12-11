import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

class Savefile {
  Future<void> saveFile(String pathing, String filename) async{
      final fileDate = await rootBundle.load(pathing);
      final bytes = fileDate.buffer.asUint8List();

      String? path = await FilePicker.platform.saveFile(
        dialogTitle: "Baixar Foto",
        fileName: filename
      );

      if(path != null){
        File(path).writeAsBytes(bytes);
      }
  }
}