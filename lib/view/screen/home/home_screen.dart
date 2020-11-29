import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_pagination/core/controller/home_controller.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller;

  const HomeScreen(this._controller, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GetX Pagination"),
          actions: [
            PopupMenuButton(
                initialValue: _controller.limit,
                onSelected: (value) => _controller.changeTotalPerPage(value),
                itemBuilder: (context) {
                  return [
                    CheckedPopupMenuItem(
                      value: 15,
                      checked: _controller.limit == 15,
                      child: Text("15 / pagination"),
                    ),
                    CheckedPopupMenuItem(
                      value: 25,
                      checked: _controller.limit == 25,
                      child: Text("25 / pagination"),
                    ),
                    CheckedPopupMenuItem(
                      value: 50,
                      checked: _controller.limit == 50,
                      child: Text("50 / pagination"),
                    )
                  ];
                })
          ],
        ),
        body: Obx(() => LazyLoadScrollView(
              onEndOfPage: _controller.loadNextPage,
              isLoading: _controller.lastPage,
              child: ListView.builder(
                itemCount: _controller.users.length,
                itemBuilder: (context, index) {
                  final user = _controller.users[index];
                  return ListTile(
                    leading: Text(user.id),
                    title: Text(user.name),
                    subtitle: Text(user.username),
                  );
                },
              ),
            )),
      ),
    );
  }
}
