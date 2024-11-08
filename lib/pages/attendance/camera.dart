import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff05162b),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Ketika controller siap, tampilkan kamera
            return CameraPreview(_controller);
          } else {
            // Jika belum siap, tampilkan loading spinner
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            // Menunggu sampai controller siap
            await _initializeControllerFuture;

            // Mengambil gambar
            final image = await _controller.takePicture();

            // Lakukan sesuatu dengan gambar yang diambil (seperti menyimpannya atau menampilkannya)
            print('Picture saved to: ${image.path}');
          } catch (e) {
            print(e); // Menangani error
          }
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
