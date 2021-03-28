lbl_8007DF00:
/* 8007DF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DF04  7C 08 02 A6 */	mflr r0
/* 8007DF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DF0C  A0 C3 00 92 */	lhz r6, 0x92(r3)
/* 8007DF10  38 E0 00 01 */	li r7, 1
/* 8007DF14  4B FF FE CD */	bl SphChkGrpRp__4dBgWFP11dBgS_SphChkPvii
/* 8007DF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DF1C  7C 08 03 A6 */	mtlr r0
/* 8007DF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DF24  4E 80 00 20 */	blr 
