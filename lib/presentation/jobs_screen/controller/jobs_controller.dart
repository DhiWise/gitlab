import '/core/app_export.dart';
import 'package:gitlab/presentation/jobs_screen/models/jobs_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/data/models/jobs/get_jobs_resp.dart';
import 'package:gitlab/data/apiClient/api_client.dart';
import '../models/project1job_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class JobsController extends GetxController {
  var projectName = Get.arguments[NavigationArgs.projectName];

  var projectId = Get.arguments[NavigationArgs.projectId];

  Rx<JobsModel> jobsModelObj = JobsModel().obs;

  List<GetJobsResp> getJobsResp = <GetJobsResp>[];

  @override
  void onReady() {
    super.onReady();
    this.callFetchJobs(
      successCall: _onFetchJobsSuccess,
      errCall: _onFetchJobsError,
      id: projectId,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchJobs(
      {VoidCallback? successCall, VoidCallback? errCall, String? id}) async {
    return Get.find<ApiClient>().fetchJobs(
        headers: {
          'PRIVATE-TOKEN': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchJobsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchJobsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: id);
  }

  void onFetchJobsSuccess(var response) {
    getJobsResp =
        (response as List).map((e) => GetJobsResp.fromJson(e)).toList();
  }

  void onFetchJobsError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onFetchJobsSuccess() {
    List<Project1jobItemModel> project1jobItemModelList = [];
    if (getJobsResp != null && getJobsResp.isNotEmpty) {
      for (var element in getJobsResp) {
        var project1jobItemModel = Project1jobItemModel();
        project1jobItemModel.statusTxt.value = element.status!.toString();
        project1jobItemModel.titleTxt.value = element.name!.toString();
        project1jobItemModel.authorTxt.value = element.user!.name!.toString();
        project1jobItemModel.messageTxt.value =
            element.commit!.message!.toString();
        project1jobItemModelList.add(project1jobItemModel);
      }
    }
    jobsModelObj.value.project1jobItemList.value = project1jobItemModelList;
  }

  void _onFetchJobsError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
