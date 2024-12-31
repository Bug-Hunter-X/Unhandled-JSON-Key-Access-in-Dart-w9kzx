```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final keyValue = jsonData['key'];

      if (keyValue != null) {
        // ignore: avoid_print
        print(keyValue);
      } else {
        // ignore: avoid_print
        print('Key not found in JSON response.');
      }
    } else {
      // ignore: avoid_print
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // ignore: avoid_print
    print('Error: $e');
  }
}
```