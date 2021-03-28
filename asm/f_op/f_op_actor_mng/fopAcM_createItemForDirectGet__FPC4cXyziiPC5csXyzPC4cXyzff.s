lbl_8001C1B8:
/* 8001C1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001C1BC  7C 08 02 A6 */	mflr r0
/* 8001C1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001C1C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8001C1C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8001C1CC  38 00 00 07 */	li r0, 7
/* 8001C1D0  90 01 00 08 */	stw r0, 8(r1)
/* 8001C1D4  38 00 00 00 */	li r0, 0
/* 8001C1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001C1DC  39 01 00 10 */	addi r8, r1, 0x10
/* 8001C1E0  39 21 00 14 */	addi r9, r1, 0x14
/* 8001C1E4  39 40 FF FF */	li r10, -1
/* 8001C1E8  48 00 03 C9 */	bl fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 8001C1EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001C1F0  7C 08 03 A6 */	mtlr r0
/* 8001C1F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001C1F8  4E 80 00 20 */	blr 
