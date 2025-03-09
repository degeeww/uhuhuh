class MenaraHanoi {
  void solve(int n, String from, String to, String temp) {
    if (n == 1) {
      print('Pindahkan disc 1 dari pasak $from ke pasak $to');
      return;
    }
    solve(n - 1, from, temp, to);
    print('Pindahkan disc $n dari pasak $from ke pasak $to');
    solve(n - 1, temp, to, from);
  }
}

void main() {
  int jumlahdisc = 3; // Ubah sesuai kebutuhan
  MenaraHanoi hanoi = MenaraHanoi();
  hanoi.solve(jumlahdisc, 'A', 'C', 'B');
}
