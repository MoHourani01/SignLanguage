import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter_tts/flutter_tts.dart';

class camera1 extends StatefulWidget {
  @override
  _camera1State createState() => _camera1State();
}

class _camera1State extends State<camera1> {
  String answer = "";
  CameraController? cameraController;
  CameraImage? cameraImage;
  bool isProcessing = false;
  FlutterTts flutterTts = FlutterTts();

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/tflite/arabic_sign_language_model3.tflite",
      labels: "assets/tflite/labels2.txt",
    );
  }

  initCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.firstWhere(
          (camera) => camera.lensDirection == CameraLensDirection.back,
      orElse: () => cameras[0],
    );

    cameraController = CameraController(
        camera,
        ResolutionPreset.high);

    await cameraController!.initialize();

    if (mounted) {
      setState(() {
        cameraController!.startImageStream(processImage);
      });
    }
  }

  processImage(CameraImage image) async {
    if (!isProcessing) {
      isProcessing = true;
      cameraImage = image;
      await Future.delayed(Duration(seconds: 2)); // Throttle image processing to every 2 seconds
      applyModelOnImages();
      isProcessing = false;
    }
  }

  applyModelOnImages() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
        bytesList: cameraImage!.planes.map((plane) => plane.bytes).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 3,
        threshold: 0.1,
        asynch: true,
      );

      String newAnswer = '';

      predictions?.forEach((prediction) {
        newAnswer +=
            prediction['label'].toString().substring(1) + " ";
      });

      setState(() {
        answer = newAnswer;
      });

      // Speaking the answer
      await flutterTts.setLanguage('ar-SA'); // Set your required language here
      await flutterTts.speak(answer); // Speaking the text
    }
  }

  @override
  void initState() {
    super.initState();
    loadModel();
    initCamera();
  }

  @override
  void dispose() async {
    super.dispose();
    await Tflite.close();
    await flutterTts.stop();
    cameraController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: cameraImage != null
              ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: AspectRatio(
                        aspectRatio:
                        cameraController!.value.aspectRatio,
                        child: CameraPreview(cameraController!),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black87,
                      child: Center(
                        child: Text(
                          answer,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: closeCameraAndReturn,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
              : Container(),
        ),
      ),
    );
  }

  void closeCameraAndReturn() {
    cameraController?.dispose();
    flutterTts.stop();
    Navigator.pop(context);
  }
}