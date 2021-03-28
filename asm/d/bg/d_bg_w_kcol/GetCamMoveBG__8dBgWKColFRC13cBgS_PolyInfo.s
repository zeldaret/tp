lbl_80082E6C:
/* 80082E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082E70  7C 08 02 A6 */	mflr r0
/* 80082E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082E78  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082E7C  38 A1 00 08 */	addi r5, r1, 8
/* 80082E80  4B FF BC F1 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082E84  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80082E88  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80082E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082E90  7C 08 03 A6 */	mtlr r0
/* 80082E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80082E98  4E 80 00 20 */	blr 
