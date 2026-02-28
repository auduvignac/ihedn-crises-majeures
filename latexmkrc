# latexmkrc
$interaction = 'nonstopmode';
$halt_on_error = 1;

# Engine profile (override with LATEXMK_ENGINE=pdflatex|xelatex|lualatex).
# Default stays XeLaTeX for this project.
my $engine = $ENV{'LATEXMK_ENGINE'} // 'xelatex';

if ($engine eq 'xelatex') {
  $pdf_mode = 5;
  $xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
  # Compatibility: tools that call `latexmk -pdf` should still use XeLaTeX.
  $pdflatex = $xelatex;
}
elsif ($engine eq 'lualatex') {
  $pdf_mode = 4;
  $lualatex = 'lualatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
}
elsif ($engine eq 'pdflatex') {
  $pdf_mode = 1;
  $pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
}
else {
  die "Unknown LATEXMK_ENGINE='$engine' (expected: pdflatex|xelatex|lualatex)\n";
}

# Nettoyage additionnel
$clean_ext .= ' synctex.gz';

# Dossier de sortie (optionnel)
# $out_dir = 'build';
