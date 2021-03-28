lbl_80082A20:
/* 80082A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082A24  7C 08 02 A6 */	mflr r0
/* 80082A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082A2C  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082A30  38 A1 00 08 */	addi r5, r1, 8
/* 80082A34  4B FF C1 3D */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082A38  80 01 00 08 */	lwz r0, 8(r1)
/* 80082A3C  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80082A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082A44  7C 08 03 A6 */	mtlr r0
/* 80082A48  38 21 00 20 */	addi r1, r1, 0x20
/* 80082A4C  4E 80 00 20 */	blr 
