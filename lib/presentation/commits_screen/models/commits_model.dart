import 'package:get/get.dart';
import 'projectcommits_item_model.dart';

class CommitsModel {
  RxList<ProjectcommitsItemModel> projectcommitsItemList =
      RxList.filled(0, ProjectcommitsItemModel());
}
