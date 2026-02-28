# latexmkrc
$pdf_mode = 1;
$interaction = 'nonstopmode';
$halt_on_error = 1;

# Utiliser XeLaTeX
$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Nettoyage additionnel
$clean_ext .= ' synctex.gz';

# Dossier de sortie (optionnel)
# $out_dir = 'build';
