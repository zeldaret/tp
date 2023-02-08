lbl_804E1098:
/* 804E1098  3C 80 80 4E */	lis r4, l_light_color@ha /* 0x804E19D4@ha */
/* 804E109C  8C 04 19 D4 */	lbzu r0, l_light_color@l(r4)  /* 0x804E19D4@l */
/* 804E10A0  B0 03 09 54 */	sth r0, 0x954(r3)
/* 804E10A4  88 04 00 01 */	lbz r0, 1(r4)
/* 804E10A8  B0 03 09 56 */	sth r0, 0x956(r3)
/* 804E10AC  88 04 00 02 */	lbz r0, 2(r4)
/* 804E10B0  B0 03 09 58 */	sth r0, 0x958(r3)
/* 804E10B4  3C 80 80 4E */	lis r4, lit_3813@ha /* 0x804E19DC@ha */
/* 804E10B8  C0 04 19 DC */	lfs f0, lit_3813@l(r4)  /* 0x804E19DC@l */
/* 804E10BC  D0 03 09 5C */	stfs f0, 0x95c(r3)
/* 804E10C0  D0 03 09 60 */	stfs f0, 0x960(r3)
/* 804E10C4  38 00 00 00 */	li r0, 0
/* 804E10C8  98 03 09 3F */	stb r0, 0x93f(r3)
/* 804E10CC  4E 80 00 20 */	blr 
