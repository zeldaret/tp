lbl_800AFC88:
/* 800AFC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AFC8C  7C 08 02 A6 */	mflr r0
/* 800AFC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AFC98  7C 7F 1B 78 */	mr r31, r3
/* 800AFC9C  4B FF FF 35 */	bl resetFacePriBtp__9daAlink_cFv
/* 800AFCA0  7F E3 FB 78 */	mr r3, r31
/* 800AFCA4  4B FF FF 89 */	bl resetFacePriBtk__9daAlink_cFv
/* 800AFCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AFCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFCB0  7C 08 03 A6 */	mtlr r0
/* 800AFCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFCB8  4E 80 00 20 */	blr 
