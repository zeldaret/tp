lbl_80ABDE44:
/* 80ABDE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABDE48  7C 08 02 A6 */	mflr r0
/* 80ABDE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABDE50  4B FF C5 89 */	bl Draw__13daNpcRafrel_cFv
/* 80ABDE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABDE58  7C 08 03 A6 */	mtlr r0
/* 80ABDE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABDE60  4E 80 00 20 */	blr 
