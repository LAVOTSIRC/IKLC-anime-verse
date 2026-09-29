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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AppScaffold(
      body: CustomScrollView(
        slivers: [
          // Header section with image and title
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: screenHeight * 0.3,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Container(
              margin: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Background image
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                  // Gradient overlay for better text visibility
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.3),
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),

                  // Title at the bottom of the image
                  Positioned(
                    bottom: screenHeight * 0.02,
                    left: screenWidth * 0.04,
                    right: screenWidth * 0.04,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.07,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                offset: const Offset(0, 2),
                                blurRadius: 4,
                                color: Colors.black.withValues(alpha: 0.7),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          genre,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.9),
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                offset: const Offset(0, 1),
                                blurRadius: 2,
                                color: Colors.black.withValues(alpha: 0.7),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ),
          // Content section
          SliverToBoxAdapter(

          ),
        ],
      ),
    );
  }

}
