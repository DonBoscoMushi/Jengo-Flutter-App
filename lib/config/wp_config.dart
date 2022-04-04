class WpConfig {
  // YOUR WEBISTE URL
  static const String websiteUrl = "https://www.jengo101.co.tz";

  //FEATURE TAG ID
  static const int featuredTagID = 36;

  //VIDEO TAG ID
  static const int videoTagId = 12;

  // Hometab 4 categories
  // -- 'Serial Number' : [Category Id, 'Category Name'] -- Length should be 4.
  static const Map selectedCategories = {
    '1': [36, "Appartments"],
    '2': [48, "Houses"],
    '3': [51, "Land"],
    '4': [61, "Offices"],
  };

  /*
  List of blocked categories. Do nothing if you don't want to block any categories.
  If you want to bloc any category and it's posts then enter values like these:

  Example: If you want to block category id 10 & 12, then it will be look like this:

    static const String blockedCategoryIds = "10,12";
    static const String blockedCategoryIdsforPopularPosts = "-10,-12";

  */

  static const String blockedCategoryIds = "";
  static const String blockedCategoryIdsforPopularPosts = "";

  // FEATURE IMGAE -  IF YOUR POSTS DON"T HAVE A FEATURE IMAGE
  static const String randomPostFeatureImage =
      "https://innov8tiv.com/wp-content/uploads/2017/10/blank-screen-google-play-store-1280x720.png";

  // FEATURE CATEGORY IMGAE -  IF YOU HAVEN'T DEFINE A COVER IMAGE FOR A CATEGORY IN THE LIST BELOW
  static const String randomCategoryThumbnail =
      "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmFuZG9tfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";

  // ENTER CATERGORY ID AND ITS COVERS IMAGE
  static const Map categoryThumbnails = {
    // categoryID : 'category thumbnail url'
    36: "https://images.unsplash.com/photo-1444653389962-8149286c578a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODV8fGJ1c2luZXNzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    48: "https://images.unsplash.com/photo-1603739903239-8b6e64c3b185?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzN8fGVudGVydGFpbm1lbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    51: "https://images.unsplash.com/photo-1507138086030-616c3b6dd768?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTE1fHxsaWZlc3R5bGV8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    61: "https://images.pexels.com/photos/1250655/pexels-photo-1250655.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  };
}
