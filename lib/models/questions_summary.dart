import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? const Color.fromARGB(255, 12, 211, 15)
                          : const Color.fromARGB(255, 249, 4, 4),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                        style: const TextStyle(color: Colors.black),
                        ((data['question_index'] as int) + 1).toString()),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            data['question'].toString()),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          style: const TextStyle(
                            color: Color.fromARGB(255, 194, 84, 213),
                          ),
                          data['user_answer'].toString(),
                        ),
                        Text(
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          data['correct_answer'].toString(),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
