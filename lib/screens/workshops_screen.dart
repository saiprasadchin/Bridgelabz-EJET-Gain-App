import 'package:flutter/material.dart';

class WorkshopsScreen extends StatefulWidget {
  const WorkshopsScreen({Key? key}) : super(key: key);

  @override
  State<WorkshopsScreen> createState() => _WorkshopsScreenState();
}

class _WorkshopsScreenState extends State<WorkshopsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('WorkshopsScreen'),
    );
  }
}
