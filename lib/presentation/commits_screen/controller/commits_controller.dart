import '/core/app_export.dart';
import 'package:gitlab/presentation/commits_screen/models/commits_model.dart';
import 'package:flutter/material.dart';
import 'package:gitlab/data/models/commits/get_commits_resp.dart';
import 'package:gitlab/data/apiClient/api_client.dart';
import '../models/projectcommits_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class CommitsController extends GetxController {
  var projectName = Get.arguments[NavigationArgs.projectName];

  var projectId = Get.arguments[NavigationArgs.projectId];

  Rx<CommitsModel> commitsModelObj = CommitsModel().obs;

  List<GetCommitsResp> getCommitsResp = <GetCommitsResp>[];

  @override
  void onReady() {
    super.onReady();
    this.callFetchCommits(
      successCall: _onFetchCommitsSuccess,
      errCall: _onFetchCommitsError,
      id: Get.arguments[NavigationArgs.projectId],
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callFetchCommits(
      {VoidCallback? successCall, VoidCallback? errCall, String? id}) async {
    return Get.find<ApiClient>().fetchCommits(
        headers: {
          'PRIVATE-TOKEN': Get.find<PrefUtils>().getToken(),
        },
        onSuccess: (resp) {
          onFetchCommitsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onFetchCommitsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        id: id);
  }

  void onFetchCommitsSuccess(var response) {
    getCommitsResp =
        (response as List).map((e) => GetCommitsResp.fromJson(e)).toList();
  }

  void onFetchCommitsError(var err) {
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

  void _onFetchCommitsSuccess() {
    List<ProjectcommitsItemModel> projectcommitsItemModelList = [];
    if (getCommitsResp != null && getCommitsResp.isNotEmpty) {
      for (var element in getCommitsResp) {
        var projectcommitsItemModel = ProjectcommitsItemModel();
        projectcommitsItemModel.titleTxt.value = element.title!.toString();
        projectcommitsItemModel.messageTxt.value = element.message!.toString();
        projectcommitsItemModel.auhorTxt.value = element.authorName!.toString();
        projectcommitsItemModel.dateTxt.value =
            DateFormat("yyyy-MM-dd").format(DateTime.parse(element.createdAt!));
        ;
        projectcommitsItemModelList.add(projectcommitsItemModel);
      }
    }
    commitsModelObj.value.projectcommitsItemList.value =
        projectcommitsItemModelList;
  }

  void _onFetchCommitsError() {
    Fluttertoast.showToast(
      msg: "Something wen wrong!",
    );
  }
}
