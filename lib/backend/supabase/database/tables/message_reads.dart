import '../database.dart';

class MessageReadsTable extends SupabaseTable<MessageReadsRow> {
  @override
  String get tableName => 'message_reads';

  @override
  MessageReadsRow createRow(Map<String, dynamic> data) => MessageReadsRow(data);
}

class MessageReadsRow extends SupabaseDataRow {
  MessageReadsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessageReadsTable();

  String get messageId => getField<String>('message_id')!;
  set messageId(String value) => setField<String>('message_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);
}
