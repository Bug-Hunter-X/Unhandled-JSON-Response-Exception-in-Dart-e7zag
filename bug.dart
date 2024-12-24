```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access the 'name' field directly without checking for its existence
      final name = jsonResponse['name']; // This will throw an error if 'name' is missing
      print('Name: $name');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```