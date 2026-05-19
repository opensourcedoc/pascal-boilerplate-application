{$ifdef FPC} {$mode DELPHIUNICODE} {$endif}

{$ifdef WINDOWS} {$apptype CONSOLE} {$endif}

program Main;

{$INCLUDE Type.inc}

begin
  {$ifdef DEBUG}
  Writeln('[DEBUG] Debug mode enabled');
  {$endif}
  Writeln('Hello World');

  (* Hold the terminal in Debug mode. *)
  {$ifdef DEBUG}
  Writeln('Press ENTER to continue ...');
  {$endif}
  {$ifdef DEBUG} readln; {$endif}
end.
