lbl_80082F2C:
/* 80082F2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082F30  7C 08 02 A6 */	mflr r0
/* 80082F34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082F38  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082F3C  38 A1 00 08 */	addi r5, r1, 8
/* 80082F40  4B FF BC 31 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082F44  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80082F48  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80082F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082F50  7C 08 03 A6 */	mtlr r0
/* 80082F54  38 21 00 20 */	addi r1, r1, 0x20
/* 80082F58  4E 80 00 20 */	blr 
