import 'package:expensetrackerapp/data/local_data_storage.dart';
import 'package:expensetrackerapp/models/expense.dart';

class ExpenseRepository {
  const ExpenseRepository({required LocalDataStorage storage})
      : _storage = storage;
  final LocalDataStorage _storage;
  Future<void> createExpense(Expense expense) => _storage.saveExpense(expense);
  Future<void> deleteExpense(String id) =>_storage.deleteExpense(id);
  Stream<List<Expense?>> getAllExpenses() => _storage.getExpenses();
}
