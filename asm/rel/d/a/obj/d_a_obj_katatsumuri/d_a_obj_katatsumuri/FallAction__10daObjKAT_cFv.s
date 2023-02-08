lbl_80C3A95C:
/* 80C3A95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3A960  7C 08 02 A6 */	mflr r0
/* 80C3A964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3A968  88 03 07 C0 */	lbz r0, 0x7c0(r3)
/* 80C3A96C  2C 00 00 01 */	cmpwi r0, 1
/* 80C3A970  41 82 00 0C */	beq lbl_80C3A97C
/* 80C3A974  40 80 00 0C */	bge lbl_80C3A980
/* 80C3A978  48 00 00 08 */	b lbl_80C3A980
lbl_80C3A97C:
/* 80C3A97C  4B FF FF 4D */	bl F_MoveAction__10daObjKAT_cFv
lbl_80C3A980:
/* 80C3A980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3A984  7C 08 03 A6 */	mtlr r0
/* 80C3A988  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3A98C  4E 80 00 20 */	blr 
