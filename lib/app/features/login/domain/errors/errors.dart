class DataSourceError implements Exception {
  final message;

  DataSourceError(this.message);
}

class RepositoryError implements Exception {
  final message;

  RepositoryError(this.message);
}
