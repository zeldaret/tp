lbl_8007D470:
/* 8007D470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007D474  7C 08 02 A6 */	mflr r0
/* 8007D478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007D47C  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007D480  38 C0 00 01 */	li r6, 1
/* 8007D484  4B FF FE AD */	bl RoofChkGrpRp__4dBgWFP12dBgS_RoofChkii
/* 8007D488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007D48C  7C 08 03 A6 */	mtlr r0
/* 8007D490  38 21 00 10 */	addi r1, r1, 0x10
/* 8007D494  4E 80 00 20 */	blr 
