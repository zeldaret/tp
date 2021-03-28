lbl_8001C1FC:
/* 8001C1FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001C200  7C 08 02 A6 */	mflr r0
/* 8001C204  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001C208  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8001C20C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8001C210  38 00 00 04 */	li r0, 4
/* 8001C214  90 01 00 08 */	stw r0, 8(r1)
/* 8001C218  38 00 00 00 */	li r0, 0
/* 8001C21C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8001C220  39 01 00 10 */	addi r8, r1, 0x10
/* 8001C224  39 21 00 14 */	addi r9, r1, 0x14
/* 8001C228  39 40 FF FF */	li r10, -1
/* 8001C22C  48 00 03 85 */	bl fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 8001C230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001C234  7C 08 03 A6 */	mtlr r0
/* 8001C238  38 21 00 20 */	addi r1, r1, 0x20
/* 8001C23C  4E 80 00 20 */	blr 
