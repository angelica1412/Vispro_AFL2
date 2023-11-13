import 'package:flutter/material.dart';

class SkillScreen extends StatelessWidget {
  final List<SkillItem> skills = [
    SkillItem(name: 'Programming', percentage: 77),
    SkillItem(name: 'Flutter', percentage: 63),
    SkillItem(name: 'UI/UX Design', percentage: 73),
    SkillItem(name: 'Java', percentage: 80),
    SkillItem(name: 'Problem Solving', percentage: 80),
    SkillItem(name: 'Communication', percentage: 88),
    SkillItem(name: 'Teamwork', percentage: 92),
    SkillItem(name: 'Responsible', percentage: 90),
    SkillItem(name: 'Discipline', percentage: 87),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Skills',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 238, 113, 136),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Berikut adalah beberapa skill yang saya miliki:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return SkillCard(skill: skills[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final SkillItem skill;

  SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          skill.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: LinearProgressIndicator(
          value: skill.percentage / 100,
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(
            Color.fromARGB(255, 238, 113, 136),
          ),
        ),
        trailing: Text('${skill.percentage}%'),
      ),
    );
  }
}

class SkillItem {
  final String name;
  final int percentage;

  SkillItem({
    required this.name,
    required this.percentage,
  });
}
