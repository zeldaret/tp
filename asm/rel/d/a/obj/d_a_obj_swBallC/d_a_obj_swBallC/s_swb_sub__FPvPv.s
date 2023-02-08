lbl_80CF5BB8:
/* 80CF5BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5BBC  7C 08 02 A6 */	mflr r0
/* 80CF5BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF5BC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF5BCC  7C 7E 1B 78 */	mr r30, r3
/* 80CF5BD0  7C 9F 23 78 */	mr r31, r4
/* 80CF5BD4  4B 32 31 0D */	bl fopAc_IsActor__FPv
/* 80CF5BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5BDC  41 82 00 2C */	beq lbl_80CF5C08
/* 80CF5BE0  A8 1E 00 08 */	lha r0, 8(r30)
/* 80CF5BE4  2C 00 01 9A */	cmpwi r0, 0x19a
/* 80CF5BE8  40 82 00 20 */	bne lbl_80CF5C08
/* 80CF5BEC  88 7F 05 82 */	lbz r3, 0x582(r31)
/* 80CF5BF0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CF5BF4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CF5BF8  7C 03 00 40 */	cmplw r3, r0
/* 80CF5BFC  40 82 00 0C */	bne lbl_80CF5C08
/* 80CF5C00  7F C3 F3 78 */	mr r3, r30
/* 80CF5C04  48 00 00 08 */	b lbl_80CF5C0C
lbl_80CF5C08:
/* 80CF5C08  38 60 00 00 */	li r3, 0
lbl_80CF5C0C:
/* 80CF5C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF5C10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF5C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5C18  7C 08 03 A6 */	mtlr r0
/* 80CF5C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5C20  4E 80 00 20 */	blr 
