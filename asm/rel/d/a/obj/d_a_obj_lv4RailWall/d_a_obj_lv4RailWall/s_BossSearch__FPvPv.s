lbl_80C60A78:
/* 80C60A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60A7C  7C 08 02 A6 */	mflr r0
/* 80C60A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60A88  7C 7F 1B 78 */	mr r31, r3
/* 80C60A8C  4B 3B 82 55 */	bl fopAc_IsActor__FPv
/* 80C60A90  2C 03 00 00 */	cmpwi r3, 0
/* 80C60A94  41 82 00 18 */	beq lbl_80C60AAC
/* 80C60A98  A8 1F 00 08 */	lha r0, 8(r31)
/* 80C60A9C  2C 00 00 F6 */	cmpwi r0, 0xf6
/* 80C60AA0  40 82 00 0C */	bne lbl_80C60AAC
/* 80C60AA4  7F E3 FB 78 */	mr r3, r31
/* 80C60AA8  48 00 00 08 */	b lbl_80C60AB0
lbl_80C60AAC:
/* 80C60AAC  38 60 00 00 */	li r3, 0
lbl_80C60AB0:
/* 80C60AB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60AB8  7C 08 03 A6 */	mtlr r0
/* 80C60ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60AC0  4E 80 00 20 */	blr 
