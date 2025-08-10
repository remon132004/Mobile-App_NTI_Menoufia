class Employee {
  String id;
  String name;
  String phone;
  String address;
  String position;
  Employee(this.id, this.name, this.phone, this.address, this.position);
  void info() {
    print(
        "Name: $name\nID: $id\nPhone: $phone\nAddress: $address\nPosition: $position");
  }
}

class HR extends Employee {
  HR(super.id, super.name, super.phone, super.address, super.position);
}

class Security extends Employee {
  Security(super.id, super.name, super.phone, super.address, super.position);
}

class Instractor extends Employee {
  Instractor(super.id, super.name, super.phone, super.address, super.position);
}

void showEmployeeInfoButton(Employee e1) {
  e1.info();
}

void main() {
  HR e1 = HR('1', 'Remon', '+5446217', 'Behira', 'HR');
  Security e2 = Security('2', 'Hend', '+1001645646', 'Menofia', 'Security');
  Instractor e3 = Instractor('3', 'Kamal', '+91454527', 'Alex', 'Instractor');
  showEmployeeInfoButton(e1);
  print("--------");
  showEmployeeInfoButton(e2);
  print("-----------");
  showEmployeeInfoButton(e3);
}
