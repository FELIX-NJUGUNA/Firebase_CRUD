import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_online_db/services/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // firestore
  final FirestoreService firestoreService = FirestoreService();

  final TextEditingController textController = TextEditingController();

  // dialog box to create a new note
  void openNoteBox({String? docID}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                // button to save
                ElevatedButton(
                    onPressed: () {
                      // add new note
                      if (docID == null) {
                        firestoreService.addNote(textController.text);
                      }

                      // update note

                      else {
                        firestoreService.updateNote(docID, textController.text);
                      }
                      // clear the text controller
                      textController.clear();

                      Navigator.pop(context);
                    },
                    child: Text("Save"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent.shade100,
        appBar: AppBar(
          title: Text(
            "CRUD",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pinkAccent.shade200,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent.shade200,
          onPressed: openNoteBox,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: firestoreService.getNotesStream(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List notesList = snapshot.data!.docs;

              // display as a list
              return ListView.builder(
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  // get each individual doc
                  DocumentSnapshot document = notesList[index];
                  String docID = document.id;

                  // get note from each doc
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;

                  String noteText = data['note'];

                  // display as a list tile
                  return ListTile(
                    title: Text(noteText),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // update btn
                        IconButton(
                          onPressed: () => openNoteBox(docID: docID),
                          icon: Icon(Icons.settings),
                        ),

                        // delete btn
                        IconButton(
                          onPressed: () => firestoreService.deleteNote(docID),
                          icon: Icon(Icons.delete),
                        )
                      ],
                    ),
                  );
                },
              );
            }
            // if no data return nothing
            else {
              return const Text("No notes!!!");
            }
          },
        ));
  }
}
