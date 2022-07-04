
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewRecipe extends StatefulWidget {
  const ViewRecipe({Key? key}) : super(key: key);

  @override
  State<ViewRecipe> createState() => _ViewRecipeState();
}

class _ViewRecipeState extends State<ViewRecipe> {
  var name=[];
  var ing=[];
  var rec=[];
  TextEditingController rname=TextEditingController();
  TextEditingController ring=TextEditingController();
  TextEditingController rrec=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [

            TextField(
              controller: rname,
              decoration: InputDecoration(
                labelText: "Name of recipe",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
            SizedBox(height: 15,),

            TextField(
              controller: ring,
              decoration: InputDecoration(
                  labelText: "Enter ingredients",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            SizedBox(height: 15,),

            TextField(
              controller: rrec,
              decoration: InputDecoration(
                  labelText: "Enter recipe",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            SizedBox(height: 15,),

            SizedBox(height: 55,
            width: double.infinity,
              child: RaisedButton(
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){
                  var getRname=rname.text;
                  var getRing=ring.text;
                  var getRrec=rrec.text;
             setState(() {
               name.add(getRname);
               ing.add(getRing);
               rec.add(getRrec);
             });
                },
        child: Text("ADD",
        style: TextStyle(
          color: Colors.indigoAccent,
          fontSize: 45
        ),
        ),
              ) ,
            ),
          ListView.builder(
            shrinkWrap: true,
            itemCount:name.length==null ? 0 : name.length ,
              itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  trailing: GestureDetector(
                    onTap: (){
                      print("Deleted"+index.toString());
                      setState(() {
                        name.removeAt(index);
                        ing.removeAt(index);
                        rec.removeAt(index);
                      });
                    },
                    child: Icon(Icons.delete_forever,
                    color: Colors.brown,
                      size: 30,
                    ),
                  ),

                  leading: Icon(Icons.fastfood_outlined,
                  color: Colors.tealAccent,
                    size: 30,
                  ),
                  title: Text(name[index].toString()),
                  subtitle: Text("Name : "+name[index].toString()+"\n"+"Ingredients : "+ing[index].toString()+"\n"+"Recipe : "+rec[index].toString()),
                ),
              );
              }

          )

          ],
        ),

      ),
    );
  }
}
