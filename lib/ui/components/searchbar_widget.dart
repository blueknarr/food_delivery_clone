import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // 현재 화면 너비의 80%
        child: TextField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search), // 돋보기 아이콘
              hintText: '검색', // 텍스트 입력란에 힌트 텍스트 표시
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              )),
          onChanged: (value) {
            // 입력된 값이 변경되었을 때 수행할 작업
          },
        ),
      ),
    );
  }
}
