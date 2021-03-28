lbl_801FB900:
/* 801FB900  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801FB904  80 04 00 04 */	lwz r0, 4(r4)
/* 801FB908  2C 00 00 00 */	cmpwi r0, 0
/* 801FB90C  4C 82 00 20 */	bnelr 
/* 801FB910  38 00 00 05 */	li r0, 5
/* 801FB914  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FB918  4E 80 00 20 */	blr 
