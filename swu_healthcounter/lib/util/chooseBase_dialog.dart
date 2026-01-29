import 'package:flutter/material.dart';

class ChoosebaseDialog extends StatefulWidget {

  const ChoosebaseDialog({super.key});

  @override
  State<ChoosebaseDialog> createState() => _ChoosebaseDialogState();
}

class _ChoosebaseDialogState extends State<ChoosebaseDialog> {
  int _maxHealthPlayer1 = 30;
  int _maxHealthPlayer2 = 30;
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey,
      content: SizedBox(
        height: 550,
        width: 350,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(3.14159),
                child: Column(
                  children: [
                    Text(
                      "Choose your base:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    ChoiceChip(
                      label: const Text("Standard Base (30hp)"),
                      selected: _maxHealthPlayer2 == 30,
                      onSelected: (_) => setState(() => _maxHealthPlayer2 = 30),
                    ),
                    ChoiceChip(
                      label: const Text("Force Base (28hp)"),
                      selected: _maxHealthPlayer2 == 28,
                      onSelected: (_) => setState(() => _maxHealthPlayer2 = 28),
                    ),
                    ChoiceChip(
                      label: const Text("Tarkintown (25hp)"),
                      selected: _maxHealthPlayer2 == 25,
                      onSelected: (_) => setState(() => _maxHealthPlayer2 = 25),
                    ),
                    ChoiceChip(
                      label: const Text("DataVault (33hp)"),
                      selected: _maxHealthPlayer2 == 33,
                      onSelected: (_) => setState(() => _maxHealthPlayer2 = 33),
                    ),
                    ChoiceChip(
                      label: const Text("Colossus (35hp)"),
                      selected: _maxHealthPlayer2 == 35,
                      onSelected: (_) => setState(() => _maxHealthPlayer2 = 35),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () => Navigator.pop(context, {'p1': _maxHealthPlayer1, 'p2': _maxHealthPlayer2}),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "Start Game",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Text(
                    "Choose your base:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  ChoiceChip(
                    label: const Text("Standard Base (30hp)"),
                    selected: _maxHealthPlayer1 == 30,
                    onSelected: (_) => setState(() => _maxHealthPlayer1 = 30),
                  ),
                  ChoiceChip(
                    label: const Text("Force Base (28hp)"),
                    selected: _maxHealthPlayer1 == 28,
                    onSelected: (_) => setState(() => _maxHealthPlayer1 = 28),
                  ),
                  ChoiceChip(
                    label: const Text("Tarkintown (25hp)"),
                    selected: _maxHealthPlayer1 == 25,
                    onSelected: (_) => setState(() => _maxHealthPlayer1 = 25),
                  ),
                  ChoiceChip(
                    label: const Text("DataVault (33hp)"),
                    selected: _maxHealthPlayer1 == 33,
                    onSelected: (_) => setState(() => _maxHealthPlayer1 = 33),
                  ),
                  ChoiceChip(
                    label: const Text("Colossus (35hp)"),
                    selected: _maxHealthPlayer1 == 35,
                    onSelected: (_) => setState(() => _maxHealthPlayer1 = 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
