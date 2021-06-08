import 'package:flutter/material.dart';
import 'package:google_agendas/screens/home/home.dart';
import 'package:google_agendas/style.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Google Agenda",
      home: Home(),
      theme: ThemeData(
        primarySwatch: blueTheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: redTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
