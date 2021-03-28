lbl_80037A84:
/* 80037A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037A88  7C 08 02 A6 */	mflr r0
/* 80037A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037A94  7C 7F 1B 78 */	mr r31, r3
/* 80037A98  48 00 00 35 */	bl chkDraw__12daItemBase_cFv
/* 80037A9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80037AA0  41 82 00 10 */	beq lbl_80037AB0
/* 80037AA4  7F E3 FB 78 */	mr r3, r31
/* 80037AA8  4B FF FF BD */	bl hide__12daItemBase_cFv
/* 80037AAC  48 00 00 0C */	b lbl_80037AB8
lbl_80037AB0:
/* 80037AB0  7F E3 FB 78 */	mr r3, r31
/* 80037AB4  4B FF FF C1 */	bl show__12daItemBase_cFv
lbl_80037AB8:
/* 80037AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80037ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037AC0  7C 08 03 A6 */	mtlr r0
/* 80037AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80037AC8  4E 80 00 20 */	blr 
