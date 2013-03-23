latex --src-specials --synctex=-1 论文模版示例
makeindex 论文模版示例.idx
bibtex 论文模版示例
latex --src-specials --synctex=-1 论文模版示例
latex --src-specials --synctex=-1 论文模版示例
dvipdfmx -p a4 论文模版示例
del *.dvi
del *.aux
del *.log
del *.toc
del *.idx
del *.ind
del *.out
del *.bbl
del *.lof
del *.lot
del *.ilg
del *.blg
del *.synctex