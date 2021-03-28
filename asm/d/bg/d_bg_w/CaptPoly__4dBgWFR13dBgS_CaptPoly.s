lbl_8007DAF8:
/* 8007DAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DAFC  7C 08 02 A6 */	mflr r0
/* 8007DB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DB04  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007DB08  38 C0 00 01 */	li r6, 1
/* 8007DB0C  4B FF FE F9 */	bl CaptPolyGrpRp__4dBgWFR13dBgS_CaptPolyii
/* 8007DB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DB14  7C 08 03 A6 */	mtlr r0
/* 8007DB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DB1C  4E 80 00 20 */	blr 
