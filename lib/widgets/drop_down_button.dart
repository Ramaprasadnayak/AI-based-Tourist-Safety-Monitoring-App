import 'dart:collection';
import 'package:safeyatra/core/constants/language.dart';
import 'package:flutter/material.dart';

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});
  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    languages.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = languages.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: languages.first,
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
      ),
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: menuEntries,
    );
  }
}