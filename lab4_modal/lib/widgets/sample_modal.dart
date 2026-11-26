import 'package:material_ui/material_ui.dart';

class SampleModal extends StatelessWidget {
  const SampleModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: 400,
        height: MediaQuery.sizeOf(context).height * 0.7,
        child: Column(
          children: [
            // Modal title
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF206B4B),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
              child: const Text(
                'SampleModal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Image and scrollable text
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Image.asset(
                        'assets/images/sample_modal_image.png',
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Expanded(
                      flex: 3,
                      child: SingleChildScrollView(
                        child: Text(
                          'Flutter is an open-source framework '
                          'used to create applications for '
                          'mobile, web, and desktop platforms.\n\n'
                          'It allows developers to build '
                          'beautiful and interactive user '
                          'interfaces using Dart programming.\n\n'
                          'This laboratory demonstrates '
                          'basic Flutter components such as '
                          'buttons, images, dialogs, and '
                          'scrollable text areas.\n\n'
                          'A modal dialog appears above '
                          'the current screen and allows '
                          'users to view additional content '
                          'without leaving the application.\n\n'
                          'The SingleChildScrollView widget '
                          'makes long content scrollable '
                          'when it exceeds the available space.\n\n'
                          'Using reusable widgets also '
                          'helps developers organize code '
                          'and maintain applications '
                          'more efficiently.\n\n'
                          'Scroll down to read this final '
                          'paragraph and test the scrolling '
                          'functionality of the modal.',
                          style: const TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Close button
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF206B4B),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('CLOSE'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}