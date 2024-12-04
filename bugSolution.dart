```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      if(jsonData.length > 10 && jsonData[10] is Map && jsonData[10].containsKey('someKey')){
        final String value = jsonData[10]['someKey'];
        print(value);
      } else {
        print("JSON data is malformed or index out of range");
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```