import '/core/app_export.dart';
import 'package:gitlab/presentation/project_details_screen/models/project_details_model.dart';

class ProjectDetailsController extends GetxController {
  var projectName = Get.arguments[NavigationArgs.projectName];

  var projectId = Get.arguments[NavigationArgs.projectId];

  Rx<ProjectDetailsModel> projectDetailsModelObj = ProjectDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
