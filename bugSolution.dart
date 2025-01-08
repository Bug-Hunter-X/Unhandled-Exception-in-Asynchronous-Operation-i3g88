```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Use jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    // Log the error using a logging framework (e.g., logging)
    // Consider implementing retry logic here
    // Provide user feedback (e.g., show an error message)
    // Potentially rethrow the exception if needed to bubble it up the call stack
  }
}
```