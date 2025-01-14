import 'package:equatable/equatable.dart';

import 'datum.dart';

class Book extends Equatable {
  final List<Datum>? data;

  const Book({this.data});

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
