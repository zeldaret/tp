lbl_80C2E434:
/* 80C2E434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E438  7C 08 02 A6 */	mflr r0
/* 80C2E43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2E444  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2E448  7C 7E 1B 78 */	mr r30, r3
/* 80C2E44C  7C 9F 23 78 */	mr r31, r4
/* 80C2E450  38 7E 08 24 */	addi r3, r30, 0x824
/* 80C2E454  4B 73 3B C5 */	bl __ptmf_test
/* 80C2E458  2C 03 00 00 */	cmpwi r3, 0
/* 80C2E45C  41 82 00 1C */	beq lbl_80C2E478
/* 80C2E460  38 00 FF FF */	li r0, -1
/* 80C2E464  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80C2E468  7F C3 F3 78 */	mr r3, r30
/* 80C2E46C  39 9E 08 24 */	addi r12, r30, 0x824
/* 80C2E470  4B 73 3C 15 */	bl __ptmf_scall
/* 80C2E474  60 00 00 00 */	nop 
lbl_80C2E478:
/* 80C2E478  80 7E 08 24 */	lwz r3, 0x824(r30)
/* 80C2E47C  80 1E 08 28 */	lwz r0, 0x828(r30)
/* 80C2E480  90 7E 08 30 */	stw r3, 0x830(r30)
/* 80C2E484  90 1E 08 34 */	stw r0, 0x834(r30)
/* 80C2E488  80 1E 08 2C */	lwz r0, 0x82c(r30)
/* 80C2E48C  90 1E 08 38 */	stw r0, 0x838(r30)
/* 80C2E490  80 7F 00 00 */	lwz r3, 0(r31)
/* 80C2E494  80 1F 00 04 */	lwz r0, 4(r31)
/* 80C2E498  90 7E 08 24 */	stw r3, 0x824(r30)
/* 80C2E49C  90 1E 08 28 */	stw r0, 0x828(r30)
/* 80C2E4A0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80C2E4A4  90 1E 08 2C */	stw r0, 0x82c(r30)
/* 80C2E4A8  38 00 00 00 */	li r0, 0
/* 80C2E4AC  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80C2E4B0  7F C3 F3 78 */	mr r3, r30
/* 80C2E4B4  39 9E 08 24 */	addi r12, r30, 0x824
/* 80C2E4B8  4B 73 3B CD */	bl __ptmf_scall
/* 80C2E4BC  60 00 00 00 */	nop 
/* 80C2E4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2E4C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2E4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E4CC  7C 08 03 A6 */	mtlr r0
/* 80C2E4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E4D4  4E 80 00 20 */	blr 
