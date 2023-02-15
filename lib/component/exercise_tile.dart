import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;

  const ExerciseTile(
      {required this.icon,
      required this.exerciseName,
      required this.numberOfExercises,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: ListTile(
          leading: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(16)),
              child: Icon(
                icon,
                color: Colors.white,
              )),
          title: Text(
            exerciseName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(numberOfExercises.toString() + ' Exercises'),
          trailing: Icon(Icons.more_horiz),
          minLeadingWidth: 0,
        ),
      ),
    );
  }
}
