class GetProjectsResp {
  int? id;
  String? description;
  String? name;
  String? nameWithNamespace;
  String? path;
  String? pathWithNamespace;
  String? createdAt;
  String? defaultBranch;
  List? tagList;
  List? topics;
  String? sshUrlToRepo;
  String? httpUrlToRepo;
  String? webUrl;
  String? readmeUrl;
  dynamic avatarUrl;
  int? forksCount;
  int? starCount;
  String? lastActivityAt;
  Namespace? namespace;
  String? containerRegistryImagePrefix;
  SLinks? sLinks;
  bool? packagesEnabled;
  bool? emptyRepo;
  bool? archived;
  String? visibility;
  Owner? owner;
  bool? resolveOutdatedDiffDiscussions;
  ContainerExpirationPolicy? containerExpirationPolicy;
  bool? issuesEnabled;
  bool? mergeRequestsEnabled;
  bool? wikiEnabled;
  bool? jobsEnabled;
  bool? snippetsEnabled;
  bool? containerRegistryEnabled;
  bool? serviceDeskEnabled;
  bool? canCreateMergeRequestIn;
  String? issuesAccessLevel;
  String? repositoryAccessLevel;
  String? mergeRequestsAccessLevel;
  String? forkingAccessLevel;
  String? wikiAccessLevel;
  String? buildsAccessLevel;
  String? snippetsAccessLevel;
  String? pagesAccessLevel;
  String? operationsAccessLevel;
  String? analyticsAccessLevel;
  String? containerRegistryAccessLevel;
  dynamic emailsDisabled;
  bool? sharedRunnersEnabled;
  bool? lfsEnabled;
  int? creatorId;
  String? importStatus;
  int? openIssuesCount;
  int? ciDefaultGitDepth;
  bool? ciForwardDeploymentEnabled;
  bool? ciJobTokenScopeEnabled;
  bool? publicJobs;
  int? buildTimeout;
  String? autoCancelPendingPipelines;
  dynamic buildCoverageRegex;
  dynamic ciConfigPath;
  List? sharedWithGroups;
  bool? onlyAllowMergeIfPipelineSucceeds;
  dynamic allowMergeOnSkippedPipeline;
  bool? restrictUserDefinedVariables;
  bool? requestAccessEnabled;
  bool? onlyAllowMergeIfAllDiscussionsAreResolved;
  bool? removeSourceBranchAfterMerge;
  bool? printingMergeRequestLinkEnabled;
  String? mergeMethod;
  String? squashOption;
  dynamic suggestionCommitMessage;
  dynamic mergeCommitTemplate;
  dynamic squashCommitTemplate;
  bool? autoDevopsEnabled;
  String? autoDevopsDeployStrategy;
  bool? autocloseReferencedIssues;
  bool? keepLatestArtifact;
  dynamic runnerTokenExpirationInterval;
  Permissions? permissions;
  dynamic serviceDeskAddress;
  ForkedFromProject? forkedFromProject;
  bool? mrDefaultTargetSelf;

  GetProjectsResp(
      {this.id,
      this.description,
      this.name,
      this.nameWithNamespace,
      this.path,
      this.pathWithNamespace,
      this.createdAt,
      this.defaultBranch,
      this.tagList,
      this.topics,
      this.sshUrlToRepo,
      this.httpUrlToRepo,
      this.webUrl,
      this.readmeUrl,
      this.avatarUrl,
      this.forksCount,
      this.starCount,
      this.lastActivityAt,
      this.namespace,
      this.containerRegistryImagePrefix,
      this.sLinks,
      this.packagesEnabled,
      this.emptyRepo,
      this.archived,
      this.visibility,
      this.owner,
      this.resolveOutdatedDiffDiscussions,
      this.containerExpirationPolicy,
      this.issuesEnabled,
      this.mergeRequestsEnabled,
      this.wikiEnabled,
      this.jobsEnabled,
      this.snippetsEnabled,
      this.containerRegistryEnabled,
      this.serviceDeskEnabled,
      this.canCreateMergeRequestIn,
      this.issuesAccessLevel,
      this.repositoryAccessLevel,
      this.mergeRequestsAccessLevel,
      this.forkingAccessLevel,
      this.wikiAccessLevel,
      this.buildsAccessLevel,
      this.snippetsAccessLevel,
      this.pagesAccessLevel,
      this.operationsAccessLevel,
      this.analyticsAccessLevel,
      this.containerRegistryAccessLevel,
      this.emailsDisabled,
      this.sharedRunnersEnabled,
      this.lfsEnabled,
      this.creatorId,
      this.importStatus,
      this.openIssuesCount,
      this.ciDefaultGitDepth,
      this.ciForwardDeploymentEnabled,
      this.ciJobTokenScopeEnabled,
      this.publicJobs,
      this.buildTimeout,
      this.autoCancelPendingPipelines,
      this.buildCoverageRegex,
      this.ciConfigPath,
      this.sharedWithGroups,
      this.onlyAllowMergeIfPipelineSucceeds,
      this.allowMergeOnSkippedPipeline,
      this.restrictUserDefinedVariables,
      this.requestAccessEnabled,
      this.onlyAllowMergeIfAllDiscussionsAreResolved,
      this.removeSourceBranchAfterMerge,
      this.printingMergeRequestLinkEnabled,
      this.mergeMethod,
      this.squashOption,
      this.suggestionCommitMessage,
      this.mergeCommitTemplate,
      this.squashCommitTemplate,
      this.autoDevopsEnabled,
      this.autoDevopsDeployStrategy,
      this.autocloseReferencedIssues,
      this.keepLatestArtifact,
      this.runnerTokenExpirationInterval,
      this.permissions,
      this.serviceDeskAddress,
      this.forkedFromProject,
      this.mrDefaultTargetSelf});

  GetProjectsResp.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    name = json['name'];
    nameWithNamespace = json['name_with_namespace'];
    path = json['path'];
    pathWithNamespace = json['path_with_namespace'];
    createdAt = json['created_at'];
    defaultBranch = json['default_branch'];
    if (json['tag_list'] != null) {
      tagList = [];
      json['tag_list'].forEach((v) {
        tagList?.add(v);
      });
    }
    if (json['topics'] != null) {
      topics = [];
      json['topics'].forEach((v) {
        topics?.add(v);
      });
    }
    sshUrlToRepo = json['ssh_url_to_repo'];
    httpUrlToRepo = json['http_url_to_repo'];
    webUrl = json['web_url'];
    readmeUrl = json['readme_url'];
    avatarUrl = json['avatar_url'];
    forksCount = json['forks_count'];
    starCount = json['star_count'];
    lastActivityAt = json['last_activity_at'];
    namespace = json['namespace'] != null
        ? Namespace.fromJson(json['namespace'])
        : null;
    containerRegistryImagePrefix = json['container_registry_image_prefix'];
    sLinks = json['_links'] != null ? SLinks.fromJson(json['_links']) : null;
    packagesEnabled = json['packages_enabled'];
    emptyRepo = json['empty_repo'];
    archived = json['archived'];
    visibility = json['visibility'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    resolveOutdatedDiffDiscussions = json['resolve_outdated_diff_discussions'];
    containerExpirationPolicy = json['container_expiration_policy'] != null
        ? ContainerExpirationPolicy.fromJson(
            json['container_expiration_policy'])
        : null;
    issuesEnabled = json['issues_enabled'];
    mergeRequestsEnabled = json['merge_requests_enabled'];
    wikiEnabled = json['wiki_enabled'];
    jobsEnabled = json['jobs_enabled'];
    snippetsEnabled = json['snippets_enabled'];
    containerRegistryEnabled = json['container_registry_enabled'];
    serviceDeskEnabled = json['service_desk_enabled'];
    canCreateMergeRequestIn = json['can_create_merge_request_in'];
    issuesAccessLevel = json['issues_access_level'];
    repositoryAccessLevel = json['repository_access_level'];
    mergeRequestsAccessLevel = json['merge_requests_access_level'];
    forkingAccessLevel = json['forking_access_level'];
    wikiAccessLevel = json['wiki_access_level'];
    buildsAccessLevel = json['builds_access_level'];
    snippetsAccessLevel = json['snippets_access_level'];
    pagesAccessLevel = json['pages_access_level'];
    operationsAccessLevel = json['operations_access_level'];
    analyticsAccessLevel = json['analytics_access_level'];
    containerRegistryAccessLevel = json['container_registry_access_level'];
    emailsDisabled = json['emails_disabled'];
    sharedRunnersEnabled = json['shared_runners_enabled'];
    lfsEnabled = json['lfs_enabled'];
    creatorId = json['creator_id'];
    importStatus = json['import_status'];
    openIssuesCount = json['open_issues_count'];
    ciDefaultGitDepth = json['ci_default_git_depth'];
    ciForwardDeploymentEnabled = json['ci_forward_deployment_enabled'];
    ciJobTokenScopeEnabled = json['ci_job_token_scope_enabled'];
    publicJobs = json['public_jobs'];
    buildTimeout = json['build_timeout'];
    autoCancelPendingPipelines = json['auto_cancel_pending_pipelines'];
    buildCoverageRegex = json['build_coverage_regex'];
    ciConfigPath = json['ci_config_path'];
    if (json['shared_with_groups'] != null) {
      sharedWithGroups = [];
      json['shared_with_groups'].forEach((v) {
        sharedWithGroups?.add(v);
      });
    }
    onlyAllowMergeIfPipelineSucceeds =
        json['only_allow_merge_if_pipeline_succeeds'];
    allowMergeOnSkippedPipeline = json['allow_merge_on_skipped_pipeline'];
    restrictUserDefinedVariables = json['restrict_user_defined_variables'];
    requestAccessEnabled = json['request_access_enabled'];
    onlyAllowMergeIfAllDiscussionsAreResolved =
        json['only_allow_merge_if_all_discussions_are_resolved'];
    removeSourceBranchAfterMerge = json['remove_source_branch_after_merge'];
    printingMergeRequestLinkEnabled =
        json['printing_merge_request_link_enabled'];
    mergeMethod = json['merge_method'];
    squashOption = json['squash_option'];
    suggestionCommitMessage = json['suggestion_commit_message'];
    mergeCommitTemplate = json['merge_commit_template'];
    squashCommitTemplate = json['squash_commit_template'];
    autoDevopsEnabled = json['auto_devops_enabled'];
    autoDevopsDeployStrategy = json['auto_devops_deploy_strategy'];
    autocloseReferencedIssues = json['autoclose_referenced_issues'];
    keepLatestArtifact = json['keep_latest_artifact'];
    runnerTokenExpirationInterval = json['runner_token_expiration_interval'];
    permissions = json['permissions'] != null
        ? Permissions.fromJson(json['permissions'])
        : null;
    serviceDeskAddress = json['service_desk_address'];
    forkedFromProject = json['forked_from_project'] != null
        ? ForkedFromProject.fromJson(json['forked_from_project'])
        : null;
    mrDefaultTargetSelf = json['mr_default_target_self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.nameWithNamespace != null) {
      data['name_with_namespace'] = this.nameWithNamespace;
    }
    if (this.path != null) {
      data['path'] = this.path;
    }
    if (this.pathWithNamespace != null) {
      data['path_with_namespace'] = this.pathWithNamespace;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.defaultBranch != null) {
      data['default_branch'] = this.defaultBranch;
    }
    if (this.tagList != null) {
      data['tag_list'] = this.tagList?.map((v) => v).toList();
    }
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v).toList();
    }
    if (this.sshUrlToRepo != null) {
      data['ssh_url_to_repo'] = this.sshUrlToRepo;
    }
    if (this.httpUrlToRepo != null) {
      data['http_url_to_repo'] = this.httpUrlToRepo;
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    if (this.readmeUrl != null) {
      data['readme_url'] = this.readmeUrl;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.forksCount != null) {
      data['forks_count'] = this.forksCount;
    }
    if (this.starCount != null) {
      data['star_count'] = this.starCount;
    }
    if (this.lastActivityAt != null) {
      data['last_activity_at'] = this.lastActivityAt;
    }
    if (this.namespace != null) {
      data['namespace'] = this.namespace?.toJson();
    }
    if (this.containerRegistryImagePrefix != null) {
      data['container_registry_image_prefix'] =
          this.containerRegistryImagePrefix;
    }
    if (this.sLinks != null) {
      data['_links'] = this.sLinks?.toJson();
    }
    if (this.packagesEnabled != null) {
      data['packages_enabled'] = this.packagesEnabled;
    }
    if (this.emptyRepo != null) {
      data['empty_repo'] = this.emptyRepo;
    }
    if (this.archived != null) {
      data['archived'] = this.archived;
    }
    if (this.visibility != null) {
      data['visibility'] = this.visibility;
    }
    if (this.owner != null) {
      data['owner'] = this.owner?.toJson();
    }
    if (this.resolveOutdatedDiffDiscussions != null) {
      data['resolve_outdated_diff_discussions'] =
          this.resolveOutdatedDiffDiscussions;
    }
    if (this.containerExpirationPolicy != null) {
      data['container_expiration_policy'] =
          this.containerExpirationPolicy?.toJson();
    }
    if (this.issuesEnabled != null) {
      data['issues_enabled'] = this.issuesEnabled;
    }
    if (this.mergeRequestsEnabled != null) {
      data['merge_requests_enabled'] = this.mergeRequestsEnabled;
    }
    if (this.wikiEnabled != null) {
      data['wiki_enabled'] = this.wikiEnabled;
    }
    if (this.jobsEnabled != null) {
      data['jobs_enabled'] = this.jobsEnabled;
    }
    if (this.snippetsEnabled != null) {
      data['snippets_enabled'] = this.snippetsEnabled;
    }
    if (this.containerRegistryEnabled != null) {
      data['container_registry_enabled'] = this.containerRegistryEnabled;
    }
    if (this.serviceDeskEnabled != null) {
      data['service_desk_enabled'] = this.serviceDeskEnabled;
    }
    if (this.canCreateMergeRequestIn != null) {
      data['can_create_merge_request_in'] = this.canCreateMergeRequestIn;
    }
    if (this.issuesAccessLevel != null) {
      data['issues_access_level'] = this.issuesAccessLevel;
    }
    if (this.repositoryAccessLevel != null) {
      data['repository_access_level'] = this.repositoryAccessLevel;
    }
    if (this.mergeRequestsAccessLevel != null) {
      data['merge_requests_access_level'] = this.mergeRequestsAccessLevel;
    }
    if (this.forkingAccessLevel != null) {
      data['forking_access_level'] = this.forkingAccessLevel;
    }
    if (this.wikiAccessLevel != null) {
      data['wiki_access_level'] = this.wikiAccessLevel;
    }
    if (this.buildsAccessLevel != null) {
      data['builds_access_level'] = this.buildsAccessLevel;
    }
    if (this.snippetsAccessLevel != null) {
      data['snippets_access_level'] = this.snippetsAccessLevel;
    }
    if (this.pagesAccessLevel != null) {
      data['pages_access_level'] = this.pagesAccessLevel;
    }
    if (this.operationsAccessLevel != null) {
      data['operations_access_level'] = this.operationsAccessLevel;
    }
    if (this.analyticsAccessLevel != null) {
      data['analytics_access_level'] = this.analyticsAccessLevel;
    }
    if (this.containerRegistryAccessLevel != null) {
      data['container_registry_access_level'] =
          this.containerRegistryAccessLevel;
    }
    if (this.emailsDisabled != null) {
      data['emails_disabled'] = this.emailsDisabled;
    }
    if (this.sharedRunnersEnabled != null) {
      data['shared_runners_enabled'] = this.sharedRunnersEnabled;
    }
    if (this.lfsEnabled != null) {
      data['lfs_enabled'] = this.lfsEnabled;
    }
    if (this.creatorId != null) {
      data['creator_id'] = this.creatorId;
    }
    if (this.importStatus != null) {
      data['import_status'] = this.importStatus;
    }
    if (this.openIssuesCount != null) {
      data['open_issues_count'] = this.openIssuesCount;
    }
    if (this.ciDefaultGitDepth != null) {
      data['ci_default_git_depth'] = this.ciDefaultGitDepth;
    }
    if (this.ciForwardDeploymentEnabled != null) {
      data['ci_forward_deployment_enabled'] = this.ciForwardDeploymentEnabled;
    }
    if (this.ciJobTokenScopeEnabled != null) {
      data['ci_job_token_scope_enabled'] = this.ciJobTokenScopeEnabled;
    }
    if (this.publicJobs != null) {
      data['public_jobs'] = this.publicJobs;
    }
    if (this.buildTimeout != null) {
      data['build_timeout'] = this.buildTimeout;
    }
    if (this.autoCancelPendingPipelines != null) {
      data['auto_cancel_pending_pipelines'] = this.autoCancelPendingPipelines;
    }
    if (this.buildCoverageRegex != null) {
      data['build_coverage_regex'] = this.buildCoverageRegex;
    }
    if (this.ciConfigPath != null) {
      data['ci_config_path'] = this.ciConfigPath;
    }
    if (this.sharedWithGroups != null) {
      data['shared_with_groups'] =
          this.sharedWithGroups?.map((v) => v).toList();
    }
    if (this.onlyAllowMergeIfPipelineSucceeds != null) {
      data['only_allow_merge_if_pipeline_succeeds'] =
          this.onlyAllowMergeIfPipelineSucceeds;
    }
    if (this.allowMergeOnSkippedPipeline != null) {
      data['allow_merge_on_skipped_pipeline'] =
          this.allowMergeOnSkippedPipeline;
    }
    if (this.restrictUserDefinedVariables != null) {
      data['restrict_user_defined_variables'] =
          this.restrictUserDefinedVariables;
    }
    if (this.requestAccessEnabled != null) {
      data['request_access_enabled'] = this.requestAccessEnabled;
    }
    if (this.onlyAllowMergeIfAllDiscussionsAreResolved != null) {
      data['only_allow_merge_if_all_discussions_are_resolved'] =
          this.onlyAllowMergeIfAllDiscussionsAreResolved;
    }
    if (this.removeSourceBranchAfterMerge != null) {
      data['remove_source_branch_after_merge'] =
          this.removeSourceBranchAfterMerge;
    }
    if (this.printingMergeRequestLinkEnabled != null) {
      data['printing_merge_request_link_enabled'] =
          this.printingMergeRequestLinkEnabled;
    }
    if (this.mergeMethod != null) {
      data['merge_method'] = this.mergeMethod;
    }
    if (this.squashOption != null) {
      data['squash_option'] = this.squashOption;
    }
    if (this.suggestionCommitMessage != null) {
      data['suggestion_commit_message'] = this.suggestionCommitMessage;
    }
    if (this.mergeCommitTemplate != null) {
      data['merge_commit_template'] = this.mergeCommitTemplate;
    }
    if (this.squashCommitTemplate != null) {
      data['squash_commit_template'] = this.squashCommitTemplate;
    }
    if (this.autoDevopsEnabled != null) {
      data['auto_devops_enabled'] = this.autoDevopsEnabled;
    }
    if (this.autoDevopsDeployStrategy != null) {
      data['auto_devops_deploy_strategy'] = this.autoDevopsDeployStrategy;
    }
    if (this.autocloseReferencedIssues != null) {
      data['autoclose_referenced_issues'] = this.autocloseReferencedIssues;
    }
    if (this.keepLatestArtifact != null) {
      data['keep_latest_artifact'] = this.keepLatestArtifact;
    }
    if (this.runnerTokenExpirationInterval != null) {
      data['runner_token_expiration_interval'] =
          this.runnerTokenExpirationInterval;
    }
    if (this.permissions != null) {
      data['permissions'] = this.permissions?.toJson();
    }
    if (this.serviceDeskAddress != null) {
      data['service_desk_address'] = this.serviceDeskAddress;
    }
    if (this.forkedFromProject != null) {
      data['forked_from_project'] = this.forkedFromProject?.toJson();
    }
    if (this.mrDefaultTargetSelf != null) {
      data['mr_default_target_self'] = this.mrDefaultTargetSelf;
    }
    return data;
  }
}

class Namespace {
  int? id;
  String? name;
  String? path;
  String? kind;
  String? fullPath;
  dynamic parentId;
  String? avatarUrl;
  String? webUrl;

  Namespace(
      {this.id,
      this.name,
      this.path,
      this.kind,
      this.fullPath,
      this.parentId,
      this.avatarUrl,
      this.webUrl});

  Namespace.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    path = json['path'];
    kind = json['kind'];
    fullPath = json['full_path'];
    parentId = json['parent_id'];
    avatarUrl = json['avatar_url'];
    webUrl = json['web_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.path != null) {
      data['path'] = this.path;
    }
    if (this.kind != null) {
      data['kind'] = this.kind;
    }
    if (this.fullPath != null) {
      data['full_path'] = this.fullPath;
    }
    if (this.parentId != null) {
      data['parent_id'] = this.parentId;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    return data;
  }
}

class SLinks {
  String? self;
  String? issues;
  String? mergeRequests;
  String? repoBranches;
  String? labels;
  String? events;
  String? members;

  SLinks(
      {this.self,
      this.issues,
      this.mergeRequests,
      this.repoBranches,
      this.labels,
      this.events,
      this.members});

  SLinks.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    issues = json['issues'];
    mergeRequests = json['merge_requests'];
    repoBranches = json['repo_branches'];
    labels = json['labels'];
    events = json['events'];
    members = json['members'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.self != null) {
      data['self'] = this.self;
    }
    if (this.issues != null) {
      data['issues'] = this.issues;
    }
    if (this.mergeRequests != null) {
      data['merge_requests'] = this.mergeRequests;
    }
    if (this.repoBranches != null) {
      data['repo_branches'] = this.repoBranches;
    }
    if (this.labels != null) {
      data['labels'] = this.labels;
    }
    if (this.events != null) {
      data['events'] = this.events;
    }
    if (this.members != null) {
      data['members'] = this.members;
    }
    return data;
  }
}

class Owner {
  int? id;
  String? username;
  String? name;
  String? state;
  String? avatarUrl;
  String? webUrl;

  Owner(
      {this.id,
      this.username,
      this.name,
      this.state,
      this.avatarUrl,
      this.webUrl});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    state = json['state'];
    avatarUrl = json['avatar_url'];
    webUrl = json['web_url'];
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
    return data;
  }
}

class ContainerExpirationPolicy {
  String? cadence;
  bool? enabled;
  int? keepN;
  String? olderThan;
  String? nameRegex;
  dynamic nameRegexKeep;
  String? nextRunAt;

  ContainerExpirationPolicy(
      {this.cadence,
      this.enabled,
      this.keepN,
      this.olderThan,
      this.nameRegex,
      this.nameRegexKeep,
      this.nextRunAt});

  ContainerExpirationPolicy.fromJson(Map<String, dynamic> json) {
    cadence = json['cadence'];
    enabled = json['enabled'];
    keepN = json['keep_n'];
    olderThan = json['older_than'];
    nameRegex = json['name_regex'];
    nameRegexKeep = json['name_regex_keep'];
    nextRunAt = json['next_run_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.cadence != null) {
      data['cadence'] = this.cadence;
    }
    if (this.enabled != null) {
      data['enabled'] = this.enabled;
    }
    if (this.keepN != null) {
      data['keep_n'] = this.keepN;
    }
    if (this.olderThan != null) {
      data['older_than'] = this.olderThan;
    }
    if (this.nameRegex != null) {
      data['name_regex'] = this.nameRegex;
    }
    if (this.nameRegexKeep != null) {
      data['name_regex_keep'] = this.nameRegexKeep;
    }
    if (this.nextRunAt != null) {
      data['next_run_at'] = this.nextRunAt;
    }
    return data;
  }
}

class Permissions {
  dynamic projectAccess;
  dynamic groupAccess;

  Permissions({this.projectAccess, this.groupAccess});

  Permissions.fromJson(Map<String, dynamic> json) {
    projectAccess = json['project_access'];
    groupAccess = json['group_access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.projectAccess != null) {
      data['project_access'] = this.projectAccess;
    }
    if (this.groupAccess != null) {
      data['group_access'] = this.groupAccess;
    }
    return data;
  }
}

class ProjectAccess {
  int? accessLevel;
  int? notificationLevel;

  ProjectAccess({this.accessLevel, this.notificationLevel});

  ProjectAccess.fromJson(Map<String, dynamic> json) {
    accessLevel = json['access_level'];
    notificationLevel = json['notification_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.accessLevel != null) {
      data['access_level'] = this.accessLevel;
    }
    if (this.notificationLevel != null) {
      data['notification_level'] = this.notificationLevel;
    }
    return data;
  }
}

class ForkedFromProject {
  int? id;
  String? description;
  String? name;
  String? nameWithNamespace;
  String? path;
  String? pathWithNamespace;
  String? createdAt;
  String? defaultBranch;
  List? tagList;
  List? topics;
  String? sshUrlToRepo;
  String? httpUrlToRepo;
  String? webUrl;
  String? readmeUrl;
  dynamic avatarUrl;
  int? forksCount;
  int? starCount;
  String? lastActivityAt;
  Namespace? namespace;

  ForkedFromProject(
      {this.id,
      this.description,
      this.name,
      this.nameWithNamespace,
      this.path,
      this.pathWithNamespace,
      this.createdAt,
      this.defaultBranch,
      this.tagList,
      this.topics,
      this.sshUrlToRepo,
      this.httpUrlToRepo,
      this.webUrl,
      this.readmeUrl,
      this.avatarUrl,
      this.forksCount,
      this.starCount,
      this.lastActivityAt,
      this.namespace});

  ForkedFromProject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    name = json['name'];
    nameWithNamespace = json['name_with_namespace'];
    path = json['path'];
    pathWithNamespace = json['path_with_namespace'];
    createdAt = json['created_at'];
    defaultBranch = json['default_branch'];
    if (json['tag_list'] != null) {
      tagList = [];
      json['tag_list'].forEach((v) {
        tagList?.add(v);
      });
    }
    if (json['topics'] != null) {
      topics = [];
      json['topics'].forEach((v) {
        topics?.add(v);
      });
    }
    sshUrlToRepo = json['ssh_url_to_repo'];
    httpUrlToRepo = json['http_url_to_repo'];
    webUrl = json['web_url'];
    readmeUrl = json['readme_url'];
    avatarUrl = json['avatar_url'];
    forksCount = json['forks_count'];
    starCount = json['star_count'];
    lastActivityAt = json['last_activity_at'];
    namespace = json['namespace'] != null
        ? Namespace.fromJson(json['namespace'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.nameWithNamespace != null) {
      data['name_with_namespace'] = this.nameWithNamespace;
    }
    if (this.path != null) {
      data['path'] = this.path;
    }
    if (this.pathWithNamespace != null) {
      data['path_with_namespace'] = this.pathWithNamespace;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.defaultBranch != null) {
      data['default_branch'] = this.defaultBranch;
    }
    if (this.tagList != null) {
      data['tag_list'] = this.tagList?.map((v) => v).toList();
    }
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v).toList();
    }
    if (this.sshUrlToRepo != null) {
      data['ssh_url_to_repo'] = this.sshUrlToRepo;
    }
    if (this.httpUrlToRepo != null) {
      data['http_url_to_repo'] = this.httpUrlToRepo;
    }
    if (this.webUrl != null) {
      data['web_url'] = this.webUrl;
    }
    if (this.readmeUrl != null) {
      data['readme_url'] = this.readmeUrl;
    }
    if (this.avatarUrl != null) {
      data['avatar_url'] = this.avatarUrl;
    }
    if (this.forksCount != null) {
      data['forks_count'] = this.forksCount;
    }
    if (this.starCount != null) {
      data['star_count'] = this.starCount;
    }
    if (this.lastActivityAt != null) {
      data['last_activity_at'] = this.lastActivityAt;
    }
    if (this.namespace != null) {
      data['namespace'] = this.namespace?.toJson();
    }
    return data;
  }
}

class SharedWithGroups {
  int? groupId;
  String? groupName;
  String? groupFullPath;
  int? groupAccessLevel;
  dynamic expiresAt;

  SharedWithGroups(
      {this.groupId,
      this.groupName,
      this.groupFullPath,
      this.groupAccessLevel,
      this.expiresAt});

  SharedWithGroups.fromJson(Map<String, dynamic> json) {
    groupId = json['group_id'];
    groupName = json['group_name'];
    groupFullPath = json['group_full_path'];
    groupAccessLevel = json['group_access_level'];
    expiresAt = json['expires_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.groupId != null) {
      data['group_id'] = this.groupId;
    }
    if (this.groupName != null) {
      data['group_name'] = this.groupName;
    }
    if (this.groupFullPath != null) {
      data['group_full_path'] = this.groupFullPath;
    }
    if (this.groupAccessLevel != null) {
      data['group_access_level'] = this.groupAccessLevel;
    }
    if (this.expiresAt != null) {
      data['expires_at'] = this.expiresAt;
    }
    return data;
  }
}
