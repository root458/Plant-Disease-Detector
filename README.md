# Plant Disease Detector
A Flutter app that detects a plant's disease given a photo of an affected part of the plant.

## Visuals
<img src="plant_disease_detector.gif" height="500">

## Installation
A Flutter installation is required to run this project.
To install Flutter, visit the official installation [documentation](https://docs.flutter.dev/get-started/install).
Set up an editor of choice as specified [here](https://docs.flutter.dev/get-started/editor).

Download the project.

```bash
git clone https://github.com/root458/Plant-Disease-Detector.git
```

Run the below command inside the project directory to install necessary packages.
```bash
flutter pub get
```
To run the project in debug mode 
```bash
flutter run
```

To generate a release build
```bash
flutter build apk
```
Locate the `app-release.apk` file from the directory `build/app/outputs/flutter-apk/` and install in your Android smartphone or emulator to use.

## Usage

On launching the application, you will be presented with the usage instructons. It follows that to get a suggestion of a disease affecting a plant of interest, take a photo of the plant, or select a photo of the plant from your `gallery`.

The application then runs the TFLITE model in the background to get a suggestion of the disease.
It displays the results on the next screen `Suggestions`

## Important to note
- The `tflite` model has been trained to detect only a subset of the diseases. They include:
    - Pepper Bell Bacterial Spot
    - Pepper Bell Healthy
    - Potato Early Blight
    - Potato Healthy
    - Potato Late Blight
    - Tomato Bacterial Spot
    - Tomato Early Blight
    - Tomato Healthy
    - Tomato Late Blight
    - Tomato Leaf Mold
    - Tomato Septoria Leaf Spot
    - Tomato Spotted Spider Mites
    - Tomato Target Spot
    - Tomato Mosaic Virus
    - Tomato Yellow Leaf Curl Virus

- The size of the dataset was only sufficient enough to make the model recognize selected  diseases, but it faces problems with images of non-plants.
- The application was built using Flutter and a `tflite` model from [Teachable Machine Learning by Google](https://teachablemachine.withgoogle.com/). The dataset was from [KAGGLE](https://www.kaggle.com/saroz014/plant-diseases).

## Contributing
Contributions towards the project are welcome.
Specifically:

- The `tflite` model used can be replaced with a more accurate one/one with more diseases.
- The responsiveness of the application can be improved.
- Warning messages can be added for non-plant inputs made by users.

## License
[MIT](https://github.com/root458/Suis-Flutter-Puzzle-Hack/blob/main/LICENSE)

## Project Status
The requirements I set have been made possible. However, the application can still be improved.
Additions/improvements can be made as specified in the `Contributing` section.

