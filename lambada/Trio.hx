package lambada;

import lambada.Duet;
import lambada.Duet.MDuet;

// simply following the way from tink.core.Pair here
@:pure abstract Trio<A, B, C>(MTrio<A, B, C>) {
  
  public var a(get, never):A;
  public var b(get, never):B;
  public var c(get, never):C;
  
  public inline function new(a:A, b:B, c:C) this = new MTrio(a, b, c);
  
  inline function get_a():A return this.a;
  inline function get_b():B return this.b;
  inline function get_c():C return this.c;

  inline public function ab() : Duet<A,B> return new Duet(a, b);
  inline public function ac() : Duet<A,C> return new Duet(a, c);
  inline public function bc() : Duet<B,C> return new Duet(b, c);
  
  @:to inline function toBool() 
    return this != null;
    
  @:op(!a) public function isNil() 
    return this == null;
  
  static public function nil<A, B, C>():Trio<A, B, C> 
    return null;
}

class MTrio<A, B, C> {
  public var a:A;
  public var b:B;
  public var c:C;
  public function new(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
  }
}

