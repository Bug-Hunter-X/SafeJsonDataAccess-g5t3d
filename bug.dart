```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing an index that might be out of bounds
      final String value = jsonData[10]['someKey']; //Error prone line. 
      print(value);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```