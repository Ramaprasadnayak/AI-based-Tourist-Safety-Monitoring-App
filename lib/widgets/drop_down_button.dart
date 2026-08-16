import 'dart:collection';
import 'package:safeyatra/core/constants/language.dart';
import 'package:flutter/material.dart';

class MyDropdownMenu extends StatefulWidget {
  const MyDropdownMenu({super.key});
  @override
  State<MyDropdownMenu> createState() => _MyDropdownMenuState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _MyDropdownMenuState extends State<MyDropdownMenu> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    languages.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );
  String dropdownValue = languages.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: languages.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: menuEntries,
    );
  }
}