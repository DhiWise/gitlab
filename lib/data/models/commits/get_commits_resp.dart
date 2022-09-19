class GetCommitsResp {
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

  GetCommitsResp(
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

  GetCommitsResp.fromJson(Map<String, dynamic> json) {
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
