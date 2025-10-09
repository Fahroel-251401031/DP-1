program testoperator;
uses crt;

var
    a, b: integer;
    printer : ^integer;
    al, ya, oke: string;
begin   
    clscr;
    //desigmant operator
    a := 8;
    b := 3;

    //unary operator
    writeln('-a');

    //string operator
    al := 'dasar';
    ya := 'pemograman';
    oke := al + ' ' + ya;
    writeln(oke);

    //address operator
    pointer := @a;
    writeln(pointer^);

    //unary operator (integer)
    writeln('Hasil pembagian : ', a / b:0:2);
    writeln('Hasil div : ', a div b);
    writeln('Hasil mod : ', a mod b);

    //relational operator
    writeln('a = b', a = b);
    writeln('a > b', a > b);
    writeln('a >= b', a >= b);
    writeln('a IN (5, 10, 15)', a in  [5, 10, 15]);

    //logika operator
    writeln(not true);
    writeln(false and true);
    writeln(false and false);
    writeln(false or true);
    writeln(false or false);
    writeln(true xor true);

    //bitwise operator
    writeln('not a = ', not a);
    writeln('not b = ', not b);
    writeln('a and b = ', a and b);
    writeln('a or b = ', a or b);
    writeln('a xor b = ', a xor b);
    writeln('a shl b = ', a shl b);
    writeln('a shr b = ', a shr b);

    
    end.