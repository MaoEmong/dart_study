/*
문제 2. Map으로 CRUD 하기 (Update는 전개 연산자 ... 사용)

Map<String, dynamic> 형태의 상품 데이터를 다룹니다. Create / Read / Update / Delete 기능을 구현하세요. 
특히 Update는 반드시 전개 연산자(...)로 불변(immutable)하게 처리해야 합니다
*/

// 상품 저장소 (key: 상품 id, value: 상품 정보 Map)
Map<String, Map<String, dynamic>> products = {};
// ---------- CREATE ---------
// TODO: 상품을 추가하는 함수
void createProduct(String id, Map<String, dynamic> product) {
  // 여기를 채우세요
  products[id] = product;
}

// ---------- READ ----------

// TODO: 상품 한 개 조회 (없으면 null 반환)
Map<String, dynamic>? readProduct(String id) {
  // 여기를 채우세요
  return products[id];
}

// TODO: 전체 상품 조회
List<Map<String, dynamic>> readAll() {
  // 여기를 채우세요
  return products.values.toList();
}

// ---------- UPDATE (★ 전개 연산자 사용) ---------
// TODO: 기존 상품을 유지한 채, 변경된 필드만 덮어쓴 새 Map으로 교체
// 반드시 ... 전개 연산자를 사용할 것!
void updateProduct(String id, Map<String, dynamic> patch) {
  // 힌트:
  //   final old = products[id];
  //   products[id] = { ...old, ...patch };
  // 여기를 채우세요
  final old = products[id];
  products[id] = {...?old, ...patch};
}

// ---------- DELETE ---------
// TODO: 상품 삭제
void deleteProduct(String id) {
  // 여기를 채우세요
  products.remove(id);
}

void main() {
  // 1) CREATE: 3개의 상품 추가
  createProduct('p1', {'name': '노트북', 'price': 1500000, 'stock': 10});
  createProduct('p2', {'name': '키보드', 'price': 120000, 'stock': 50});
  createProduct('p3', {'name': '마우스', 'price': 40000, 'stock': 100});
  // 2) READ
  print('p1 조회: ${readProduct('p1')}');
  print('전체: ${readAll()}');
  // 3) UPDATE (전개 연산자!)
  //    - p1의 price를 1400000으로 낮추기
  //    - p2의 stock을 30으로 줄이고 'event' 필드를 true로 추가하기
  updateProduct('p1', {'price': 1400000});
  updateProduct('p2', {'stock': 30, 'event': true});
  print('업데이트 후 p1: ${readProduct('p1')}');
  print('업데이트 후 p2: ${readProduct('p2')}');
  // 4) DELETE
  deleteProduct('p3');
  print('삭제 후 전체: ${readAll()}');
}
