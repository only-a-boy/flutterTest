import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new TodoListState();
}

class TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
          child: _todoItems.length == 0 ? hintText() : TodoListView()),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => _todoEdit(),
        tooltip: '新增待办事项',
        child: new Icon(
          Icons.add,
          size: 25.0,
        ),
      ),
    );
  }

  //当待办事项记录是0的时候，显示点击按钮开始添加提示语
  Widget hintText() {
    return new Text(
      '点击按钮开始添加',
      style: new TextStyle(fontSize: 20.0, color: Colors.grey),
    );
  }

  //用于存放待办事项
  List<String> _todoItems = [];

  //ListView控件，用于滚动展示待办事项
  Widget TodoListView() {
    return new ListView.builder(itemBuilder: (context, index) {
      if (index < _todoItems.length) {
        return TodoItem(index);
      }
    });
  }

  //ListTile控件，描绘每个待办事项
  Widget TodoItem(int i) {
    return new ListTile(
      title: new Text(_todoItems[i]),
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return new AlertDialog(
                title: new Text('"${_todoItems[i]}" 是否标记成已完成'),
                actions: <Widget>[
                  new FlatButton(
                      onPressed: () => Navigator.pop(context),
                      child: new Text(
                        '否',
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.redAccent),
                      )),
                  new FlatButton(
                      onPressed: (){
                        _removeTodoItem(i);
                        Navigator.pop(context);
                      },
                      child: new Text(
                        '是',
                        style: new TextStyle(
                            fontSize: 18.0, color: Colors.redAccent),
                      )),
                ],
              );
            });
      },
    );
  }
  
  //从列表中删除该事项，并告知程序状态发生变化，需要重绘视图UI
  _removeTodoItem(int index){
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  //点击右下角的按钮后，将新的路由页面推入栈中，该页面包含一个文本编辑控件，用于用户编辑内容。
  void _todoEdit() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('添加待办事项'),
          leading: new BackButton(),
        ),
        body: new TextField(
          decoration: new InputDecoration(
            hintText: '编辑待办事项',
            contentPadding: const EdgeInsets.all(10.0),
          ),
          onSubmitted: (text) {
            if (text.length == 0) {
              Navigator.of(context).pop();
            } else {
              _todoItemsChanged(text);
              Navigator.of(context).pop();
            }
          },
        ),
      );
    }));
  }

  //待办事项列表有新的变化，通过setState重绘页面UI
  _todoItemsChanged(String text) {
    setState(() {
      _todoItems.add(text);
    });
  }
}