import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api_provider.dart';
import 'entries_model.dart';

class EntryList extends StatefulWidget {
  const EntryList({super.key});

  @override
  State<EntryList> createState() => _EntryListState();
}

class _EntryListState extends State<EntryList> {
  final EntryController entryController = Get.put(EntryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Entries'),
      ),
      body: Obx(() {
        final entries = entryController.entries.value.entries; // Observe the entries list

        if (entries == null) {
          // Data is still loading, show circular progress indicator
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: entries.length,
          itemBuilder: (context, index) {
            final entry = entries[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "API:   " + "${entry?.api}",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {
                              entryController.deleteEntry(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          )
                        ],
                      ),
                      Text("Auth:   " + "${entry?.auth}"),
                      Text("Category:   " + "${entry?.category}"),
                      Text("Cors:   " + "${entry?.cors}"),
                      Text("HTTPS:   " + "${entry?.https}"),
                      Text("Link:   " + "${entry?.link}"),
                      Text("Description:   " + "${entry?.description}"),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}



