void main(){
  TextExtendedClass cla = TextExtendedClass();
}

mixin TextMixin{
  void testPring(){
    print('hi');
  }
}
class TestBaseClass with TextMixin {  
}
class TextExtendedClass extends TestBaseClass{
 TextExtendedClass(){
  testPring();
 } 
}