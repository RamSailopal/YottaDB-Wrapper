PROCENTRY
 S CNT=0
 S MENU=""
 F  S MENU=$O(^HELP("s",MENU)) Q:MENU=""  D
 .S CNT=CNT+1
 .W !,CNT_" "_MENU
 Q
PROCINFO(LABEL,LABEL1,LABEL2,LABEL3,LABEL4,LABEL5,LABEL6,LABEL7,LABEL8)
 S MENU=""
 F  S MENU=$O(^HELP("s",MENU)) Q:MENU=""  D
 .S MENU1=""
 .F  S MENU1=$O(^HELP("s",MENU,MENU1)) Q:MENU1=""  D
 ..I MENU=LABEL&(MENU1'="s")&(LABEL1="")&(LABEL2="")&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MENU1'="s") W !,^HELP("s",MENU,MENU1)
 ..S MENU2=""
 ..F  S MENU2=$O(^HELP("s",MENU,MENU1,MENU2)) Q:MENU2=""  D
 ...I MENU1=LABEL1&(LABEL=MENU)&(LABEL2="")&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MENU2'="s") W !,^HELP("s",MENU,MENU1,MENU2)
 ...S MENU3=""
 ...F  S MENU3=$O(^HELP("s",MENU,MENU1,MENU2,MENU3)) Q:MENU3=""  D
 ....I MENU2=LABEL2&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MENU3'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3)
 ....S MENU4=""
 ....F  S MENU4=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4)) Q:MENU4=""  D
 .....I MENU3=LABEL3&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL4="")&(LABEL5="")&(LABEL6="")&(MENU4'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4)
 .....S MENU5=""
 .....F  S MENU5=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5)) Q:MENU5=""  D
 ......I MENU4=LABEL4&(MENU3=LABEL3)&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MENU5'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5)
 ......S MENU6=""
 ......F  S MENU6=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6)) Q:MENU6=""  D
 .......I MENU5=LABEL5&(MENU4=LABEL4)&(MENU3=LABEL3)&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MENU6'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6)
 .......S MENU7=""
 .......F  S MENU7=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7)) Q:MENU7=""  D
 ........I MENU6=LABEL6&(MENU5=LABEL5)&(MENU4=LABEL4)&(MENU3=LABEL3)&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL7="")&(LABEL8="")&(MENU7'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7)
 ........S MENU8=""
 ........F  S MENU8=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7,MENU8)) Q:MENU8=""  D
 .........I MENU7=LABEL7&(MENU6=LABEL6)&(MENU5=LABEL5)&(MENU4=LABEL4)&(MENU3=LABEL3)&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL8="")&(MENU8'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7,MENU8)
 .........S MENU9=""
 .........F  S MENU9=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7,MENU8,MENU9)) Q:MENU9=""  D
 ..........I MENU8=LABEL8&(MENU7=LABEL7)&(MENU6=LABEL6)&(MENU5=LABEL5)&(MENU4=LABEL4)&(MENU3=LABEL3)&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL)&(MENU9'="s") W !,^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7,MENU8,MENU9)
 Q
PROCMENU(LABEL,LABEL1,LABEL2,LABEL3)
 S CNT=0
 S MENU=""
 F  S MENU=$O(^HELP("s",MENU)) Q:MENU=""  D
 .S MENU1=""
 .F  S MENU1=$O(^HELP("s",MENU,"s",MENU1)) Q:MENU1=""  D 
 ..I MENU=LABEL&(LABEL1="")&(LABEL2="")&(LABEL3="") S CNT=CNT+1 W !,CNT_" "_MENU1
 ..S MENU2=""
 ..F  S MENU2=$O(^HELP("s",MENU,"s",MENU1,"s",MENU2)) Q:MENU2=""  D
 ...I MENU1=LABEL1&(MENU=LABEL)&(LABEL2="")&(LABEL3="") S CNT=CNT+1 W !,CNT_" "_MENU2
 ...S MENU3=""
 ...F  S MENU3=$O(^HELP("s",MENU,"s",MENU1,"s",MENU2,"s",MENU3)) Q:MENU3=""  D
 ....I MENU2=LABEL2&(MENU1=LABEL1)&(MENU=LABEL)&(LABEL3="") S CNT=CNT+1 W !,CNT_" "_MENU3
 ....S MENU4=""
 ....F  S MENU4=$O(^HELP("s",MENU,"s",MENU1,"s",MENU2,"s",MENU3,"s",MENU4)) Q:MENU4=""  D
 .....I MENU3=LABEL3&(MENU2=LABEL2)&(MENU1=LABEL1)&(MENU=LABEL) S CNT=CNT+1 W !,CNT_" "_MENU4
 Q
SEARCH(TERM)
 S %S=TERM
 D ^%UCASE
 S STERM=%S
 S MENU=""
 S CNT=0
 F  S MENU=$O(^HELP("s",MENU)) Q:MENU=""  D
 .I MENU'="s"&(MENU[STERM) S CNT=CNT+1 W !,CNT_" "_MENU
 .E  D
 ..S TXT=$$PROCINFO1(MENU,"","","","","","","","")
 ..S %S=TXT
 ..D ^%UCASE
 ..I %S[TXT S CNT=CNT+1 W !,CNT_" "_MENU 
 .S MENU1=""
 .F  S MENU1=$O(^HELP("s",MENU,MENU1)) Q:MENU1=""  D
 ..S MENU2=""
 ..F  S MENU2=$O(^HELP("s",MENU,MENU1,MENU2)) Q:MENU2=""  D
 ...I MENU2'="s"&(MENU2[STERM) S CNT=CNT+1 W !,CNT_" "_MENU_"->"_MENU2
 ...E  D
 ....S TXT=$$PROCINFO1(MENU,"s",MENU2,"","","","","","")
 ....S %S=TXT
 ....D ^%UCASE
 ....I %S[TXT S CNT=CNT+1 W !,CNT_" "_MENU
 ...S MENU3=""
 ...F  S MENU3=$O(^HELP("s",MENU,MENU1,MENU2,MENU3)) Q:MENU3=""  D
 ....S MENU4=""
 ....F  S MENU4=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4)) Q:MENU4=""  D
 .....I MENU4'="s"&(MENU4[STERM) S CNT=CNT+1 W !,CNT_" "_MENU_"->"_MENU2_"->"_MENU4
 .....E  D
 ......S TXT=$$PROCINFO1(MENU,"s",MENU2,"s",MENU4,"","","","")
 ......S %S=TXT
 ......D ^%UCASE
 ......I %S[TXT S CNT=CNT+1 W !,CNT_" "_MENU
 .....S MENU5=""
 .....F  S MENU5=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5)) Q:MENU5=""  D
 ......S MENU6=""
 ......F  S MENU6=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6)) Q:MENU6=""  D
 .......I MENU6'="s"&(MENU6[STERM) S CNT=CNT+1 W !,CNT_" "_MENU_"->"_MENU2_"->"_MENU4_"->"_MENU6
 .......E  D
 ........S TXT=$$PROCINFO1(MENU,"s",MENU2,"s",MENU4,"s",MENU6,"","")
 ........S %S=TXT
 ........D ^%UCASE
 ........I %S[TXT S CNT=CNT+1 W !,CNT_" "_MENU
 .......S MENU7=""
 .......F  S MENU7=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7)) Q:MENU7=""  D
 ........S MENU8=""
 ........F  S MENU8=$O(^HELP("s",MENU,MENU1,MENU2,MENU3,MENU4,MENU5,MENU6,MENU7,MENU8)) Q:MENU8=""  D
 .........I MENU8'="s"&(MENU8[STERM) S CNT=CNT+1 W !,CNT_" "_MENU_"->"_MENU2_"->"_MENU4_"->"_MENU6_"->"_MENU8
 .........E  D
 ..........S TXT=$$PROCINFO1(MENU,"s",MENU2,"s",MENU4,"s",MENU6,"s",MENU8)
 ..........S %S=TXT
 ..........D ^%UCASE
 ..........I %S[TXT S CNT=CNT+1 W !,CNT_" "_MENU
 Q
PROCINFO1(LABEL,LABEL1,LABEL2,LABEL3,LABEL4,LABEL5,LABEL6,LABEL7,LABEL8)
 S TXT=""
 S MEN=""
 F  S MEN=$O(^HELP("s",MEN)) Q:MEN=""  D
 .S MEN1=""
 .F  S MEN1=$O(^HELP("s",MEN,MEN1)) Q:MEN1=""  D
 ..I MEN=LABEL&(MEN1'="s")&(LABEL1="")&(LABEL2="")&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MEN1'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1)
 ..S MEN2=""
 ..F  S MEN2=$O(^HELP("s",MEN,MEN1,MEN2)) Q:MEN2=""  D
 ...I MEN1=LABEL1&(LABEL=MEN)&(LABEL2="")&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MEN2'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2)
 ...S MEN3=""
 ...F  S MEN3=$O(^HELP("s",MEN,MEN1,MEN2,MEN3)) Q:MEN3=""  D
 ....I MEN2=LABEL2&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL3="")&(LABEL4="")&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MEN3'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3)
 ....S MEN4=""
 ....F  S MEN4=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4)) Q:MEN4=""  D
 .....I MEN3=LABEL3&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL4="")&(LABEL5="")&(LABEL6="")&(MEN4'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4)
 .....S MEN5=""
 .....F  S MEN5=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5)) Q:MEN5=""  D
 ......I MEN4=LABEL4&(MEN3=LABEL3)&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL5="")&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MEN5'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5)
 ......S MEN6=""
 ......F  S MEN6=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6)) Q:MEN6=""  D
 .......I MEN5=LABEL5&(MEN4=LABEL4)&(MEN3=LABEL3)&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL6="")&(LABEL7="")&(LABEL8="")&(MEN6'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6)
 .......S MEN7=""
 .......F  S MEN7=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7)) Q:MEN7=""  D
 ........I MEN6=LABEL6&(MEN5=LABEL5)&(MEN4=LABEL4)&(MEN3=LABEL3)&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL7="")&(LABEL8="")&(MEN7'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7)
 ........S MEN8=""
 ........F  S MEN8=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7,MEN8)) Q:MEN8=""  D
 .........I MEN7=LABEL7&(MEN6=LABEL6)&(MEN5=LABEL5)&(MEN4=LABEL4)&(MEN3=LABEL3)&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(LABEL8="")&(MEN8'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7,MEN8)
 .........S MEN9=""
 .........F  S MEN9=$O(^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7,MEN8,MEN9)) Q:MEN9=""  D
 ..........I MEN8=LABEL8&(MEN7=LABEL7)&(MEN6=LABEL6)&(MEN5=LABEL5)&(MEN4=LABEL4)&(MEN3=LABEL3)&(MEN2=LABEL2)&(MEN1=LABEL1)&(MEN=LABEL)&(MEN9'="s") S TXT=TXT_" "_^HELP("s",MEN,MEN1,MEN2,MEN3,MEN4,MEN5,MEN6,MEN7,MEN8,MEN9)
 Q TXT
 
