import 'package:architecture/ViewModels/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

// ViewModelBuilder<HomeViewModel>.reactive()

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Architecture"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(model.title),
                  SizedBox(height: 100),
                  InkWell(
                    onTap: () {
                      model.box1();
                    },
                    child: Container(
                        child: Center(child: Text("Box 1")),
                        height: 100,
                        width: 100,
                        color: model.color1),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      model.box2();
                    },
                    child: Container(
                      child: Center(child: Text("Box 2")),
                      height: 100,
                      width: 100,
                      color: model.color2,
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.updateCounter();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
