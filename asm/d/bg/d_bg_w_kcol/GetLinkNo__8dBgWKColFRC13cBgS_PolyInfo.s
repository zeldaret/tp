lbl_80082D24:
/* 80082D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082D28  7C 08 02 A6 */	mflr r0
/* 80082D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082D30  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082D34  38 A1 00 08 */	addi r5, r1, 8
/* 80082D38  4B FF BE 39 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082D3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80082D40  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80082D44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082D48  7C 08 03 A6 */	mtlr r0
/* 80082D4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80082D50  4E 80 00 20 */	blr 
