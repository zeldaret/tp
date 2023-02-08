lbl_8028CB20:
/* 8028CB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028CB24  7C 08 02 A6 */	mflr r0
/* 8028CB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028CB2C  7C 65 1B 78 */	mr r5, r3
/* 8028CB30  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 8028CB34  39 85 00 08 */	addi r12, r5, 8
/* 8028CB38  48 0D 55 4D */	bl __ptmf_scall
/* 8028CB3C  60 00 00 00 */	nop 
/* 8028CB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028CB44  7C 08 03 A6 */	mtlr r0
/* 8028CB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8028CB4C  4E 80 00 20 */	blr 
