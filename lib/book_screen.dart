import 'package:flutter/material.dart';
import 'package:mybook_project/form.dart';
import 'package:mybook_project/my_book.dart';

class BookScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('MyBook'),
      ),

      body: Container(
        margin: EdgeInsets.all(5.0),
        child: ListView.builder(
          padding: const EdgeInsets.all(5.0),
          itemBuilder: (context, index) {
            final myBook  = myBookList[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/myBook', arguments: MyBook);
              },
              child: Card(
                color: Colors.grey[400],
                child: Card(
                  color: Colors.white70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Image.network(myBook.pict),
                        width:120,
                        height: 180,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            myBook.judul,
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(myBook.nama,
                          style: TextStyle(fontSize: 13),
                          ),
                          Text(myBook.totalhlmn,
                          style: TextStyle(fontSize: 10),
                          ),
                          Text('Penerbit: ' + myBook.penerbit,
                          style: TextStyle(fontSize: 12),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return FormReader();
                              }),
                            );
                          },
                          child: Text('Buy'),
                          )
                        ],
                      )
                    ],
                  ),
                  ),
                ),
              );
          },
          itemCount: myBookList.length,
        ),
        ),
    );
  }
}