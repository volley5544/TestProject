import '../database.dart';

class ConversationMembersTable extends SupabaseTable<ConversationMembersRow> {
  @override
  String get tableName => 'conversation_members';

  @override
  ConversationMembersRow createRow(Map<String, dynamic> data) =>
      ConversationMembersRow(data);
}

class ConversationMembersRow extends SupabaseDataRow {
  ConversationMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConversationMembersTable();

  String get conversationId => getField<String>('conversation_id')!;
  set conversationId(String value) =>
      setField<String>('conversation_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  DateTime? get joinedAt => getField<DateTime>('joined_at');
  set joinedAt(DateTime? value) => setField<DateTime>('joined_at', value);

  String? get lastReadMessageId => getField<String>('last_read_message_id');
  set lastReadMessageId(String? value) =>
      setField<String>('last_read_message_id', value);
}
