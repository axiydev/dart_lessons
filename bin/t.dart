import 'dart:typed_data';

void main(List<String> args) {
  final ByteBuffer buffer = Uint8List(8).buffer;
  print(buffer.lengthInBytes.toString());
  final ByteData bData = ByteData.view(buffer);
  print(bData.lengthInBytes);

  bData.setFloat32(0, 3.04);
  double? dataInPositionZero = bData.getFloat32(0);
  print(dataInPositionZero);
  bData.setInt32(3, 19);
  print(bData.getInt32(3));
  print(bData.offsetInBytes);
}
