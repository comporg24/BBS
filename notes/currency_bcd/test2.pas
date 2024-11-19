program test2;


var
  total: real;
  i: integer;
begin

 total := 0.2;
 for i := 0 to 100 do
 begin
   total := total + 0.2;
 end;
   writeln('total = ', total);

end.
