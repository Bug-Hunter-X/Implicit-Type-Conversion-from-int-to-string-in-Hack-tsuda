function foo(x: int): int {  return x + 1; } function bar(x: int): int {  return foo(x) * 2; } function baz(x: int): int {  return bar(x) - 1; }  //this is correct // HHVM will compile this without any error //and will correctly execute the code  //however, the following code is problematic  function main(): void {  $x = 10;  echo baz($x); } 