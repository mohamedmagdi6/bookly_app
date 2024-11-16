class ApiConstant {
  static String baseUrl = 'https://www.googleapis.com/books/v1/';
  static String booksEndPoint =
      'volumes?Filtering=free-ebooks&q=subject:programming';
  static String semilarEndPoint =
      'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming';
}
