import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final String message;
  final VoidCallback nextGame;

  const DialogBox({super.key, required this.message, required this.nextGame});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      content: SizedBox(
        height: 150,
        width: 350,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () => nextGame(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Next Game",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
