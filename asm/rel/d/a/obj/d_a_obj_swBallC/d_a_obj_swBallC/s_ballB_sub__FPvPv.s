lbl_80CF5C7C:
/* 80CF5C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5C80  7C 08 02 A6 */	mflr r0
/* 80CF5C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF5C8C  7C 7F 1B 78 */	mr r31, r3
/* 80CF5C90  4B 32 30 50 */	b fopAc_IsActor__FPv
/* 80CF5C94  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5C98  41 82 00 24 */	beq lbl_80CF5CBC
/* 80CF5C9C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80CF5CA0  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CF5CA4  40 82 00 18 */	bne lbl_80CF5CBC
/* 80CF5CA8  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80CF5CAC  2C 00 00 09 */	cmpwi r0, 9
/* 80CF5CB0  40 82 00 0C */	bne lbl_80CF5CBC
/* 80CF5CB4  7F E3 FB 78 */	mr r3, r31
/* 80CF5CB8  48 00 00 08 */	b lbl_80CF5CC0
lbl_80CF5CBC:
/* 80CF5CBC  38 60 00 00 */	li r3, 0
lbl_80CF5CC0:
/* 80CF5CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF5CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5CC8  7C 08 03 A6 */	mtlr r0
/* 80CF5CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5CD0  4E 80 00 20 */	blr 
