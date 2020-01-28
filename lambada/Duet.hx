package lambada;

// "The terms duet, trio, quartet,quintet, sextet, septet, octet, nonet and
// dectet describe groups of two up to ten musicians, respectively. A group of
// eleven musicians, such as found in The Carnival of the Animals, is called
// either a hendectet or an undectet. A solo is not an ensemble because it only
// contains one musician."
typedef Duet<A,B> = tink.core.Pair<A,B>;
typedef MDuet<A,B> = tink.core.Pair.MPair<A,B>;
// typedef Trio<A,B,C> = { a:A, b:B, c:C };
// typedef Quartet<A,B,C,D> = Trio<A,B,C> & { d:D };

