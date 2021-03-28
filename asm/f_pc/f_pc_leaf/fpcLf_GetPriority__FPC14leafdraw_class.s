lbl_80021A00:
/* 80021A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021A04  7C 08 02 A6 */	mflr r0
/* 80021A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021A0C  38 63 00 BE */	addi r3, r3, 0xbe
/* 80021A10  4B FF F8 F9 */	bl fpcDwPi_Get__FPC19draw_priority_class
/* 80021A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021A18  7C 08 03 A6 */	mtlr r0
/* 80021A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80021A20  4E 80 00 20 */	blr 
