lbl_8000CCC8:
/* 8000CCC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CCCC  7C 08 02 A6 */	mflr r0
/* 8000CCD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CCD4  80 8D 80 28 */	lwz r4, next__14mDoMtx_stack_c(r13)
/* 8000CCD8  80 0D 80 2C */	lwz r0, end__14mDoMtx_stack_c(r13)
/* 8000CCDC  7C 04 00 40 */	cmplw r4, r0
/* 8000CCE0  41 80 00 0C */	blt lbl_8000CCEC
/* 8000CCE4  38 60 00 00 */	li r3, 0
/* 8000CCE8  48 00 00 1C */	b lbl_8000CD04
lbl_8000CCEC:
/* 8000CCEC  38 04 00 30 */	addi r0, r4, 0x30
/* 8000CCF0  90 0D 80 28 */	stw r0, next__14mDoMtx_stack_c(r13)
/* 8000CCF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CCF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CCFC  48 33 97 B5 */	bl PSMTXCopy
/* 8000CD00  38 60 00 01 */	li r3, 1
lbl_8000CD04:
/* 8000CD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CD08  7C 08 03 A6 */	mtlr r0
/* 8000CD0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CD10  4E 80 00 20 */	blr 
