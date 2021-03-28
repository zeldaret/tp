lbl_801FBD64:
/* 801FBD64  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801FBD68  80 04 00 04 */	lwz r0, 4(r4)
/* 801FBD6C  2C 00 00 00 */	cmpwi r0, 0
/* 801FBD70  4C 82 00 20 */	bnelr 
/* 801FBD74  38 00 00 00 */	li r0, 0
/* 801FBD78  98 03 01 46 */	stb r0, 0x146(r3)
/* 801FBD7C  4E 80 00 20 */	blr 
