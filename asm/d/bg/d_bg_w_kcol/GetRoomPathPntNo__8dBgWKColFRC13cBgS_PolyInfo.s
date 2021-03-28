lbl_80082EFC:
/* 80082EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082F00  7C 08 02 A6 */	mflr r0
/* 80082F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082F08  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082F0C  38 A1 00 08 */	addi r5, r1, 8
/* 80082F10  4B FF BC 61 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082F14  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80082F18  54 03 46 3E */	srwi r3, r0, 0x18
/* 80082F1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082F20  7C 08 03 A6 */	mtlr r0
/* 80082F24  38 21 00 20 */	addi r1, r1, 0x20
/* 80082F28  4E 80 00 20 */	blr 
