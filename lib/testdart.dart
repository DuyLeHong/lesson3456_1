

void main() {
  double a = 10, b = -50, c = 11, d = 6, e = 8, f = -4, g = 15;

  List<double> numbers = [a, b, c, d, e, f, g];

  if (numbers.isNotEmpty) {
    numbers.sort((a, b) => b.compareTo(a)); // sap xep tu lon den be - nguoc chieu

    double max = numbers.first;

    print (max);
  }


  // double max = a;
  // if (max < b) max = b;
  // if (max < c) max = c;
  // print(max);
}

