lbl_80024EDC:
/* 80024EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024EE0  7C 08 02 A6 */	mflr r0
/* 80024EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024EE8  4B FF FF 49 */	bl dStage_getName__FsSc
/* 80024EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024EF0  7C 08 03 A6 */	mtlr r0
/* 80024EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80024EF8  4E 80 00 20 */	blr 
