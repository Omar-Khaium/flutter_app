import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Contacts",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            child: CupertinoSlidingSegmentedControl(
              children: {
                "all": Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),
                ),
                "starred": Text(
                  "Starred",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12),
                ),
              },
              groupValue: "all",
              onValueChanged: (value) {},
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "search",
                isDense: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 24,
                ),
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.perm_contact_calendar_sharp,
              color: Colors.blue,
            ),
            title: Text(
              "Add People Nearby",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24),
            ),
            onTap: () {
              print("asdsa");
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.cyan,
            ),
            title: Text(
              "Invite Friends",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan, fontSize: 24),
            ),
            onTap: () {
              print("asdsa");
            },
          ),
          Divider(
            thickness: 1,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
            itemBuilder: (context, index) => ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(42),
                child: Image.asset(
                    "images/user.jpg"),
              ),
              title: Text(
                "John Doe",
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 24),
              ),
              subtitle: Text(
                "Job Title",
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 18),
              ),
            ),
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.person_add),
        onPressed: (){},
      ),
    );
  }
}
