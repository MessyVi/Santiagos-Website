import 'package:flutter/material.dart';

class Preorder extends StatefulWidget {
  const Preorder({super.key});

  static String get routeName => '/preorder';

  @override
  State<Preorder> createState() => _PreorderState();
}

class _PreorderState extends State<Preorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      backgroundColor: Color.fromRGBO(249, 246, 241, 1.0),
=======
      backgroundColor: const Color.fromRGBO(249, 246, 241, 1.0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
  
            Center(
              child: Text(
                "POPULAR ITEMS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.brown,
                ),
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              controller: _searchController,
              onSubmitted: (value) {
                addToHistory(value);
              },
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search furniture...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 40),

            Expanded(
              child: Center(
                child: Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxWidth: 900),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // HEADER
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Expanded(child: HeaderText("Furniture")),
                            Expanded(child: HeaderText("Frequency")),
                          ],
                        ),
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: _filteredRows(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
>>>>>>> Stashed changes
    );
  }
}