lbl_800AFCBC:
/* 800AFCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AFCC0  7C 08 02 A6 */	mflr r0
/* 800AFCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFCC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AFCCC  7C 7F 1B 78 */	mr r31, r3
/* 800AFCD0  4B FF FF B9 */	bl resetFacePriTexture__9daAlink_cFv
/* 800AFCD4  7F E3 FB 78 */	mr r3, r31
/* 800AFCD8  4B FF FE 9D */	bl resetFacePriBck__9daAlink_cFv
/* 800AFCDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AFCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFCE4  7C 08 03 A6 */	mtlr r0
/* 800AFCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFCEC  4E 80 00 20 */	blr 
