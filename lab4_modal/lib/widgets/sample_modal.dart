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
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget diam eros. Nulla id vestibulum sapien. Curabitur scelerisque neque non sollicitudin dictum. Sed pretium ante ut elit rhoncus, a venenatis felis tincidunt. Praesent consequat ex sit amet orci elementum, eu viverra libero efficitur. Maecenas eget enim tellus. Nulla facilisi. Donec ultrices metus lacus, sed sagittis orci imperdiet at. \n\n'
                          'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed a felis nec ligula convallis tincidunt. In hac habitasse platea dictumst. Integer ac nisi id libero efficitur fermentum. Suspendisse potenti. Proin ut justo a erat facilisis tincidunt. Aenean at felis non nunc efficitur lacinia. \n\n'
                          'Phasellus a felis nec justo convallis tincidunt. In hac habitasse platea dictumst. Integer ac nisi id libero efficitur fermentum. Suspendisse potenti. Proin ut justo a erat facilisis tincidunt. Aenean at felis non nunc efficitur lacinia.',
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