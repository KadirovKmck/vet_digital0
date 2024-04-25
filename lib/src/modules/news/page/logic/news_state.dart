part of 'news_cubit.dart';

class NewsState extends Equatable {
  const NewsState(this.status, {this.items});
  final FetchStatus status;
  final List<News>? items;
  @override
  List<Object?> get props => [status, items];
  NewsState copyWith({FetchStatus? status, List<News>? items}) {
    return NewsState(status ?? this.status, items: items ?? this.items);
  }
}
