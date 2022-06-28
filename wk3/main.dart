import 'package:flutter/material.dart';


int _haha1=0;
int _haha2=0;
int _haha3=0;

void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Week 3 과제'),
      //home: const Secondscreen(),//(title: 'Flutter Demo Home Page'),
      //홈페이지 변경 부분
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  /*
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter+=1;
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMjhfMTA1%2FMDAxNjE2OTI1OTQwODI0.cfKQpRMWhnyEp0ZexLwsYByq7h4Lq6HtCB0UU7s0V0og.YDbOdORnjOL_3_cqUb6_dtAB388ItrLAt4fVnlVg7BIg.JPEG.jongrok1092%2FIMG_7713.JPG&type=sc960_832",height: 400),
          //Image.network("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MDRfMTc0%2FMDAxNjI1MzMwNzk0MzAw.3_w5JxEf9mAH6-wFR7_QNwIHj_Lu6p6kEWus29B7tiUg.yk2TKWnxehSL_FWnwevOSiX1Q2YbqZAiK3Uukt6Kn3Ig.JPEG.joanfk%2FIMG_7800.jpg&type=sc960_832",height: 400,),
            Text("당신은 민트초코를 좋아하시나요?"),
            /*const Text(
              'You have pushed the button this many times:',
            ),*/

            /*Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),*/
            ChangeButton(),
            ChangeButton2(),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.*/
    );
  }
}

class Secondscreen extends StatelessWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b8/Pizza_Hawaii_02.jpg",height: 400),
            Text("당신은 파인애플 피자를 좋아하시나요?"),
            ButtonChange(),
            ButtonChange2(),
            BackButton(),
          ],
        )
    );
  }
}

class Thirdscreen extends StatelessWidget {
  const Thirdscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEwMzBfMTg3%2FMDAxNjM1NTg2ODMzODY1.bQ5_T3UeyMpnfdTq9sUzwe1TZAJj6LYWvGAVUJR3e8Qg.gjI3-uQTCjGnPZFqnPHnmcgK6CKzg2rdz1PaH9O9jggg.JPEG.jinuk7929%2FIMG_3031.jpg&type=sc960_832",height:400),
        Text("당신은 탕수육을 먹을 때 부먹파입니까?"),
        FinalButton(),
        FinalButton2(),
        BackButton(),
      ],
    )
    );
  }
}

class Finalscreen extends StatelessWidget {
  const Finalscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjNfMTk0%2FMDAxNjI0NDUwODM3MzMx.OQOh671RW_T9bJyUdLHrtcfPDuKfDA5jZBijAVMi6jIg.c59xAWgbAQA4NyPjS4aF8sNcddeYZDNuO-O6QxUCKqAg.JPEG.hayun1310%2FIMG_5490.JPG&type=sc960_832",height:500),
            Text("최종 설문 결과입니다\n"),

            if(_haha1==1)
              Text("당신은 민트초코를 좋아하고"),
            if(_haha1==0)
              Text("당신은 민트초코를 싫어하고"),

            if(_haha2==1)
              Text("당신은 파인애플 피자를 좋아하고"),
            if(_haha2==0)
              Text("당신은 파인애플 피자를 싫어하고"),

            if(_haha3==1)
              Text("당신은 탕수육을 먹을 때 부먹파네요"),
            if(_haha3==0)
              Text("당신은 탕수육을 먹을 때 찍먹파네요"),
            //버튼 누를때마다 값 설정 set state 한다.
            //결과 보내주기


            BackButton(),
          ],
        )
    );
  }
}

class ChangeButton extends StatefulWidget {
  const ChangeButton({Key? key}) : super(key: key);

  @override
  _ChangeButtonState createState() => _ChangeButtonState();
}

class _ChangeButtonState extends State<ChangeButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha1=1;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Secondscreen();
          }));
        },
    child: Text("네, 두번째 질문으로 넘어가요"));
  }
}

class ChangeButton2 extends StatefulWidget {
  const ChangeButton2({Key? key}) : super(key: key);

  @override
  _ChangeButton2State createState() => _ChangeButton2State();
}

class _ChangeButton2State extends State<ChangeButton2> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha1=0;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Secondscreen();
          }));
        },
        child: Text("아니요, 두번째 질문으로 넘어가요"));
  }
}


class ButtonChange extends StatefulWidget {
  const ButtonChange({Key? key}) : super(key: key);

  @override
  _ButtonChangeState createState() => _ButtonChangeState();
}

class _ButtonChangeState extends State<ButtonChange> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha2=1;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Thirdscreen();
          }));
        },

        child: Text("네, 세번째 질문으로 넘어가요"));

    /*setState(() {
          _haha=1;
          print(_haha);
        });*/
  }
}

class ButtonChange2 extends StatefulWidget {
  const ButtonChange2({Key? key}) : super(key: key);

  @override
  _ButtonChange2State createState() => _ButtonChange2State();
}

class _ButtonChange2State extends State<ButtonChange2> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha2=0;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Thirdscreen();
          }));
        },
        child: Text("아니요, 세번째 질문으로 넘어가요"));
  }
}

class FinalButton extends StatefulWidget {
  const FinalButton({Key? key}) : super(key: key);

  @override
  _FinalButtonState createState() => _FinalButtonState();
}

class _FinalButtonState extends State<FinalButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha3=1;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Finalscreen();
          }));
        },
        child: Text("네, 결과창으로 넘어가요"));
  }
}

class FinalButton2 extends StatefulWidget {
  const FinalButton2({Key? key}) : super(key: key);

  @override
  _FinalButton2State createState() => _FinalButton2State();
}

class _FinalButton2State extends State<FinalButton2> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          setState(() {
            _haha3=0;
          });
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Finalscreen();
          }));
        },
        child: Text("아니요, 결과창으로 넘어가요"));
  }
}


class BackButton extends StatefulWidget {
  const BackButton({Key? key}) : super(key: key);

  @override
  _BackButtonState createState() => _BackButtonState();
}

class _BackButtonState extends State<BackButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("뒤돌아갑니다.")
        );
  }
}

/*
class haha extends StatefulWidget {
  const haha({Key? key}) : super(key: key);

  @override
  _hahaState createState() => _hahaState();
}

class _hahaState extends State<haha> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/



/*
class ChangeButton extends StatelessWidget {
  const ChangeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: BuildContext context){
            return Secondscreen();
          }));
        },
        child: Text("두번째 화면으로 넘어가요.")
    );
  }
}*/
