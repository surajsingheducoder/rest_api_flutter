import 'dart:convert';
import 'dart:io';
import 'package:all_teckstack/api/entries_api/entries_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class EntryController extends GetxController {
  Rx<ApiEntry> entries = ApiEntry().obs;

  @override
  void onInit() {
    super.onInit();
    // Fetch data from the API when the controller is initialized
    fetchEntries();
  }

  // Fetch data from the API and update the entries list
  Future<void> fetchEntries() async {
    try {
      final response = await http.get(Uri.parse('https://api.publicapis.org/entries'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        entries.value = ApiEntry.fromJson(data);
        // entries.assignAll((data['entries'] as List).map((e) => ApiEntry.fromJson(e)));
      } else {
        throw Exception('Failed to load data from the API');
      }
    } catch (e) {
      // Handle any errors that occurred during the HTTP request
      print('Error fetching data: $e');
    }
  }

// Delete an entry by index
  void deleteEntry(int index) {
    final entryList = entries.value.entries;
    if (entryList != null && index >= 0 && index < entryList.length) {
      entryList.removeAt(index);
      entries.value = ApiEntry(entries: entryList); // Create a new ApiEntry with the updated list
    }
  }

}
