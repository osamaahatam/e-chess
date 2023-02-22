import 'package:flutter/material.dart';

class Course {
  final String title;
  final String description;

  Course({required this.title, required this.description});
}

List<Course> courses = [  
 Course(    title: 'Intro to Programming',    description: 'Learn the basics of programming and computer science',  ), 
 Course(    title: 'Data Structures and Algorithms',    description: 'Understand how data is organized and manipulated for efficiency',  ),  
 Course(    title: 'Mobile Application Development',    description: 'Build your own mobile apps for iOS and Android platforms',  ),];

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Courses'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) {
                  final course = courses[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.book),
                      title: Text(course.title),
                      subtitle: Text(course.description),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {
                        // navigate to the course detail page
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // navigate to the add course page
                },
                child: Text('Add Course'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}