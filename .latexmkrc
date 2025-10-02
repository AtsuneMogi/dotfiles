#!/usr/bin/env perl

$latex = 'uplatex %O -synctex=1 -interaction=nonstopmode %S';
$pdflatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex = 'upbibtex %O %B';
$makeindex = 'upmendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$dvips = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf = 'ps2pdf %O %S %D';
$pdf_mode = 1;
$pdf_previewer = 'zathura'

#$latex            = 'uplatex -halt-on-error';
#$latex_silent     = 'uplatex -halt-on-error -interaction=batchmode';
# bibtex
#$bibtex           = 'upbibtex';
# dvi/pdf
#$dvipdf           = 'dvipdfmx %O -o %D %S';$pdf_mode         = 3;
# index
#$makeindex        = 'mendex %O -o %D %S';
