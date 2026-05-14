{$ifdef FPC} {$mode DELPHIUNICODE} {$endif}

{$ifdef WINDOWS} {$apptype CONSOLE} {$endif}

program Main;

{$INCLUDE Type.inc}

begin
  Writeln('Hello World');

  (* Hold the terminal in Debug mode. *)
  {$ifdef DEBUG} readln; {$endif}
end.
