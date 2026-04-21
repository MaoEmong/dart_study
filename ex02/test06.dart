// return 값을 record로

({int id, String title}) download() {
  // 1, "안녕"

  return (id: 1, title: "안녕");
}

void main() {
  var data = download();
  print(data.id);
  print(data.title);
}
