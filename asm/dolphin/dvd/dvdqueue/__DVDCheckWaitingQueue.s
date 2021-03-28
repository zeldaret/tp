lbl_8034B9B4:
/* 8034B9B4  7C 08 02 A6 */	mflr r0
/* 8034B9B8  90 01 00 04 */	stw r0, 4(r1)
/* 8034B9BC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034B9C0  4B FF 1D 35 */	bl OSDisableInterrupts
/* 8034B9C4  38 00 00 04 */	li r0, 4
/* 8034B9C8  3C 80 80 45 */	lis r4, WaitingQueue@ha
/* 8034B9CC  7C 09 03 A6 */	mtctr r0
/* 8034B9D0  38 84 C9 98 */	addi r4, r4, WaitingQueue@l
lbl_8034B9D4:
/* 8034B9D4  80 04 00 00 */	lwz r0, 0(r4)
/* 8034B9D8  7C 00 20 40 */	cmplw r0, r4
/* 8034B9DC  41 82 00 10 */	beq lbl_8034B9EC
/* 8034B9E0  4B FF 1D 3D */	bl OSRestoreInterrupts
/* 8034B9E4  38 60 00 01 */	li r3, 1
/* 8034B9E8  48 00 00 14 */	b lbl_8034B9FC
lbl_8034B9EC:
/* 8034B9EC  38 84 00 08 */	addi r4, r4, 8
/* 8034B9F0  42 00 FF E4 */	bdnz lbl_8034B9D4
/* 8034B9F4  4B FF 1D 29 */	bl OSRestoreInterrupts
/* 8034B9F8  38 60 00 00 */	li r3, 0
lbl_8034B9FC:
/* 8034B9FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034BA00  38 21 00 08 */	addi r1, r1, 8
/* 8034BA04  7C 08 03 A6 */	mtlr r0
/* 8034BA08  4E 80 00 20 */	blr 
