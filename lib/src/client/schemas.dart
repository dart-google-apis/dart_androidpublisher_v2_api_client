part of androidpublisher_v2_api;

class Apk {

  /** Information about the binary payload of this APK. */
  ApkBinary binary;

  /** The version code of the APK, as specified in the APK's manifest file. */
  core.int versionCode;

  /** Create new Apk from JSON data */
  Apk.fromJson(core.Map json) {
    if (json.containsKey("binary")) {
      binary = new ApkBinary.fromJson(json["binary"]);
    }
    if (json.containsKey("versionCode")) {
      versionCode = json["versionCode"];
    }
  }

  /** Create JSON Object for Apk */
  core.Map toJson() {
    var output = new core.Map();

    if (binary != null) {
      output["binary"] = binary.toJson();
    }
    if (versionCode != null) {
      output["versionCode"] = versionCode;
    }

    return output;
  }

  /** Return String representation of Apk */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents the binary payload of an APK. */
class ApkBinary {

  /** A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command. */
  core.String sha1;

  /** Create new ApkBinary from JSON data */
  ApkBinary.fromJson(core.Map json) {
    if (json.containsKey("sha1")) {
      sha1 = json["sha1"];
    }
  }

  /** Create JSON Object for ApkBinary */
  core.Map toJson() {
    var output = new core.Map();

    if (sha1 != null) {
      output["sha1"] = sha1;
    }

    return output;
  }

  /** Return String representation of ApkBinary */
  core.String toString() => JSON.encode(this.toJson());

}

class ApkListing {

  /** The language code, in BCP 47 format (eg "en-US"). */
  core.String language;

  /** Describe what's new in your APK. */
  core.String recentChanges;

  /** Create new ApkListing from JSON data */
  ApkListing.fromJson(core.Map json) {
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("recentChanges")) {
      recentChanges = json["recentChanges"];
    }
  }

  /** Create JSON Object for ApkListing */
  core.Map toJson() {
    var output = new core.Map();

    if (language != null) {
      output["language"] = language;
    }
    if (recentChanges != null) {
      output["recentChanges"] = recentChanges;
    }

    return output;
  }

  /** Return String representation of ApkListing */
  core.String toString() => JSON.encode(this.toJson());

}

class ApkListingsListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#apkListingsListResponse". */
  core.String kind;

  core.List<ApkListing> listings;

  /** Create new ApkListingsListResponse from JSON data */
  ApkListingsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("listings")) {
      listings = json["listings"].map((listingsItem) => new ApkListing.fromJson(listingsItem)).toList();
    }
  }

  /** Create JSON Object for ApkListingsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (listings != null) {
      output["listings"] = listings.map((listingsItem) => listingsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ApkListingsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ApksListResponse {

  core.List<Apk> apks;

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#apksListResponse". */
  core.String kind;

  /** Create new ApksListResponse from JSON data */
  ApksListResponse.fromJson(core.Map json) {
    if (json.containsKey("apks")) {
      apks = json["apks"].map((apksItem) => new Apk.fromJson(apksItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ApksListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (apks != null) {
      output["apks"] = apks.map((apksItem) => apksItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ApksListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class AppDetails {

  /** The user-visible support email for this app. */
  core.String contactEmail;

  /** The user-visible support telephone number for this app. */
  core.String contactPhone;

  /** The user-visible website for this app. */
  core.String contactWebsite;

  /** Default language code, in BCP 47 format (eg "en-US"). */
  core.String defaultLanguage;

  /** Create new AppDetails from JSON data */
  AppDetails.fromJson(core.Map json) {
    if (json.containsKey("contactEmail")) {
      contactEmail = json["contactEmail"];
    }
    if (json.containsKey("contactPhone")) {
      contactPhone = json["contactPhone"];
    }
    if (json.containsKey("contactWebsite")) {
      contactWebsite = json["contactWebsite"];
    }
    if (json.containsKey("defaultLanguage")) {
      defaultLanguage = json["defaultLanguage"];
    }
  }

  /** Create JSON Object for AppDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (contactEmail != null) {
      output["contactEmail"] = contactEmail;
    }
    if (contactPhone != null) {
      output["contactPhone"] = contactPhone;
    }
    if (contactWebsite != null) {
      output["contactWebsite"] = contactWebsite;
    }
    if (defaultLanguage != null) {
      output["defaultLanguage"] = defaultLanguage;
    }

    return output;
  }

  /** Return String representation of AppDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents an edit of an app. An edit allows clients to make multiple changes before committing them in one operation. */
class AppEdit {

  /** The time at which the edit will expire and will be no longer valid for use in any subsequent API calls (encoded as seconds since the Epoch). */
  core.String expiryTimeSeconds;

  /** The ID of the edit that can be used in subsequent API calls. */
  core.String id;

  /** Create new AppEdit from JSON data */
  AppEdit.fromJson(core.Map json) {
    if (json.containsKey("expiryTimeSeconds")) {
      expiryTimeSeconds = json["expiryTimeSeconds"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for AppEdit */
  core.Map toJson() {
    var output = new core.Map();

    if (expiryTimeSeconds != null) {
      output["expiryTimeSeconds"] = expiryTimeSeconds;
    }
    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of AppEdit */
  core.String toString() => JSON.encode(this.toJson());

}

class ExpansionFile {

  /** If set this field indicates that this APK has an Expansion File uploaded to it: this APK does not reference another APK's Expansion File. The field's value is the size of the uploaded Expansion File in bytes. */
  core.int fileSize;

  /** If set this APK's Expansion File references another APK's Expansion File. The file_size field will not be set. */
  core.int referencesVersion;

  /** Create new ExpansionFile from JSON data */
  ExpansionFile.fromJson(core.Map json) {
    if (json.containsKey("fileSize")) {
      fileSize = (json["fileSize"] is core.String) ? core.int.parse(json["fileSize"]) : json["fileSize"];
    }
    if (json.containsKey("referencesVersion")) {
      referencesVersion = json["referencesVersion"];
    }
  }

  /** Create JSON Object for ExpansionFile */
  core.Map toJson() {
    var output = new core.Map();

    if (fileSize != null) {
      output["fileSize"] = fileSize;
    }
    if (referencesVersion != null) {
      output["referencesVersion"] = referencesVersion;
    }

    return output;
  }

  /** Return String representation of ExpansionFile */
  core.String toString() => JSON.encode(this.toJson());

}

class ExpansionFilesUploadResponse {

  ExpansionFile expansionFile;

  /** Create new ExpansionFilesUploadResponse from JSON data */
  ExpansionFilesUploadResponse.fromJson(core.Map json) {
    if (json.containsKey("expansionFile")) {
      expansionFile = new ExpansionFile.fromJson(json["expansionFile"]);
    }
  }

  /** Create JSON Object for ExpansionFilesUploadResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (expansionFile != null) {
      output["expansionFile"] = expansionFile.toJson();
    }

    return output;
  }

  /** Return String representation of ExpansionFilesUploadResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Image {

  /** A unique id representing this image. */
  core.String id;

  /** A sha1 hash of the image that was uploaded. */
  core.String sha1;

  /** A URL that will serve a preview of the image. */
  core.String url;

  /** Create new Image from JSON data */
  Image.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("sha1")) {
      sha1 = json["sha1"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for Image */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (sha1 != null) {
      output["sha1"] = sha1;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Image */
  core.String toString() => JSON.encode(this.toJson());

}

class ImagesDeleteAllResponse {

  core.List<Image> deleted;

  /** Create new ImagesDeleteAllResponse from JSON data */
  ImagesDeleteAllResponse.fromJson(core.Map json) {
    if (json.containsKey("deleted")) {
      deleted = json["deleted"].map((deletedItem) => new Image.fromJson(deletedItem)).toList();
    }
  }

  /** Create JSON Object for ImagesDeleteAllResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (deleted != null) {
      output["deleted"] = deleted.map((deletedItem) => deletedItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ImagesDeleteAllResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ImagesListResponse {

  core.List<Image> images;

  /** Create new ImagesListResponse from JSON data */
  ImagesListResponse.fromJson(core.Map json) {
    if (json.containsKey("images")) {
      images = json["images"].map((imagesItem) => new Image.fromJson(imagesItem)).toList();
    }
  }

  /** Create JSON Object for ImagesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (images != null) {
      output["images"] = images.map((imagesItem) => imagesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ImagesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ImagesUploadResponse {

  Image image;

  /** Create new ImagesUploadResponse from JSON data */
  ImagesUploadResponse.fromJson(core.Map json) {
    if (json.containsKey("image")) {
      image = new Image.fromJson(json["image"]);
    }
  }

  /** Create JSON Object for ImagesUploadResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (image != null) {
      output["image"] = image.toJson();
    }

    return output;
  }

  /** Return String representation of ImagesUploadResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class InAppProduct {

  /** The default language of the localized data, as defined by BCP 47. e.g. "en-US", "en-GB". */
  core.String defaultLanguage;

  /** Default price cannot be zero. In-app products can never be free. Default price is always in the developer's Checkout merchant currency. */
  Price defaultPrice;

  /** List of localized title and description data. */
  core.Map<core.String, InAppProductListing> listings;

  /** The package name of the parent app. */
  core.String packageName;

  /** Prices per buyer region. None of these prices should be zero. In-app products can never be free. */
  core.Map<core.String, Price> prices;

  /** Purchase type enum value. Unmodifiable after creation. */
  core.String purchaseType;

  /** The stock-keeping-unit (SKU) of the product, unique within an app. */
  core.String sku;

  core.String status;

  /** The period of the subscription (if any), i.e. period at which payments must happen. Defined as ISO 8601 duration, i.e. "P1M" for 1 month period. */
  core.String subscriptionPeriod;

  /** Trial duration (if any) of the subscription, defined as ISO 8601. i.e. "P10D" means an initial period of 10 days during which ownership is granted prior to any payment. Acceptable values are between "P7D" and "P999D". Seasonal subscriptions cannot have a trial period. */
  core.String trialPeriod;

  /** Create new InAppProduct from JSON data */
  InAppProduct.fromJson(core.Map json) {
    if (json.containsKey("defaultLanguage")) {
      defaultLanguage = json["defaultLanguage"];
    }
    if (json.containsKey("defaultPrice")) {
      defaultPrice = new Price.fromJson(json["defaultPrice"]);
    }
    if (json.containsKey("listings")) {
      listings = _mapMap(json["listings"], (listingsItem) => new InAppProductListing.fromJson(listingsItem));
    }
    if (json.containsKey("packageName")) {
      packageName = json["packageName"];
    }
    if (json.containsKey("prices")) {
      prices = _mapMap(json["prices"], (pricesItem) => new Price.fromJson(pricesItem));
    }
    if (json.containsKey("purchaseType")) {
      purchaseType = json["purchaseType"];
    }
    if (json.containsKey("sku")) {
      sku = json["sku"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("subscriptionPeriod")) {
      subscriptionPeriod = json["subscriptionPeriod"];
    }
    if (json.containsKey("trialPeriod")) {
      trialPeriod = json["trialPeriod"];
    }
  }

  /** Create JSON Object for InAppProduct */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultLanguage != null) {
      output["defaultLanguage"] = defaultLanguage;
    }
    if (defaultPrice != null) {
      output["defaultPrice"] = defaultPrice.toJson();
    }
    if (listings != null) {
      output["listings"] = _mapMap(listings, (listingsItem) => listingsItem.toJson());
    }
    if (packageName != null) {
      output["packageName"] = packageName;
    }
    if (prices != null) {
      output["prices"] = _mapMap(prices, (pricesItem) => pricesItem.toJson());
    }
    if (purchaseType != null) {
      output["purchaseType"] = purchaseType;
    }
    if (sku != null) {
      output["sku"] = sku;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (subscriptionPeriod != null) {
      output["subscriptionPeriod"] = subscriptionPeriod;
    }
    if (trialPeriod != null) {
      output["trialPeriod"] = trialPeriod;
    }

    return output;
  }

  /** Return String representation of InAppProduct */
  core.String toString() => JSON.encode(this.toJson());

}

class InAppProductListing {

  core.String description;

  core.String title;

  /** Create new InAppProductListing from JSON data */
  InAppProductListing.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for InAppProductListing */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of InAppProductListing */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsBatchRequest {

  core.List<InappproductsBatchRequestEntry> entrys;

  /** Create new InappproductsBatchRequest from JSON data */
  InappproductsBatchRequest.fromJson(core.Map json) {
    if (json.containsKey("entrys")) {
      entrys = json["entrys"].map((entrysItem) => new InappproductsBatchRequestEntry.fromJson(entrysItem)).toList();
    }
  }

  /** Create JSON Object for InappproductsBatchRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (entrys != null) {
      output["entrys"] = entrys.map((entrysItem) => entrysItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of InappproductsBatchRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsBatchRequestEntry {

  core.int batchId;

  InappproductsInsertRequest inappproductsinsertrequest;

  InappproductsUpdateRequest inappproductsupdaterequest;

  core.String methodName;

  /** Create new InappproductsBatchRequestEntry from JSON data */
  InappproductsBatchRequestEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("inappproductsinsertrequest")) {
      inappproductsinsertrequest = new InappproductsInsertRequest.fromJson(json["inappproductsinsertrequest"]);
    }
    if (json.containsKey("inappproductsupdaterequest")) {
      inappproductsupdaterequest = new InappproductsUpdateRequest.fromJson(json["inappproductsupdaterequest"]);
    }
    if (json.containsKey("methodName")) {
      methodName = json["methodName"];
    }
  }

  /** Create JSON Object for InappproductsBatchRequestEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (inappproductsinsertrequest != null) {
      output["inappproductsinsertrequest"] = inappproductsinsertrequest.toJson();
    }
    if (inappproductsupdaterequest != null) {
      output["inappproductsupdaterequest"] = inappproductsupdaterequest.toJson();
    }
    if (methodName != null) {
      output["methodName"] = methodName;
    }

    return output;
  }

  /** Return String representation of InappproductsBatchRequestEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsBatchResponse {

  core.List<InappproductsBatchResponseEntry> entrys;

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#inappproductsBatchResponse". */
  core.String kind;

  /** Create new InappproductsBatchResponse from JSON data */
  InappproductsBatchResponse.fromJson(core.Map json) {
    if (json.containsKey("entrys")) {
      entrys = json["entrys"].map((entrysItem) => new InappproductsBatchResponseEntry.fromJson(entrysItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for InappproductsBatchResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (entrys != null) {
      output["entrys"] = entrys.map((entrysItem) => entrysItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of InappproductsBatchResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsBatchResponseEntry {

  core.int batchId;

  InappproductsInsertResponse inappproductsinsertresponse;

  InappproductsUpdateResponse inappproductsupdateresponse;

  /** Create new InappproductsBatchResponseEntry from JSON data */
  InappproductsBatchResponseEntry.fromJson(core.Map json) {
    if (json.containsKey("batchId")) {
      batchId = json["batchId"];
    }
    if (json.containsKey("inappproductsinsertresponse")) {
      inappproductsinsertresponse = new InappproductsInsertResponse.fromJson(json["inappproductsinsertresponse"]);
    }
    if (json.containsKey("inappproductsupdateresponse")) {
      inappproductsupdateresponse = new InappproductsUpdateResponse.fromJson(json["inappproductsupdateresponse"]);
    }
  }

  /** Create JSON Object for InappproductsBatchResponseEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (batchId != null) {
      output["batchId"] = batchId;
    }
    if (inappproductsinsertresponse != null) {
      output["inappproductsinsertresponse"] = inappproductsinsertresponse.toJson();
    }
    if (inappproductsupdateresponse != null) {
      output["inappproductsupdateresponse"] = inappproductsupdateresponse.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsBatchResponseEntry */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsInsertRequest {

  InAppProduct inappproduct;

  /** Create new InappproductsInsertRequest from JSON data */
  InappproductsInsertRequest.fromJson(core.Map json) {
    if (json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(json["inappproduct"]);
    }
  }

  /** Create JSON Object for InappproductsInsertRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (inappproduct != null) {
      output["inappproduct"] = inappproduct.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsInsertRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsInsertResponse {

  InAppProduct inappproduct;

  /** Create new InappproductsInsertResponse from JSON data */
  InappproductsInsertResponse.fromJson(core.Map json) {
    if (json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(json["inappproduct"]);
    }
  }

  /** Create JSON Object for InappproductsInsertResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (inappproduct != null) {
      output["inappproduct"] = inappproduct.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsInsertResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsListResponse {

  core.List<InAppProduct> inappproduct;

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#inappproductsListResponse". */
  core.String kind;

  PageInfo pageInfo;

  TokenPagination tokenPagination;

  /** Create new InappproductsListResponse from JSON data */
  InappproductsListResponse.fromJson(core.Map json) {
    if (json.containsKey("inappproduct")) {
      inappproduct = json["inappproduct"].map((inappproductItem) => new InAppProduct.fromJson(inappproductItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(json["tokenPagination"]);
    }
  }

  /** Create JSON Object for InappproductsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (inappproduct != null) {
      output["inappproduct"] = inappproduct.map((inappproductItem) => inappproductItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (tokenPagination != null) {
      output["tokenPagination"] = tokenPagination.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsUpdateRequest {

  InAppProduct inappproduct;

  /** Create new InappproductsUpdateRequest from JSON data */
  InappproductsUpdateRequest.fromJson(core.Map json) {
    if (json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(json["inappproduct"]);
    }
  }

  /** Create JSON Object for InappproductsUpdateRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (inappproduct != null) {
      output["inappproduct"] = inappproduct.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsUpdateRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class InappproductsUpdateResponse {

  InAppProduct inappproduct;

  /** Create new InappproductsUpdateResponse from JSON data */
  InappproductsUpdateResponse.fromJson(core.Map json) {
    if (json.containsKey("inappproduct")) {
      inappproduct = new InAppProduct.fromJson(json["inappproduct"]);
    }
  }

  /** Create JSON Object for InappproductsUpdateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (inappproduct != null) {
      output["inappproduct"] = inappproduct.toJson();
    }

    return output;
  }

  /** Return String representation of InappproductsUpdateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class Listing {

  /** Full description of the app; this may be up to 4000 characters in length. */
  core.String fullDescription;

  /** Language localization code (for example, "de-AT" for Austrian German). */
  core.String language;

  /** Short description of the app (previously known as promo text); this may be up to 80 characters in length. */
  core.String shortDescription;

  /** App's localized title. */
  core.String title;

  /** URL of a promotional YouTube video for the app. */
  core.String video;

  /** Create new Listing from JSON data */
  Listing.fromJson(core.Map json) {
    if (json.containsKey("fullDescription")) {
      fullDescription = json["fullDescription"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("shortDescription")) {
      shortDescription = json["shortDescription"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("video")) {
      video = json["video"];
    }
  }

  /** Create JSON Object for Listing */
  core.Map toJson() {
    var output = new core.Map();

    if (fullDescription != null) {
      output["fullDescription"] = fullDescription;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (shortDescription != null) {
      output["shortDescription"] = shortDescription;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (video != null) {
      output["video"] = video;
    }

    return output;
  }

  /** Return String representation of Listing */
  core.String toString() => JSON.encode(this.toJson());

}

class ListingsListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#listingsListResponse". */
  core.String kind;

  core.List<Listing> listings;

  /** Create new ListingsListResponse from JSON data */
  ListingsListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("listings")) {
      listings = json["listings"].map((listingsItem) => new Listing.fromJson(listingsItem)).toList();
    }
  }

  /** Create JSON Object for ListingsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (listings != null) {
      output["listings"] = listings.map((listingsItem) => listingsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ListingsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class PageInfo {

  core.int resultPerPage;

  core.int startIndex;

  core.int totalResults;

  /** Create new PageInfo from JSON data */
  PageInfo.fromJson(core.Map json) {
    if (json.containsKey("resultPerPage")) {
      resultPerPage = json["resultPerPage"];
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for PageInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (resultPerPage != null) {
      output["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of PageInfo */
  core.String toString() => JSON.encode(this.toJson());

}

class Price {

  /** 3 letter Currency code, as defined by ISO 4217. */
  core.String currency;

  /** The price in millionths of the currency base unit represented as a string. */
  core.String priceMicros;

  /** Create new Price from JSON data */
  Price.fromJson(core.Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("priceMicros")) {
      priceMicros = json["priceMicros"];
    }
  }

  /** Create JSON Object for Price */
  core.Map toJson() {
    var output = new core.Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (priceMicros != null) {
      output["priceMicros"] = priceMicros;
    }

    return output;
  }

  /** Return String representation of Price */
  core.String toString() => JSON.encode(this.toJson());

}

/** A ProductPurchase resource indicates the status of a user's inapp product purchase. */
class ProductPurchase {

  /** The consumption state of the inapp product. Possible values are:  
- Yet to be consumed 
- Consumed */
  core.int consumptionState;

  /** A developer-specified string that contains supplemental information about an order. */
  core.String developerPayload;

  /** This kind represents an inappPurchase object in the androidpublisher service. */
  core.String kind;

  /** The purchase state of the order. Possible values are:  
- Purchased 
- Cancelled */
  core.int purchaseState;

  /** The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970). */
  core.int purchaseTimeMillis;

  /** Create new ProductPurchase from JSON data */
  ProductPurchase.fromJson(core.Map json) {
    if (json.containsKey("consumptionState")) {
      consumptionState = json["consumptionState"];
    }
    if (json.containsKey("developerPayload")) {
      developerPayload = json["developerPayload"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("purchaseState")) {
      purchaseState = json["purchaseState"];
    }
    if (json.containsKey("purchaseTimeMillis")) {
      purchaseTimeMillis = (json["purchaseTimeMillis"] is core.String) ? core.int.parse(json["purchaseTimeMillis"]) : json["purchaseTimeMillis"];
    }
  }

  /** Create JSON Object for ProductPurchase */
  core.Map toJson() {
    var output = new core.Map();

    if (consumptionState != null) {
      output["consumptionState"] = consumptionState;
    }
    if (developerPayload != null) {
      output["developerPayload"] = developerPayload;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (purchaseState != null) {
      output["purchaseState"] = purchaseState;
    }
    if (purchaseTimeMillis != null) {
      output["purchaseTimeMillis"] = purchaseTimeMillis;
    }

    return output;
  }

  /** Return String representation of ProductPurchase */
  core.String toString() => JSON.encode(this.toJson());

}

/** A SubscriptionPurchase resource indicates the status of a user's subscription purchase. */
class SubscriptionPurchase {

  /** Whether the subscription will automatically be renewed when it reaches its current expiry time. */
  core.bool autoRenewing;

  /** Time at which the subscription will expire, in milliseconds since Epoch. */
  core.int expiryTimeMillis;

  /** This kind represents a subscriptionPurchase object in the androidpublisher service. */
  core.String kind;

  /** Time at which the subscription was granted, in milliseconds since Epoch. */
  core.int startTimeMillis;

  /** Create new SubscriptionPurchase from JSON data */
  SubscriptionPurchase.fromJson(core.Map json) {
    if (json.containsKey("autoRenewing")) {
      autoRenewing = json["autoRenewing"];
    }
    if (json.containsKey("expiryTimeMillis")) {
      expiryTimeMillis = (json["expiryTimeMillis"] is core.String) ? core.int.parse(json["expiryTimeMillis"]) : json["expiryTimeMillis"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startTimeMillis")) {
      startTimeMillis = (json["startTimeMillis"] is core.String) ? core.int.parse(json["startTimeMillis"]) : json["startTimeMillis"];
    }
  }

  /** Create JSON Object for SubscriptionPurchase */
  core.Map toJson() {
    var output = new core.Map();

    if (autoRenewing != null) {
      output["autoRenewing"] = autoRenewing;
    }
    if (expiryTimeMillis != null) {
      output["expiryTimeMillis"] = expiryTimeMillis;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startTimeMillis != null) {
      output["startTimeMillis"] = startTimeMillis;
    }

    return output;
  }

  /** Return String representation of SubscriptionPurchase */
  core.String toString() => JSON.encode(this.toJson());

}

class Testers {

  core.List<core.String> googleGroups;

  core.List<core.String> googlePlusCommunities;

  /** Create new Testers from JSON data */
  Testers.fromJson(core.Map json) {
    if (json.containsKey("googleGroups")) {
      googleGroups = json["googleGroups"].toList();
    }
    if (json.containsKey("googlePlusCommunities")) {
      googlePlusCommunities = json["googlePlusCommunities"].toList();
    }
  }

  /** Create JSON Object for Testers */
  core.Map toJson() {
    var output = new core.Map();

    if (googleGroups != null) {
      output["googleGroups"] = googleGroups.toList();
    }
    if (googlePlusCommunities != null) {
      output["googlePlusCommunities"] = googlePlusCommunities.toList();
    }

    return output;
  }

  /** Return String representation of Testers */
  core.String toString() => JSON.encode(this.toJson());

}

class TokenPagination {

  core.String nextPageToken;

  core.String previousPageToken;

  /** Create new TokenPagination from JSON data */
  TokenPagination.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("previousPageToken")) {
      previousPageToken = json["previousPageToken"];
    }
  }

  /** Create JSON Object for TokenPagination */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      output["previousPageToken"] = previousPageToken;
    }

    return output;
  }

  /** Return String representation of TokenPagination */
  core.String toString() => JSON.encode(this.toJson());

}

class Track {

  core.String track;

  core.num userFraction;

  core.List<core.int> versionCodes;

  /** Create new Track from JSON data */
  Track.fromJson(core.Map json) {
    if (json.containsKey("track")) {
      track = json["track"];
    }
    if (json.containsKey("userFraction")) {
      userFraction = json["userFraction"];
    }
    if (json.containsKey("versionCodes")) {
      versionCodes = json["versionCodes"].toList();
    }
  }

  /** Create JSON Object for Track */
  core.Map toJson() {
    var output = new core.Map();

    if (track != null) {
      output["track"] = track;
    }
    if (userFraction != null) {
      output["userFraction"] = userFraction;
    }
    if (versionCodes != null) {
      output["versionCodes"] = versionCodes.toList();
    }

    return output;
  }

  /** Return String representation of Track */
  core.String toString() => JSON.encode(this.toJson());

}

class TracksListResponse {

  /** Identifies what kind of resource this is. Value: the fixed string "androidpublisher#tracksListResponse". */
  core.String kind;

  core.List<Track> tracks;

  /** Create new TracksListResponse from JSON data */
  TracksListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("tracks")) {
      tracks = json["tracks"].map((tracksItem) => new Track.fromJson(tracksItem)).toList();
    }
  }

  /** Create JSON Object for TracksListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (tracks != null) {
      output["tracks"] = tracks.map((tracksItem) => tracksItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TracksListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
