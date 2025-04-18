import 'package:flutter/material.dart';

class TrustedFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF320D3E), // Arka plan rengi (mor ton)
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gradyan ve ikon bölümü
              Stack(
                alignment: Alignment.center,
                children: [
                  // Gradyan arka plan
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          Colors.blue[900]!,
                          Colors.blue[700]!,
                          Colors.black,
                        ],
                        stops: [0.6, 0.85, 1.0],
                      ),
                    ),
                  ),
                  // Noktalar ve ikon
                  Positioned(
                    top: 80, // Noktaların konumu
                    child: Icon(
                      Icons.auto_awesome, // Noktalar ikonu
                      size: 60,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Positioned(
                    top: 140, // Eller ve kalp konumu
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Icon(
                          Icons.front_hand,
                          size: 100,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Boşluk
              // Başlık ve açıklama bölümü
              Text(
                "Trusted Friends",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Trusted Friends is a a M-of-N social recovery module that allows users to access their accounts.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.7),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50), // Boşluk
              // Sayfa göstergesi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPageIndicator(isActive: true),
                  SizedBox(width: 8),
                  _buildPageIndicator(isActive: false),
                  SizedBox(width: 8),
                  _buildPageIndicator(isActive: false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Sayfa göstergesi widget'ı
  Widget _buildPageIndicator({required bool isActive}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 12 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
