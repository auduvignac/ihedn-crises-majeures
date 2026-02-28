# latexmkrc
$pdf_mode = 5;
$interaction = 'nonstopmode';
$halt_on_error = 1;

# Utiliser XeLaTeX explicitement
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
# Compatibilité: si un outil appelle encore `latexmk -pdf`, utiliser XeLaTeX aussi.
$pdflatex = $xelatex;

# Nettoyage additionnel
$clean_ext .= ' synctex.gz';

# Dossier de sortie (optionnel)
# $out_dir = 'build';
