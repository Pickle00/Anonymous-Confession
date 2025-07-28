/// An extension on String to generate full paths for SVG and PNG icons,
/// as well as SVG, PNG, and JPG images within the assets directory.
extension ImageIconPath on String {
  /// Returns the full path for an SVG icon located in the assets/icons directory.
  ///
  /// Example:
  /// ```dart
  /// String iconName = "home";
  /// print(iconName.svgIcon); // Output: assets/icons/home.svg
  /// ```
  String get svgIcon => 'assets/icons/$this.svg';

  /// Returns the full path for a PNG icon located in the assets/icons directory.
  ///
  /// Example:
  /// ```dart
  /// String iconName = "home";
  /// print(iconName.pngIcon); // Output: assets/icons/home.png
  /// ```
  String get pngIcon => 'assets/icons/$this.png';

  /// Returns the full path for an SVG image located in the assets/images directory.
  ///
  /// Example:
  /// ```dart
  /// String imageName = "background";
  /// print(imageName.svgImage); // Output: assets/images/background.svg
  /// ```
  String get svgImage => 'assets/images/$this.svg';

  /// Returns the full path for a PNG image located in the assets/images directory.
  ///
  /// Example:
  /// ```dart
  /// String imageName = "background";
  /// print(imageName.pngImage); // Output: assets/images/background.png
  /// ```
  String get pngImage => 'assets/images/$this.png';

  /// Returns the full path for a JPG image located in the assets/images directory.
  ///
  /// Example:
  /// ```dart
  /// String imageName = "background";
  /// print(imageName.jpgImage); // Output: assets/images/background.jpg
  /// ```
  String get jpgImage => 'assets/images/$this.jpg';
}
