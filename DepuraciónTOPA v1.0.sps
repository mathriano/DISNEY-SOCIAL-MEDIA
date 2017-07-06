
DATASET ACTIVATE DataSet1.

STRING aborrar (A1273) .
EXECUTE .
COMPUTE aborrar = snippet .
EXECUTE .

COMPUTE aborrar=REPLACE(aborrar,"Ã³","ó").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ã¡","á").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ãº","ú").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ã±","ñ").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ã­","í").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ã¼","ü").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"ÃƒÂ³","o").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"ÃƒÂ©","e").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"ÃƒÂ­","i").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ãš","U").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"ï¿½","ñ").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Ã‰","E").
EXECUTE.

**************** correr primero lo de arriba y luego lo siguiente.

COMPUTE aborrar=REPLACE(aborrar,"©","ARROBA").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"Â"," ").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"#","NUMERAL").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"$","PESOS").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"%","PORCENTAJE").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"&","AND").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"=","IGUAL").
EXECUTE.
COMPUTE aborrar=REPLACE(aborrar,"®","MARCAREGISTRADA").
EXECUTE.

************************************ .
STRING Url_BIS (A255) .
EXECUTE .
COMPUTE Url_BIS=Url.
EXECUTE.

COMPUTE Flg_AU=CHAR.INDEX(Url_BIS,".aw").
EXECUTE.
COMPUTE Flg_es=CHAR.INDEX(Url_BIS,".es/").
EXECUTE.
************************************ .

COMPUTE Flg_SETOPA_todomay=CHAR.INDEX(Snippet," SE TOPA ").
EXECUTE.
COMPUTE Flg_TOPACON_todomay=CHAR.INDEX(Snippet," TOPA CON").
EXECUTE.
COMPUTE Flg_SETOPA=CHAR.INDEX(Snippet," se topa ").
EXECUTE.
COMPUTE Flg_TOPACON=CHAR.INDEX(Snippet," topa con ").
EXECUTE.
COMPUTE Flg_SETOPA_may=CHAR.INDEX(Snippet," se Topa ").
EXECUTE.
COMPUTE Flg_TOPACON_may=CHAR.INDEX(Snippet," Topa con ").
EXECUTE.
COMPUTE Flg_TOPACON_may_sinseparacion=CHAR.INDEX(Snippet,"Topa con ").
EXECUTE.
COMPUTE Flg_TOPACON_min_sinseparacion=CHAR.INDEX(Snippet,"topa con ").
EXECUTE.
COMPUTE Flg_eConDieresis=CHAR.INDEX(Snippet,"ë").
EXECUTE.
COMPUTE Flg_cu=CHAR.INDEX(Snippet," cu ").
EXECUTE.
COMPUTE Flg_punto_cu=CHAR.INDEX(Snippet,".cu ").
EXECUTE.
COMPUTE Flg_punto_pa=CHAR.INDEX(Snippet,".pa ").
EXECUTE.
COMPUTE Flg_pa=CHAR.INDEX(Snippet," pa ").
EXECUTE.
COMPUTE Flg_aki=CHAR.INDEX(Snippet," aki ").
EXECUTE.
COMPUTE Flg_eta=CHAR.INDEX(Snippet," eta ").
EXECUTE.
COMPUTE Flg_riba=CHAR.INDEX(Snippet," riba ").
EXECUTE.
COMPUTE Flg_bay=CHAR.INDEX(Snippet," bay ").
EXECUTE.
COMPUTE Flg_tin=CHAR.INDEX(Snippet," tin ").
EXECUTE.
COMPUTE Flg_hopi=CHAR.INDEX(Snippet," hopi ").
EXECUTE.
COMPUTE Flg_tabata=CHAR.INDEX(Snippet," tabata ").
EXECUTE.
COMPUTE Flg_mestar=CHAR.INDEX(Snippet," mestar ").
EXECUTE.
COMPUTE Flg_prome=CHAR.INDEX(Snippet," prome ").
EXECUTE.
COMPUTE Flg_tamba=CHAR.INDEX(Snippet," tamba ").
EXECUTE.
COMPUTE Flg_tur=CHAR.INDEX(Snippet," tur ").
EXECUTE.
COMPUTE Flg_tolon=CHAR.INDEX(Snippet,"tolon").
EXECUTE.
COMPUTE Flg_signopregunta=CHAR.INDEX(Snippet,"?").
EXECUTE.


**************************************************************************************************** .
COMPUTE Flg_espacioComasEnPERSON=CHAR.INDEX(Person,", ").
EXECUTE.
STRING Person1 (A64) .
EXECUTE .
COMPUTE Person1 = Person .
EXECUTE .
IF  (Flg_espacioComasEnPERSON > 0) Person1=STRUNC(Person1,Flg_espacioComasEnPERSON - 1).
EXECUTE.

STRING Person2 (A64) .
EXECUTE .
IF  (Flg_espacioComasEnPERSON > 0) Person2=Person.
EXECUTE.
IF  (Flg_espacioComasEnPERSON > 0) Person2=CHAR.SUBSTR(Person2,Flg_espacioComasEnPERSON + 2).
EXECUTE.

**************************************************************************************************** .
COMPUTE Flg_espacioComasEnPERSON2=CHAR.INDEX(Person2,", ").
EXECUTE.
STRING Person3 (A64) .
EXECUTE .
COMPUTE Person3 = Person2 .
EXECUTE .
IF  (Flg_espacioComasEnPERSON2 > 0) Person3=STRUNC(Person3,Flg_espacioComasEnPERSON2 - 1).
EXECUTE.

STRING Person4 (A64) .
EXECUTE .
IF  (Flg_espacioComasEnPERSON2 > 0) Person4=Person2.
EXECUTE.
IF  (Flg_espacioComasEnPERSON2 > 0) Person4=CHAR.SUBSTR(Person4,Flg_espacioComasEnPERSON2 + 2).
EXECUTE.

**************************************************************************************************** .
COMPUTE Flg_espacioComasEnPERSON4=CHAR.INDEX(Person4,", ").
EXECUTE.
STRING Person5 (A64) .
EXECUTE .
COMPUTE Person5 = Person4 .
EXECUTE .
IF  (Flg_espacioComasEnPERSON4 > 0) Person5=STRUNC(Person5,Flg_espacioComasEnPERSON4 - 1).
EXECUTE.

STRING Person6 (A64) .
EXECUTE .
IF  (Flg_espacioComasEnPERSON4 > 0) Person6=Person4.
EXECUTE.
IF  (Flg_espacioComasEnPERSON4 > 0) Person6=CHAR.SUBSTR(Person6,Flg_espacioComasEnPERSON4 + 2).
EXECUTE.

**************************************************************************************************** .
COMPUTE Flg_espacioComasEnPERSON6=CHAR.INDEX(Person6,", ").
EXECUTE.
STRING Person7 (A66) .
EXECUTE .
COMPUTE Person7 = Person6 .
EXECUTE .
IF  (Flg_espacioComasEnPERSON6 > 0) Person7=STRUNC(Person7,Flg_espacioComasEnPERSON6 - 1).
EXECUTE.

STRING Person8 (A66) .
EXECUTE .
IF  (Flg_espacioComasEnPERSON6 > 0) Person8=Person6.
EXECUTE.
IF  (Flg_espacioComasEnPERSON6 > 0) Person8=CHAR.SUBSTR(Person6,Flg_espacioComasEnPERSON6 + 2).
EXECUTE.

**************************************************************************************************** .
COMPUTE Flg_espacioComasEnPERSON8=CHAR.INDEX(Person8,", ").
EXECUTE.
STRING Person9 (A88) .
EXECUTE .
COMPUTE Person9 = Person8 .
EXECUTE .
IF  (Flg_espacioComasEnPERSON8 > 0) Person9=STRUNC(Person9,Flg_espacioComasEnPERSON8 - 1).
EXECUTE.

STRING Person10 (A88) .
EXECUTE .
IF  (Flg_espacioComasEnPERSON8 > 0) Person10=Person8.
EXECUTE.
IF  (Flg_espacioComasEnPERSON8 > 0) Person10=CHAR.SUBSTR(Person8,Flg_espacioComasEnPERSON8 + 2).
EXECUTE.





********************************* OJO QUE VUEEEEELA .
DATASET ACTIVATE DataSet3.
FILTER OFF.
USE ALL.
SELECT IF (Country = "AR" | Country = "US" | Country = "PE" | Country = "CL" | Country = "CO" | 
    Country = "VE" | Country = "PY" | Country = "EC" | Country = "BO").
EXECUTE.

********************************* PARA CASI-DUPLICADAS .
STRING SnippetRECORTADA (A64) .
EXECUTE .
COMPUTE SnippetRECORTADA = Snippet .
EXECUTE .


FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast = 1).
EXECUTE.

* Identify Duplicate Cases.
SORT CASES BY SnippetRECORTADA(A).
MATCH FILES
  /FILE=*
  /BY SnippetRECORTADA
 /DROP = PrimaryLast  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicator of each last matching case as Primary'.
VALUE LABELS  PrimaryLast 0 'Duplicate Case' 1 'Primary Case'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

********************************* OJO QUE VUEEEEELA .
FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast = 1).
EXECUTE.

