import 'package:get/get.dart';
import 'project_list_item_model.dart';

class ProjectListModel {
  RxList<ProjectListItemModel> projectListItemList =
      RxList.filled(0, ProjectListItemModel());
}
