class GetJobsResp {
  int? id;
  String? status;
  String? stage;
  String? name;
  String? ref;
  bool? tag;
  dynamic coverage;
  bool? allowFailure;
  String? createdAt;
  String? startedAt;
  String? finishedAt;
  double? duration;
  double? queuedDuration;
  User? user;
  Commit? commit;
  Pipeline? pipeline;
  String? webUrl;
  List<Artifacts>? artifacts;
  Runner? runner;
  dynamic artifactsExpireAt;
  List<String>? tagList;
  String? failureReason;

  GetJobsResp(
      {this.id,
      this.status,
      this.stage,
      this.name,
      this.ref,
      this.tag,
      this.coverage,
      this.allowFailure,
      this.createdAt,
      this.startedAt,
      this.finishedAt,
      this.duration,
      this.queuedDuration,
      this.user,
      this.commit,
      this.pipeline,
      this.webUrl,
      this.artifacts,
      this.runner,
      this.artifactsExpireAt,
      this.tagList,
      this.failureReason});

  GetJobsResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    stage = json['stage'];
    name = json['name'];
    ref = json['ref'];
    tag = json['tag'];
    coverage = json['coverage'];
    allowFailure = json['allow_failure'];
    createdAt = json['created_at'];
    startedAt = json['started_at'];
    finishedAt = json['finished_at'];
    duration = json['duration'];
    queuedDuration = json['queued_duration'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    commit = json['commit'] != null ? Commit.fromJson(json['commit']) : null;
    pipeline =
        json['pipeline'] != null ? Pipeline.fromJson(json['pipeline']) : null;
    webUrl = json['web_url'];
    if (json['artifacts'] != null) {
      artifacts = <Artifacts>[];
      json['artifacts'].forEach((v) {
        artifacts?.add(Artifacts.fromJson(v));
      });
    }
    runner = json['runner'] != null ? Runner.fromJson(json['runner']) : null;
    artifactsExpireAt = json['artifacts_expire_at'];
    tagList = json['tag_list'].cast<String>();
    failureReason = json['failure_reason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.stage != null) {
      data['stage'] = this.stage;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.ref != null) {
      data['ref'] = this.ref;
    }
    if (this.tag != null) {
      data['tag'] = this.tag;
    }
    if (this.coverage != null) {
      data['coverage'] = this.coverage;
    }
    if (this.allowFailure != null) {
      data['allow_failure'] = this.allowFailure;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.startedAt != null) {
      data['started_at'] = this.startedAt;
    }
    if (this.finishedAt != null) {
      data['finished_at'] = this.finishedAt;
    }
    if (this.duration != null) {
      data['duration'] = this.duration;
    }
    if (this.queuedDuration != null) {
      data['queued_duration'] = this.queuedDuration;
    }
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    if (this.commit != null) {
      data['commit'] = this.commit?.toJson();
    }
    if (this.pipeline != null) {
      data['pipeline'] = this.pipeline?.toJson();
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    if (this.artifacts != null) {
      data['artifacts'] = this.artifacts?.map((v) => v.toJson()).toList();
    }
    if (this.runner != null) {
      data['runner'] = this.runner?.toJson();
    }
    if (this.artifactsExpireAt != null) {
      data['artifacts_expire_at'] = this.artifactsExpireAt;
    }
    if (this.tagList != null) {
      data['tag_list'] = this.tagList;
    }
    if (this.failureReason != null) {
      data['failure_reason'] = this.failureReason;
    }
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? name;
  String? state;
  String? avatarUrl;
  String? webUrl;
  String? createdAt;
  String? bio;
  String? location;
  String? publicEmail;
  String? skype;
  String? linkedin;
  String? twitter;
  String? websiteUrl;
  String? organization;
  String? jobTitle;
  String? pronouns;
  bool? bot;
  dynamic workInformation;
  int? followers;
  int? following;
  String? localTime;

  User(
      {this.id,
      this.username,
      this.name,
      this.state,
      this.avatarUrl,
      this.webUrl,
      this.createdAt,
      this.bio,
      this.location,
      this.publicEmail,
      this.skype,
      this.linkedin,
      this.twitter,
      this.websiteUrl,
      this.organization,
      this.jobTitle,
      this.pronouns,
      this.bot,
      this.workInformation,
      this.followers,
      this.following,
      this.localTime});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    state = json['state'];
    avatarUrl = json['avatar_url'];
    webUrl = json['web_url'];
    createdAt = json['created_at'];
    bio = json['bio'];
    location = json['location'];
    publicEmail = json['public_email'];
    skype = json['skype'];
    linkedin = json['linkedin'];
    twitter = json['twitter'];
    websiteUrl = json['website_url'];
    organization = json['organization'];
    jobTitle = json['job_title'];
    pronouns = json['pronouns'];
    bot = json['bot'];
    workInformation = json['work_information'];
    followers = json['followers'];
    following = json['following'];
    localTime = json['local_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.state != null) {
      data['state'] = this.state;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.bio != null) {
      data['bio'] = this.bio;
    }
    if (this.location != null) {
      data['location'] = this.location;
    }
    if (this.publicEmail != null) {
      data['public_email'] = this.publicEmail;
    }
    if (this.skype != null) {
      data['skype'] = this.skype;
    }
    if (this.linkedin != null) {
      data['linkedin'] = this.linkedin;
    }
    if (this.twitter != null) {
      data['twitter'] = this.twitter;
    }
    if (this.websiteUrl != null) {
      data['website_url'] = this.websiteUrl;
    }
    if (this.organization != null) {
      data['organization'] = this.organization;
    }
    if (this.jobTitle != null) {
      data['job_title'] = this.jobTitle;
    }
    if (this.pronouns != null) {
      data['pronouns'] = this.pronouns;
    }
    if (this.bot != null) {
      data['bot'] = this.bot;
    }
    if (this.workInformation != null) {
      data['work_information'] = this.workInformation;
    }
    if (this.followers != null) {
      data['followers'] = this.followers;
    }
    if (this.following != null) {
      data['following'] = this.following;
    }
    if (this.localTime != null) {
      data['local_time'] = this.localTime;
    }
    return data;
  }
}

class Commit {
  String? id;
  String? shortId;
  String? createdAt;
  List<String>? parentIds;
  String? title;
  String? message;
  String? authorName;
  String? authorEmail;
  String? authoredDate;
  String? committerName;
  String? committerEmail;
  String? committedDate;
  Trailers? trailers;
  String? webUrl;

  Commit(
      {this.id,
      this.shortId,
      this.createdAt,
      this.parentIds,
      this.title,
      this.message,
      this.authorName,
      this.authorEmail,
      this.authoredDate,
      this.committerName,
      this.committerEmail,
      this.committedDate,
      this.trailers,
      this.webUrl});

  Commit.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shortId = json['short_id'];
    createdAt = json['created_at'];
    parentIds = json['parent_ids'].cast<String>();
    title = json['title'];
    message = json['message'];
    authorName = json['author_name'];
    authorEmail = json['author_email'];
    authoredDate = json['authored_date'];
    committerName = json['committer_name'];
    committerEmail = json['committer_email'];
    committedDate = json['committed_date'];
    trailers =
        json['trailers'] != null ? Trailers.fromJson(json['trailers']) : null;
    webUrl = json['web_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.shortId != null) {
      data['short_id'] = this.shortId;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.parentIds != null) {
      data['parent_ids'] = this.parentIds;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.message != null) {
      data['message'] = this.message;
    }
    if (this.authorName != null) {
      data['author_name'] = this.authorName;
    }
    if (this.authorEmail != null) {
      data['author_email'] = this.authorEmail;
    }
    if (this.authoredDate != null) {
      data['authored_date'] = this.authoredDate;
    }
    if (this.committerName != null) {
      data['committer_name'] = this.committerName;
    }
    if (this.committerEmail != null) {
      data['committer_email'] = this.committerEmail;
    }
    if (this.committedDate != null) {
      data['committed_date'] = this.committedDate;
    }
    if (this.trailers != null) {
      data['trailers'] = this.trailers?.toJson();
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    return data;
  }
}

class Trailers {
  Trailers();

  Trailers.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    return data;
  }
}

class Pipeline {
  int? id;
  int? iid;
  int? projectId;
  String? sha;
  String? ref;
  String? status;
  String? source;
  String? createdAt;
  String? updatedAt;
  String? webUrl;

  Pipeline(
      {this.id,
      this.iid,
      this.projectId,
      this.sha,
      this.ref,
      this.status,
      this.source,
      this.createdAt,
      this.updatedAt,
      this.webUrl});

  Pipeline.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    iid = json['iid'];
    projectId = json['project_id'];
    sha = json['sha'];
    ref = json['ref'];
    status = json['status'];
    source = json['source'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    webUrl = json['web_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.iid != null) {
      data['iid'] = this.iid;
    }
    if (this.projectId != null) {
      data['project_id'] = this.projectId;
    }
    if (this.sha != null) {
      data['sha'] = this.sha;
    }
    if (this.ref != null) {
      data['ref'] = this.ref;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.source != null) {
      data['source'] = this.source;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    return data;
  }
}

class Artifacts {
  String? fileType;
  int? size;
  String? filename;
  dynamic fileFormat;

  Artifacts({this.fileType, this.size, this.filename, this.fileFormat});

  Artifacts.fromJson(Map<String, dynamic> json) {
    fileType = json['file_type'];
    size = json['size'];
    filename = json['filename'];
    fileFormat = json['file_format'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fileType != null) {
      data['file_type'] = this.fileType;
    }
    if (this.size != null) {
      data['size'] = this.size;
    }
    if (this.filename != null) {
      data['filename'] = this.filename;
    }
    if (this.fileFormat != null) {
      data['file_format'] = this.fileFormat;
    }
    return data;
  }
}

class Runner {
  int? id;
  String? description;
  String? ipAddress;
  bool? active;
  bool? paused;
  bool? isShared;
  String? runnerType;
  String? name;
  bool? online;
  String? status;

  Runner(
      {this.id,
      this.description,
      this.ipAddress,
      this.active,
      this.paused,
      this.isShared,
      this.runnerType,
      this.name,
      this.online,
      this.status});

  Runner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    ipAddress = json['ip_address'];
    active = json['active'];
    paused = json['paused'];
    isShared = json['is_shared'];
    runnerType = json['runner_type'];
    name = json['name'];
    online = json['online'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.ipAddress != null) {
      data['ip_address'] = this.ipAddress;
    }
    if (this.active != null) {
      data['active'] = this.active;
    }
    if (this.paused != null) {
      data['paused'] = this.paused;
    }
    if (this.isShared != null) {
      data['is_shared'] = this.isShared;
    }
    if (this.runnerType != null) {
      data['runner_type'] = this.runnerType;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.online != null) {
      data['online'] = this.online;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    return data;
  }
}
