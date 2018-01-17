Digit
  : ["0".."9"];
IntegerLiteral
  : Digit (Digit | "_")*
FloatLiteral
  : <Java double literal>;
HexDigit
  : Digit | ["A".."F", "a".."f"];
HexadecimalLiteral
  : "0x" HexDigit (HexDigit | "_")*;
CharacterLiteral
  : <character as in Java>;

NoEscapeString
  : <"""-quoted string>;
RegularStringPart
  : <any character other than backslash, quote, $ or newline>
ShortTemplateEntryStart:
  : "$"
EscapeSequence:
  : UnicodeEscapeSequence | RegularEscapeSequence
UnicodeEscapeSequence:
  : "\u" HexDigit{4}
RegularEscapeSequence:
  : "\" <any character other than newline>

SEMI
  : <semicolon or newline>;
SimpleName
  : <java identifier>
  : "`" <java identifier> "`"
  ;

LabelName
  : "@" SimpleName;


