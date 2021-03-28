lbl_801FBB00:
/* 801FBB00  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801FBB04  80 04 00 04 */	lwz r0, 4(r4)
/* 801FBB08  2C 00 00 00 */	cmpwi r0, 0
/* 801FBB0C  4C 82 00 20 */	bnelr 
/* 801FBB10  38 00 00 05 */	li r0, 5
/* 801FBB14  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FBB18  4E 80 00 20 */	blr 
