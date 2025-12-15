import 'package:flutter/material.dart';

class Mainsite extends StatelessWidget {
  const Mainsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF4285F4).withOpacity(0.1),
                              Color(0xFF34A853).withOpacity(0.1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(
                          Icons.language,
                          size: 80,
                          color: Color(0xFF4285F4),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'WebExplorer',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Navegue na web com segurança',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            );
  }
}