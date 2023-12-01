import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

Future<String> getDirectory() async {
  // Directory directory = await getApplicationDocumentsDirectory();
  Directory directory = await getApplicationSupportDirectory();
  return directory.path;
}

Future<String> getFilePath() async {
    Directory appDocumentsDirectory = await getApplicationDocumentsDirectory(); // 1
    String appDocumentsPath = appDocumentsDirectory.path; // 2
    String filePath = '$appDocumentsPath/test_file.txt'; // 3

    return filePath;
}

void saveFile() async {
  File file = File(await getFilePath()); // 1
  file.writeAsString("This is my demo text that will be saved to : demoTextFile.txt"); // 2
}