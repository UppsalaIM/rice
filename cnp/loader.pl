


load() :-
  write('CNP synthesizer is loading...\n'),
  writeln('Generating valences from generate_valences.py.'),
  absolute_file_name('./tools/generate_valences.py', F),
  string_concat('py ', F, C),
  shell(C).

:- initialization(load(), now).

:- consult('cnp.pl').
:- consult('cnp_syn.pl').
:- consult('cnp_lib.pl').



:- initialization(writeln('CNP synthesizer is ready. Enter "cnp_help." for help.'), program).


cnp_help :-
  absolute_file_name('readme.txt', Filename),
  open(Filename, read, Stream),
  print_stream(Stream),
  close(Stream),
  writeln('Enter "cnp_help." to see this message again.').

print_stream(Stream) :-
  get_char(Stream, Char),
  ((Char==end_of_file, !);
   (write(Char), print_stream(Stream))).
