import 'package:basic_layout/feature/board/domain/entities/board_item_entity.dart';

class BoardItemUsecase {
  Future<BoardItemEntity> fetchBoardItem(String id) async {
    /// 응답 지연 시뮬레이션
    await Future.delayed(const Duration(seconds: 1));

    return BoardItemEntity(
      id: id,
      title: 'Sample Board Item',
      description: 'This is a description of the sample board item.',
      imageUrl:
          'https://media.istockphoto.com/id/1729402032/ko/%EC%82%AC%EC%A7%84/%EC%87%BC%ED%95%91%EB%B0%B1%EC%9D%84-%EB%93%A4%EA%B3%A0-%EC%9E%88%EB%8A%94-%EC%95%8C%EC%95%84%EB%B3%BC-%EC%88%98-%EC%97%86%EB%8A%94-%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4-%EC%97%AC%EC%9E%90.jpg?s=612x612&w=0&k=20&c=j0J72QTP6mYIwNa5yiz5cP2f_bAcu4ulXqEcrESyUHc=',
    );
  }
}
