```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ignore: avoid_print
      print(jsonData['key']); // Accessing a key that might not exist
    } else {
      // Handle error response
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions during the API call
    // ignore: avoid_print
    print('Error: $e');
  }
}
```