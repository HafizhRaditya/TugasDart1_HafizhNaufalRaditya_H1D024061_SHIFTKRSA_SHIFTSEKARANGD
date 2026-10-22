class Queue<T> {
  final List<T> _data = [];

  void enqueue(T item) {
    _data.add(item);
    print('Enqueue: $item masuk antrian');
  }

  T? pop() {
    if (_data.isEmpty) {
      print('Pop gagal: antrian kosong');
      return null;
    }
    T item = _data.removeAt(0);
    print('Pop: $item keluar antrian');
    return item;
  }

  void tampilkan() {
    if (_data.isEmpty) {
      print('Isi antrian: (kosong)');
    } else {
      print(
        'Isi antrian: depan -> ${_data.join(', ')} <- belakang (${_data.length} data)',
      );
    }
  }
}

void main() {
  Queue<String> antrian = Queue<String>();

  antrian.tampilkan();
  antrian.enqueue('Andi');
  antrian.enqueue('Budi');
  antrian.enqueue('Citra');
  antrian.tampilkan();

  String? dilayani = antrian.pop();
  print('Yang dilayani: $dilayani');
  antrian.tampilkan();

  antrian.enqueue('Dewi');
  antrian.tampilkan();

  antrian.pop();
  antrian.pop();
  antrian.pop();
  antrian.tampilkan();

  antrian.pop();

  print('');
  Queue<int> nomor = Queue<int>();
  nomor.enqueue(1);
  nomor.enqueue(2);
  nomor.enqueue(3);
  nomor.pop();
  nomor.tampilkan();
}
