import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/paper_evalution_controller.dart';

class PaperEvaluationScreen extends StatelessWidget {
  final PaperEvaluationController controller =
      Get.put(PaperEvaluationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Paper Evaluation List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back press
            Get.back();
          },
        ),
        backgroundColor: Colors.teal,
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.evaluations.length,
            itemBuilder: (context, index) {
              final name = controller.evaluations[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(name, style: TextStyle(fontSize: 18)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () => controller.onEvaluate(name),
                          child: Text('Evaluate'),
                        ),
                        SizedBox(width: 10),
                        OutlinedButton(
                          onPressed: () => controller.onView(name),
                          child: Text('View'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
