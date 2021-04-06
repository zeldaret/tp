lbl_8000CD14:
/* 8000CD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CD18  7C 08 02 A6 */	mflr r0
/* 8000CD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CD20  80 8D 80 28 */	lwz r4, next__14mDoMtx_stack_c(r13)
/* 8000CD24  3C 60 80 3E */	lis r3, buffer__14mDoMtx_stack_c@ha /* 0x803DD4A0@ha */
/* 8000CD28  38 03 D4 A0 */	addi r0, r3, buffer__14mDoMtx_stack_c@l /* 0x803DD4A0@l */
/* 8000CD2C  7C 04 00 40 */	cmplw r4, r0
/* 8000CD30  41 81 00 0C */	bgt lbl_8000CD3C
/* 8000CD34  38 60 00 00 */	li r3, 0
/* 8000CD38  48 00 00 1C */	b lbl_8000CD54
lbl_8000CD3C:
/* 8000CD3C  38 64 FF D0 */	addi r3, r4, -48
/* 8000CD40  90 6D 80 28 */	stw r3, next__14mDoMtx_stack_c(r13)
/* 8000CD44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8000CD48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8000CD4C  48 33 97 65 */	bl PSMTXCopy
/* 8000CD50  38 60 00 01 */	li r3, 1
lbl_8000CD54:
/* 8000CD54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CD58  7C 08 03 A6 */	mtlr r0
/* 8000CD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CD60  4E 80 00 20 */	blr 
