# latexmkrc
$interaction = 'nonstopmode';
$halt_on_error = 1;

# This template is XeLaTeX-only (fontspec + system fonts), regardless of
# latexmk command-line engine switches.
my @forbidden_switches = grep {
  /^-(?:pdflua|lualatex|pdfdvi|pdfps|dvi|ps)\b/
} @ARGV;
if (@forbidden_switches) {
  warn "WARNING (ihedn): XeLaTeX-only template.\n" .
       "Ignoring latexmk switch(es): " . join(', ', @forbidden_switches) . "\n" .
       "Forcing XeLaTeX configuration from latexmkrc.\n";
}

# This template is XeLaTeX-only (fontspec + system fonts).
# If LATEXMK_ENGINE is provided, only "xelatex" is accepted.
my $engine = $ENV{'LATEXMK_ENGINE'};
if (defined $engine && $engine ne 'xelatex') {
  warn "WARNING (ihedn): XeLaTeX-only template.\n" .
       "Ignoring LATEXMK_ENGINE='$engine' and forcing XeLaTeX.\n";
  $ENV{'LATEXMK_ENGINE'} = 'xelatex';
}

$xelatex = 'xelatex -shell-escape -synctex=1 -file-line-error %O %S';
$pdf_mode = 5;
# Compatibility: `latexmk -pdf` still runs XeLaTeX.
$pdflatex = $xelatex;
# Compatibility: if tooling forces LuaLaTeX modes/switches, still run XeLaTeX.
$lualatex = $xelatex;

# Fail fast with a clear message if XeLaTeX is missing.
sub cover_has_xelatex {
  my $pid = open(my $fh, '-|', 'xelatex', '--version');
  return 0 if !defined $pid;
  while (<$fh>) { } # consume output quietly
  close $fh;
  return $? == 0;
}

if (!cover_has_xelatex()) {
  die "ERROR: XeLaTeX is required but 'xelatex' was not found in PATH.\n" .
      "Install TeX Live XeTeX and retry (example: texlive-xetex).\n";
}

# Nettoyage additionnel
$clean_ext .= ' synctex.gz';

# Dossier de sortie (optionnel)
# $out_dir = 'build';
