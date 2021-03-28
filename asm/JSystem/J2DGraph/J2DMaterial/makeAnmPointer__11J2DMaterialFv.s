lbl_802EA84C:
/* 802EA84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA850  7C 08 02 A6 */	mflr r0
/* 802EA854  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA85C  7C 7F 1B 78 */	mr r31, r3
/* 802EA860  80 03 00 84 */	lwz r0, 0x84(r3)
/* 802EA864  28 00 00 00 */	cmplwi r0, 0
/* 802EA868  40 82 00 20 */	bne lbl_802EA888
/* 802EA86C  38 60 00 44 */	li r3, 0x44
/* 802EA870  4B FE 43 DD */	bl __nw__FUl
/* 802EA874  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA878  41 82 00 0C */	beq lbl_802EA884
/* 802EA87C  4B FF FF 21 */	bl __ct__Q211J2DMaterial21J2DMaterialAnmPointerFv
/* 802EA880  7C 60 1B 78 */	mr r0, r3
lbl_802EA884:
/* 802EA884  90 1F 00 84 */	stw r0, 0x84(r31)
lbl_802EA888:
/* 802EA888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA890  7C 08 03 A6 */	mtlr r0
/* 802EA894  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA898  4E 80 00 20 */	blr 
