import 'package:anime_verse/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;
  final String genre;
  final String rating;
  final String totalEpisodes;
  final String description;

  const DetailScreen({
    super.key,
    // Menggunakan data dummy untuk sementara sebagai demo
    this.id = '1',
    this.title = 'Black Clover',
    this.imagePath = 'assets/images/black_clover.jpg',
    this.genre = 'Action, Adventure, Fantasy',
    this.rating = '8.14',
    this.totalEpisodes = '170',
    this.description = ""
  });

  @override
  Widget build(BuildContext context) {

  }
}
