class Employee {
  void doWork() {
    ///something here
  }
}

mixin Developer {
  void doCode() {
    ///do something
  }
}

class Accountant extends Employee {
  @override
  void doWork() {
    // TODO: implement doWork
    super.doWork();
  }
}

class SeniorDeveloper extends Employee with Developer {
  @override
  void doCode() {
    // TODO: implement doCode
    super.doCode();
  }

  @override
  void doWork() {
    // TODO: implement doWork
    super.doWork();
  }
}

class InternDeveloper extends Employee with Developer {
  @override
  void doCode() {
    // TODO: implement doCode
    super.doCode();
  }
}
