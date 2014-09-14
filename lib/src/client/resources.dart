part of androidpublisher_v2_api;

class EditsResource_ {

  final Client _client;

  final EditsApklistingsResource_ apklistings;
  final EditsApksResource_ apks;
  final EditsDetailsResource_ details;
  final EditsExpansionfilesResource_ expansionfiles;
  final EditsImagesResource_ images;
  final EditsListingsResource_ listings;
  final EditsTestersResource_ testers;
  final EditsTracksResource_ tracks;

  EditsResource_(Client client) :
      _client = client,
      apklistings = new EditsApklistingsResource_(client),
      apks = new EditsApksResource_(client),
      details = new EditsDetailsResource_(client),
      expansionfiles = new EditsExpansionfilesResource_(client),
      images = new EditsImagesResource_(client),
      listings = new EditsListingsResource_(client),
      testers = new EditsTestersResource_(client),
      tracks = new EditsTracksResource_(client);

  /**
   * Commits/applies the changes made in this edit back to the app.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppEdit> commit(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}:commit";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Deletes an edit for an app. Creating a new edit will automatically delete any of your previous edits so this method need only be called if you want to preemptively abandon an edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns information about the edit specified. Calls will fail if the edit is no long active (e.g. has been deleted, superseded or expired).
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppEdit> get(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Creates a new edit for an app, populated with the app's current state.
   *
   * [request] - AppEdit to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppEdit> insert(AppEdit request, core.String packageName, {core.Map optParams}) {
    var url = "{packageName}/edits";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppEdit.fromJson(data));
  }

  /**
   * Checks that the edit can be successfully committed. The edit's changes are not applied to the live app.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppEdit> validate(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}:validate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppEdit.fromJson(data));
  }
}

class EditsApklistingsResource_ {

  final Client _client;

  EditsApklistingsResource_(Client client) :
      _client = client;

  /**
   * Deletes the APK-specific localized listing for a specified APK and language code.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String packageName, core.String editId, core.int apkVersionCode, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Deletes all the APK-specific localized listings for a specified APK.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> deleteall(core.String packageName, core.String editId, core.int apkVersionCode, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Fetches the APK-specific localized listing for a specified APK and language code.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ApkListing> get(core.String packageName, core.String editId, core.int apkVersionCode, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ApkListing.fromJson(data));
  }

  /**
   * Lists all the APK-specific localized listings for a specified APK.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ApkListingsListResponse> list(core.String packageName, core.String editId, core.int apkVersionCode, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ApkListingsListResponse.fromJson(data));
  }

  /**
   * Updates or creates the APK-specific localized listing for a specified APK and language code. This method supports patch semantics.
   *
   * [request] - ApkListing to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ApkListing> patch(ApkListing request, core.String packageName, core.String editId, core.int apkVersionCode, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ApkListing.fromJson(data));
  }

  /**
   * Updates or creates the APK-specific localized listing for a specified APK and language code.
   *
   * [request] - ApkListing to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The APK version code whose APK-specific listings should be read or modified.
   *
   * [language] - The language code (a BCP-47 language tag) of the APK-specific localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ApkListing> update(ApkListing request, core.String packageName, core.String editId, core.int apkVersionCode, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ApkListing.fromJson(data));
  }
}

class EditsApksResource_ {

  final Client _client;

  EditsApksResource_(Client client) :
      _client = client;

  /**
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ApksListResponse> list(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ApksListResponse.fromJson(data));
  }

  /**
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Apk> upload(core.String packageName, core.String editId, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks";
    var uploadUrl = "/upload/androidpublisher/v2/applications/{packageName}/edits/{editId}/apks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Apk.fromJson(data));
  }
}

class EditsDetailsResource_ {

  final Client _client;

  EditsDetailsResource_(Client client) :
      _client = client;

  /**
   * Fetches app details for this edit. This includes the default language and developer support contact information.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppDetails> get(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/details";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppDetails.fromJson(data));
  }

  /**
   * Updates app details for this edit. This method supports patch semantics.
   *
   * [request] - AppDetails to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppDetails> patch(AppDetails request, core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/details";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppDetails.fromJson(data));
  }

  /**
   * Updates app details for this edit.
   *
   * [request] - AppDetails to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AppDetails> update(AppDetails request, core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/details";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AppDetails.fromJson(data));
  }
}

class EditsExpansionfilesResource_ {

  final Client _client;

  EditsExpansionfilesResource_(Client client) :
      _client = client;

  /**
   * Fetches the Expansion File configuration for the APK specified.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File configuration is being read or modified.
   *
   * [expansionFileType]
   *   Allowed values:
   *     main - 
   *     patch - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExpansionFile> get(core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (expansionFileType == null) paramErrors.add("expansionFileType is required");
    if (expansionFileType != null && !["main", "patch"].contains(expansionFileType)) {
      paramErrors.add("Allowed values for expansionFileType: main, patch");
    }
    if (expansionFileType != null) urlParams["expansionFileType"] = expansionFileType;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Updates the APK's Expansion File configuration to reference another APK's Expansion Files. To add a new Expansion File use the Upload method. This method supports patch semantics.
   *
   * [request] - ExpansionFile to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File configuration is being read or modified.
   *
   * [expansionFileType]
   *   Allowed values:
   *     main - 
   *     patch - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExpansionFile> patch(ExpansionFile request, core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (expansionFileType == null) paramErrors.add("expansionFileType is required");
    if (expansionFileType != null && !["main", "patch"].contains(expansionFileType)) {
      paramErrors.add("Allowed values for expansionFileType: main, patch");
    }
    if (expansionFileType != null) urlParams["expansionFileType"] = expansionFileType;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Updates the APK's Expansion File configuration to reference another APK's Expansion Files. To add a new Expansion File use the Upload method.
   *
   * [request] - ExpansionFile to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File configuration is being read or modified.
   *
   * [expansionFileType]
   *   Allowed values:
   *     main - 
   *     patch - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExpansionFile> update(ExpansionFile request, core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (expansionFileType == null) paramErrors.add("expansionFileType is required");
    if (expansionFileType != null && !["main", "patch"].contains(expansionFileType)) {
      paramErrors.add("Allowed values for expansionFileType: main, patch");
    }
    if (expansionFileType != null) urlParams["expansionFileType"] = expansionFileType;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ExpansionFile.fromJson(data));
  }

  /**
   * Uploads and attaches a new Expansion File to the APK specified.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [apkVersionCode] - The version code of the APK whose Expansion File configuration is being read or modified.
   *
   * [expansionFileType]
   *   Allowed values:
   *     main - 
   *     patch - 
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ExpansionFilesUploadResponse> upload(core.String packageName, core.String editId, core.int apkVersionCode, core.String expansionFileType, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}";
    var uploadUrl = "/upload/androidpublisher/v2/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (apkVersionCode == null) paramErrors.add("apkVersionCode is required");
    if (apkVersionCode != null) urlParams["apkVersionCode"] = apkVersionCode;
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (expansionFileType == null) paramErrors.add("expansionFileType is required");
    if (expansionFileType != null && !["main", "patch"].contains(expansionFileType)) {
      paramErrors.add("Allowed values for expansionFileType: main, patch");
    }
    if (expansionFileType != null) urlParams["expansionFileType"] = expansionFileType;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new ExpansionFilesUploadResponse.fromJson(data));
  }
}

class EditsImagesResource_ {

  final Client _client;

  EditsImagesResource_(Client client) :
      _client = client;

  /**
   * Deletes the image (specified by id) from the edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing whose images are to read or modified. For example, to select Austrian German, pass "de-AT".
   *
   * [imageType]
   *   Allowed values:
   *     featureGraphic - 
   *     icon - 
   *     phoneScreenshots - 
   *     promoGraphic - 
   *     sevenInchScreenshots - 
   *     tenInchScreenshots - 
   *
   * [imageId] - Unique identifier an image within the set of images attached to this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String packageName, core.String editId, core.String language, core.String imageType, core.String imageId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (imageId == null) paramErrors.add("imageId is required");
    if (imageId != null) urlParams["imageId"] = imageId;
    if (imageType == null) paramErrors.add("imageType is required");
    if (imageType != null && !["featureGraphic", "icon", "phoneScreenshots", "promoGraphic", "sevenInchScreenshots", "tenInchScreenshots"].contains(imageType)) {
      paramErrors.add("Allowed values for imageType: featureGraphic, icon, phoneScreenshots, promoGraphic, sevenInchScreenshots, tenInchScreenshots");
    }
    if (imageType != null) urlParams["imageType"] = imageType;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Deletes all images for the specified language and image type.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing whose images are to read or modified. For example, to select Austrian German, pass "de-AT".
   *
   * [imageType]
   *   Allowed values:
   *     featureGraphic - 
   *     icon - 
   *     phoneScreenshots - 
   *     promoGraphic - 
   *     sevenInchScreenshots - 
   *     tenInchScreenshots - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ImagesDeleteAllResponse> deleteall(core.String packageName, core.String editId, core.String language, core.String imageType, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}/{imageType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (imageType == null) paramErrors.add("imageType is required");
    if (imageType != null && !["featureGraphic", "icon", "phoneScreenshots", "promoGraphic", "sevenInchScreenshots", "tenInchScreenshots"].contains(imageType)) {
      paramErrors.add("Allowed values for imageType: featureGraphic, icon, phoneScreenshots, promoGraphic, sevenInchScreenshots, tenInchScreenshots");
    }
    if (imageType != null) urlParams["imageType"] = imageType;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ImagesDeleteAllResponse.fromJson(data));
  }

  /**
   * Lists all images for the specified language and image type.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing whose images are to read or modified. For example, to select Austrian German, pass "de-AT".
   *
   * [imageType]
   *   Allowed values:
   *     featureGraphic - 
   *     icon - 
   *     phoneScreenshots - 
   *     promoGraphic - 
   *     sevenInchScreenshots - 
   *     tenInchScreenshots - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ImagesListResponse> list(core.String packageName, core.String editId, core.String language, core.String imageType, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}/{imageType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (imageType == null) paramErrors.add("imageType is required");
    if (imageType != null && !["featureGraphic", "icon", "phoneScreenshots", "promoGraphic", "sevenInchScreenshots", "tenInchScreenshots"].contains(imageType)) {
      paramErrors.add("Allowed values for imageType: featureGraphic, icon, phoneScreenshots, promoGraphic, sevenInchScreenshots, tenInchScreenshots");
    }
    if (imageType != null) urlParams["imageType"] = imageType;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ImagesListResponse.fromJson(data));
  }

  /**
   * Uploads a new image and adds it to the list of images for the specified language and image type.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing whose images are to read or modified. For example, to select Austrian German, pass "de-AT".
   *
   * [imageType]
   *   Allowed values:
   *     featureGraphic - 
   *     icon - 
   *     phoneScreenshots - 
   *     promoGraphic - 
   *     sevenInchScreenshots - 
   *     tenInchScreenshots - 
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ImagesUploadResponse> upload(core.String packageName, core.String editId, core.String language, core.String imageType, {core.String content, core.String contentType, core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}/{imageType}";
    var uploadUrl = "/upload/androidpublisher/v2/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (imageType == null) paramErrors.add("imageType is required");
    if (imageType != null && !["featureGraphic", "icon", "phoneScreenshots", "promoGraphic", "sevenInchScreenshots", "tenInchScreenshots"].contains(imageType)) {
      paramErrors.add("Allowed values for imageType: featureGraphic, icon, phoneScreenshots, promoGraphic, sevenInchScreenshots, tenInchScreenshots");
    }
    if (imageType != null) urlParams["imageType"] = imageType;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new ImagesUploadResponse.fromJson(data));
  }
}

class EditsListingsResource_ {

  final Client _client;

  EditsListingsResource_(Client client) :
      _client = client;

  /**
   * Deletes the specified localized store listing from an edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String packageName, core.String editId, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Deletes all localized listings from an edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> deleteall(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Fetches information about a localized store listing.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Listing> get(core.String packageName, core.String editId, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Listing.fromJson(data));
  }

  /**
   * Returns all of the localized store listings attached to this edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListingsListResponse> list(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListingsListResponse.fromJson(data));
  }

  /**
   * Creates or updates a localized store listing. This method supports patch semantics.
   *
   * [request] - Listing to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Listing> patch(Listing request, core.String packageName, core.String editId, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Listing.fromJson(data));
  }

  /**
   * Creates or updates a localized store listing.
   *
   * [request] - Listing to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [language] - The language code (a BCP-47 language tag) of the localized listing to read or modify. For example, to select Austrian German, pass "de-AT".
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Listing> update(Listing request, core.String packageName, core.String editId, core.String language, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/listings/{language}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (language == null) paramErrors.add("language is required");
    if (language != null) urlParams["language"] = language;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Listing.fromJson(data));
  }
}

class EditsTestersResource_ {

  final Client _client;

  EditsTestersResource_(Client client) :
      _client = client;

  /**
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track]
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Testers> get(core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/testers/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Testers.fromJson(data));
  }

  /**
   *
   * [request] - Testers to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track]
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Testers> patch(Testers request, core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/testers/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Testers.fromJson(data));
  }

  /**
   *
   * [request] - Testers to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track]
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Testers> update(Testers request, core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/testers/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Testers.fromJson(data));
  }
}

class EditsTracksResource_ {

  final Client _client;

  EditsTracksResource_(Client client) :
      _client = client;

  /**
   * Fetches the track configuration for the specified track type. Includes the APK version codes that are in this track.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Track> get(core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/tracks/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Track.fromJson(data));
  }

  /**
   * Lists all the track configurations for this edit.
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TracksListResponse> list(core.String packageName, core.String editId, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/tracks";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TracksListResponse.fromJson(data));
  }

  /**
   * Updates the track configuration for the specified track type. This method supports patch semantics.
   *
   * [request] - Track to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Track> patch(Track request, core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/tracks/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Track.fromJson(data));
  }

  /**
   * Updates the track configuration for the specified track type.
   *
   * [request] - Track to send in this request
   *
   * [packageName] - Unique identifier for the Android app that is being updated; for example, "com.spiffygame".
   *
   * [editId] - Unique identifier for this edit.
   *
   * [track] - The track type to read or modify.
   *   Allowed values:
   *     alpha - 
   *     beta - 
   *     production - 
   *     rollout - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Track> update(Track request, core.String packageName, core.String editId, core.String track, {core.Map optParams}) {
    var url = "{packageName}/edits/{editId}/tracks/{track}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (editId == null) paramErrors.add("editId is required");
    if (editId != null) urlParams["editId"] = editId;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (track == null) paramErrors.add("track is required");
    if (track != null && !["alpha", "beta", "production", "rollout"].contains(track)) {
      paramErrors.add("Allowed values for track: alpha, beta, production, rollout");
    }
    if (track != null) urlParams["track"] = track;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Track.fromJson(data));
  }
}

class InappproductsResource_ {

  final Client _client;

  InappproductsResource_(Client client) :
      _client = client;

  /**
   *
   * [request] - InappproductsBatchRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InappproductsBatchResponse> batch(InappproductsBatchRequest request, {core.Map optParams}) {
    var url = "inappproducts/batch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InappproductsBatchResponse.fromJson(data));
  }

  /**
   * Delete an in-app product for an app.
   *
   * [packageName] - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String packageName, core.String sku, {core.Map optParams}) {
    var url = "{packageName}/inappproducts/{sku}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (sku == null) paramErrors.add("sku is required");
    if (sku != null) urlParams["sku"] = sku;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Returns information about the in-app product specified.
   *
   * [packageName]
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InAppProduct> get(core.String packageName, core.String sku, {core.Map optParams}) {
    var url = "{packageName}/inappproducts/{sku}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (sku == null) paramErrors.add("sku is required");
    if (sku != null) urlParams["sku"] = sku;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * Creates a new in-app product for an app.
   *
   * [request] - InAppProduct to send in this request
   *
   * [packageName] - Unique identifier for the Android app; for example, "com.spiffygame".
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InAppProduct> insert(InAppProduct request, core.String packageName, {core.bool autoConvertMissingPrices, core.Map optParams}) {
    var url = "{packageName}/inappproducts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoConvertMissingPrices != null) queryParams["autoConvertMissingPrices"] = autoConvertMissingPrices;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * List all the in-app products for an Android app, both subscriptions and managed in-app products..
   *
   * [packageName] - Unique identifier for the Android app with in-app products; for example, "com.spiffygame".
   *
   * [maxResults]
   *
   * [startIndex]
   *
   * [token]
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InappproductsListResponse> list(core.String packageName, {core.int maxResults, core.int startIndex, core.String token, core.Map optParams}) {
    var url = "{packageName}/inappproducts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (token != null) queryParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InappproductsListResponse.fromJson(data));
  }

  /**
   * Updates the details of an in-app product. This method supports patch semantics.
   *
   * [request] - InAppProduct to send in this request
   *
   * [packageName] - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InAppProduct> patch(InAppProduct request, core.String packageName, core.String sku, {core.bool autoConvertMissingPrices, core.Map optParams}) {
    var url = "{packageName}/inappproducts/{sku}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoConvertMissingPrices != null) queryParams["autoConvertMissingPrices"] = autoConvertMissingPrices;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (sku == null) paramErrors.add("sku is required");
    if (sku != null) urlParams["sku"] = sku;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InAppProduct.fromJson(data));
  }

  /**
   * Updates the details of an in-app product.
   *
   * [request] - InAppProduct to send in this request
   *
   * [packageName] - Unique identifier for the Android app with the in-app product; for example, "com.spiffygame".
   *
   * [sku] - Unique identifier for the in-app product.
   *
   * [autoConvertMissingPrices] - If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<InAppProduct> update(InAppProduct request, core.String packageName, core.String sku, {core.bool autoConvertMissingPrices, core.Map optParams}) {
    var url = "{packageName}/inappproducts/{sku}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoConvertMissingPrices != null) queryParams["autoConvertMissingPrices"] = autoConvertMissingPrices;
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (sku == null) paramErrors.add("sku is required");
    if (sku != null) urlParams["sku"] = sku;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new InAppProduct.fromJson(data));
  }
}

class PurchasesResource_ {

  final Client _client;

  final PurchasesProductsResource_ products;
  final PurchasesSubscriptionsResource_ subscriptions;

  PurchasesResource_(Client client) :
      _client = client,
      products = new PurchasesProductsResource_(client),
      subscriptions = new PurchasesSubscriptionsResource_(client);
}

class PurchasesProductsResource_ {

  final Client _client;

  PurchasesProductsResource_(Client client) :
      _client = client;

  /**
   * Checks the purchase and consumption status of an inapp item.
   *
   * [packageName] - The package name of the application the inapp product was sold in (for example, 'com.some.thing').
   *
   * [productId] - The inapp product SKU (for example, 'com.some.thing.inapp1').
   *
   * [token] - The token provided to the user's device when the inapp product was purchased.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ProductPurchase> get(core.String packageName, core.String productId, core.String token, {core.Map optParams}) {
    var url = "{packageName}/purchases/products/{productId}/tokens/{token}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (token == null) paramErrors.add("token is required");
    if (token != null) urlParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ProductPurchase.fromJson(data));
  }
}

class PurchasesSubscriptionsResource_ {

  final Client _client;

  PurchasesSubscriptionsResource_(Client client) :
      _client = client;

  /**
   * Cancels a user's subscription purchase. The subscription remains valid until its expiration time.
   *
   * [packageName] - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example, 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was purchased.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> cancel(core.String packageName, core.String subscriptionId, core.String token, {core.Map optParams}) {
    var url = "{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (token == null) paramErrors.add("token is required");
    if (token != null) urlParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Checks whether a user's subscription purchase is valid and returns its expiry time.
   *
   * [packageName] - The package name of the application for which this subscription was purchased (for example, 'com.some.thing').
   *
   * [subscriptionId] - The purchased subscription ID (for example, 'monthly001').
   *
   * [token] - The token provided to the user's device when the subscription was purchased.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SubscriptionPurchase> get(core.String packageName, core.String subscriptionId, core.String token, {core.Map optParams}) {
    var url = "{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (packageName == null) paramErrors.add("packageName is required");
    if (packageName != null) urlParams["packageName"] = packageName;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (token == null) paramErrors.add("token is required");
    if (token != null) urlParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SubscriptionPurchase.fromJson(data));
  }
}

