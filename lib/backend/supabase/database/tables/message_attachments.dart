import '../database.dart';

class MessageAttachmentsTable extends SupabaseTable<MessageAttachmentsRow> {
  @override
  String get tableName => 'message_attachments';

  @override
  MessageAttachmentsRow createRow(Map<String, dynamic> data) =>
      MessageAttachmentsRow(data);
}

class MessageAttachmentsRow extends SupabaseDataRow {
  MessageAttachmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MessageAttachmentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get messageId => getField<String>('message_id');
  set messageId(String? value) => setField<String>('message_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get fileType => getField<String>('file_type');
  set fileType(String? value) => setField<String>('file_type', value);

  int? get fileSize => getField<int>('file_size');
  set fileSize(int? value) => setField<int>('file_size', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
