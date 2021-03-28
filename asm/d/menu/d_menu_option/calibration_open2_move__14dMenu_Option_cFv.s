lbl_801E53C4:
/* 801E53C4  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801E53C8  80 04 00 04 */	lwz r0, 4(r4)
/* 801E53CC  2C 00 00 01 */	cmpwi r0, 1
/* 801E53D0  4C 82 00 20 */	bnelr 
/* 801E53D4  38 00 00 02 */	li r0, 2
/* 801E53D8  98 03 03 F4 */	stb r0, 0x3f4(r3)
/* 801E53DC  4E 80 00 20 */	blr 
