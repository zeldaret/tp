lbl_800058A0:
/* 800058A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800058A4  7C 08 02 A6 */	mflr r0
/* 800058A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800058AC  80 63 00 08 */	lwz r3, 8(r3)
/* 800058B0  4B FF FF 99 */	bl countUsed__FP10JKRExpHeap
/* 800058B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800058B8  7C 08 03 A6 */	mtlr r0
/* 800058BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800058C0  4E 80 00 20 */	blr 
