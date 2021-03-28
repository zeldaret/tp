lbl_801FBA00:
/* 801FBA00  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801FBA04  80 04 00 04 */	lwz r0, 4(r4)
/* 801FBA08  2C 00 00 00 */	cmpwi r0, 0
/* 801FBA0C  4C 82 00 20 */	bnelr 
/* 801FBA10  38 00 00 05 */	li r0, 5
/* 801FBA14  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FBA18  4E 80 00 20 */	blr 
