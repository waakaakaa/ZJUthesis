latex --src-specials --synctex=-1 ����ģ��ʾ��
makeindex ����ģ��ʾ��.idx
bibtex ����ģ��ʾ��
latex --src-specials --synctex=-1 ����ģ��ʾ��
latex --src-specials --synctex=-1 ����ģ��ʾ��
dvipdfmx -p a4 ����ģ��ʾ��
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