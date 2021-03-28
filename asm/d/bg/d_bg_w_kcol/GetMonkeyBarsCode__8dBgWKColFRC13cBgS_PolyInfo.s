lbl_80082B3C:
/* 80082B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80082B40  7C 08 02 A6 */	mflr r0
/* 80082B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80082B48  A0 84 00 00 */	lhz r4, 0(r4)
/* 80082B4C  38 A1 00 08 */	addi r5, r1, 8
/* 80082B50  4B FF C0 21 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 80082B54  80 01 00 08 */	lwz r0, 8(r1)
/* 80082B58  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80082B5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80082B60  7C 08 03 A6 */	mtlr r0
/* 80082B64  38 21 00 20 */	addi r1, r1, 0x20
/* 80082B68  4E 80 00 20 */	blr 
