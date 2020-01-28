package lambada;

// simply following the way from tink.core.Pair here
@:pure abstract Quartet<A, B, C, D>(MQuartet<A, B, C, D>) {
  
  public var a(get, never):A;
  public var b(get, never):B;
  public var c(get, never):C;
  public var d(get, never):D;
  
  public inline function new(a:A, b:B, c:C, d:D) this = new MQuartet(a, b, c, d);
  
  inline function get_a():A return this.a;
  inline function get_b():B return this.b;
  inline function get_c():C return this.c;
  inline function get_d():D return this.d;
  
  @:to inline function toBool() 
    return this != null;
    
  @:op(!a) public function isNil() 
    return this == null;
  
  static public function nil<A, B, C, D>():Quartet<A, B, C, D> 
    return null;
}

class MQuartet<A, B, C, D> {
  public var a:A;
  public var b:B;
  public var c:C;
  public var d:D;
  public function new(a, b, c, d) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
  }
}


