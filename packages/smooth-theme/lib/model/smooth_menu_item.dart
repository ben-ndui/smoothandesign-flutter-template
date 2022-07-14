
import 'package:flutter/material.dart';

class SmoothMenuItem{
  final String title;
  final String subtitle;
  final IconData? icon;

  SmoothMenuItem({required this.title, required this.subtitle, this.icon});
}

List<SmoothMenuItem> profileItems = [
  //ProfileItem(title: "Dispos", subtitle: "Mes disponibilités"),
  SmoothMenuItem(title: "", subtitle: "Mes informations personnelles"),
  SmoothMenuItem(title: "Mon CV", subtitle: "Mes expériences"),
  SmoothMenuItem(title: "Mes évaluations", subtitle: "Évaluation / Commentaires"),
];
