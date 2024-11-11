// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $EmployeesTable extends Employees
    with TableInfo<$EmployeesTable, Employee> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _postMeta = const VerificationMeta('post');
  @override
  late final GeneratedColumn<String> post = GeneratedColumn<String>(
      'post', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salaryMeta = const VerificationMeta('salary');
  @override
  late final GeneratedColumn<int> salary = GeneratedColumn<int>(
      'salary', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, post, salary];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employees';
  @override
  VerificationContext validateIntegrity(Insertable<Employee> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('post')) {
      context.handle(
          _postMeta, post.isAcceptableOrUnknown(data['post']!, _postMeta));
    }
    if (data.containsKey('salary')) {
      context.handle(_salaryMeta,
          salary.isAcceptableOrUnknown(data['salary']!, _salaryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Employee map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Employee(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      post: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}post']),
      salary: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}salary']),
    );
  }

  @override
  $EmployeesTable createAlias(String alias) {
    return $EmployeesTable(attachedDatabase, alias);
  }
}

class Employee extends DataClass implements Insertable<Employee> {
  final int id;
  final String? name;
  final String? post;
  final int? salary;
  const Employee({required this.id, this.name, this.post, this.salary});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || post != null) {
      map['post'] = Variable<String>(post);
    }
    if (!nullToAbsent || salary != null) {
      map['salary'] = Variable<int>(salary);
    }
    return map;
  }

  EmployeesCompanion toCompanion(bool nullToAbsent) {
    return EmployeesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      post: post == null && nullToAbsent ? const Value.absent() : Value(post),
      salary:
          salary == null && nullToAbsent ? const Value.absent() : Value(salary),
    );
  }

  factory Employee.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Employee(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      post: serializer.fromJson<String?>(json['post']),
      salary: serializer.fromJson<int?>(json['salary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'post': serializer.toJson<String?>(post),
      'salary': serializer.toJson<int?>(salary),
    };
  }

  Employee copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> post = const Value.absent(),
          Value<int?> salary = const Value.absent()}) =>
      Employee(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        post: post.present ? post.value : this.post,
        salary: salary.present ? salary.value : this.salary,
      );
  Employee copyWithCompanion(EmployeesCompanion data) {
    return Employee(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      post: data.post.present ? data.post.value : this.post,
      salary: data.salary.present ? data.salary.value : this.salary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Employee(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('post: $post, ')
          ..write('salary: $salary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, post, salary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Employee &&
          other.id == this.id &&
          other.name == this.name &&
          other.post == this.post &&
          other.salary == this.salary);
}

class EmployeesCompanion extends UpdateCompanion<Employee> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> post;
  final Value<int?> salary;
  const EmployeesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.post = const Value.absent(),
    this.salary = const Value.absent(),
  });
  EmployeesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.post = const Value.absent(),
    this.salary = const Value.absent(),
  });
  static Insertable<Employee> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? post,
    Expression<int>? salary,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (post != null) 'post': post,
      if (salary != null) 'salary': salary,
    });
  }

  EmployeesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? post,
      Value<int?>? salary}) {
    return EmployeesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      post: post ?? this.post,
      salary: salary ?? this.salary,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (post.present) {
      map['post'] = Variable<String>(post.value);
    }
    if (salary.present) {
      map['salary'] = Variable<int>(salary.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('post: $post, ')
          ..write('salary: $salary')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $EmployeesTable employees = $EmployeesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [employees];
}

typedef $$EmployeesTableCreateCompanionBuilder = EmployeesCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> post,
  Value<int?> salary,
});
typedef $$EmployeesTableUpdateCompanionBuilder = EmployeesCompanion Function({
  Value<int> id,
  Value<String?> name,
  Value<String?> post,
  Value<int?> salary,
});

class $$EmployeesTableTableManager extends RootTableManager<
    _$AppDb,
    $EmployeesTable,
    Employee,
    $$EmployeesTableFilterComposer,
    $$EmployeesTableOrderingComposer,
    $$EmployeesTableCreateCompanionBuilder,
    $$EmployeesTableUpdateCompanionBuilder> {
  $$EmployeesTableTableManager(_$AppDb db, $EmployeesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$EmployeesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$EmployeesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> post = const Value.absent(),
            Value<int?> salary = const Value.absent(),
          }) =>
              EmployeesCompanion(
            id: id,
            name: name,
            post: post,
            salary: salary,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> post = const Value.absent(),
            Value<int?> salary = const Value.absent(),
          }) =>
              EmployeesCompanion.insert(
            id: id,
            name: name,
            post: post,
            salary: salary,
          ),
        ));
}

class $$EmployeesTableFilterComposer
    extends FilterComposer<_$AppDb, $EmployeesTable> {
  $$EmployeesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get post => $state.composableBuilder(
      column: $state.table.post,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get salary => $state.composableBuilder(
      column: $state.table.salary,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$EmployeesTableOrderingComposer
    extends OrderingComposer<_$AppDb, $EmployeesTable> {
  $$EmployeesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get post => $state.composableBuilder(
      column: $state.table.post,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get salary => $state.composableBuilder(
      column: $state.table.salary,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$EmployeesTableTableManager get employees =>
      $$EmployeesTableTableManager(_db, _db.employees);
}
