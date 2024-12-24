```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final name = jsonResponse['name'];
      // Safely access the 'name' field
      final userName = name != null ? name : 'Name not found'; // Using ternary operator
      //or 
      //final userName = name ?? 'Name not found'; //Using null-aware operator
      print('Name: $userName');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```