import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget{
  List<CameraDescription> cameras;
  Camera(this.cameras);
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera>{
  CameraController cameraController;

  @override
  void initState() {
    super.initState();
    cameraController =CameraController(widget.cameras[0], ResolutionPreset.medium);
    cameraController.initialize().then((_){
        if(!mounted){
          return;
        }
        setState(() {
          
        });
      }  
    );
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(!cameraController.value.isInitialized){
      return Container(

      );
    }
    return AspectRatio(
      aspectRatio: cameraController.value.aspectRatio,
      child: CameraPreview(cameraController),
    );
    
  }
}