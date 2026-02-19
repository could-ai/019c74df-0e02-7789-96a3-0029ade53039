import 'package:flutter/material.dart';

class BannerScreen extends StatelessWidget {
  const BannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Aspect ratio 1.91:1 is approximately 1200x628, standard for social sharing.
    // The user mentioned 200x644 which contradicts 1.91:1, so we prioritize the aspect ratio
    // and the "Title in middle" requirement for the visual banner.
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Developers Egypt"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // The "Generated Image" representation
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 1.91 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "15 Mobile Phone App\nDevelopment Companies\nin Egypt",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "TOP LIST 2024",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Top Companies List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // The List of Companies
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      child: Text("${index + 1}"),
                    ),
                    title: Text("Egypt App Dev Company ${index + 1}"),
                    subtitle: const Text("Mobile & Web Development • Cairo"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
