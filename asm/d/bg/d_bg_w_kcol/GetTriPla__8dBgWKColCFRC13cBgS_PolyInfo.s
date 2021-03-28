lbl_8007E894:
/* 8007E894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E898  7C 08 02 A6 */	mflr r0
/* 8007E89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E8A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E8A4  A0 A5 00 00 */	lhz r5, 0(r5)
/* 8007E8A8  48 00 00 19 */	bl GetTriPla__8dBgWKColCFi
/* 8007E8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E8B4  7C 08 03 A6 */	mtlr r0
/* 8007E8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E8BC  4E 80 00 20 */	blr 
