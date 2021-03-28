lbl_80772B98:
/* 80772B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80772B9C  7C 08 02 A6 */	mflr r0
/* 80772BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80772BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80772BA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80772BAC  7C 7E 1B 78 */	mr r30, r3
/* 80772BB0  7C 9F 23 78 */	mr r31, r4
/* 80772BB4  4B 8A 61 2C */	b fopAc_IsActor__FPv
/* 80772BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80772BBC  41 82 00 2C */	beq lbl_80772BE8
/* 80772BC0  A8 1E 00 08 */	lha r0, 8(r30)
/* 80772BC4  2C 00 01 D6 */	cmpwi r0, 0x1d6
/* 80772BC8  40 82 00 20 */	bne lbl_80772BE8
/* 80772BCC  7C 1E F8 40 */	cmplw r30, r31
/* 80772BD0  41 82 00 18 */	beq lbl_80772BE8
/* 80772BD4  A8 1E 0A 42 */	lha r0, 0xa42(r30)
/* 80772BD8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80772BDC  40 82 00 0C */	bne lbl_80772BE8
/* 80772BE0  7F C3 F3 78 */	mr r3, r30
/* 80772BE4  48 00 00 08 */	b lbl_80772BEC
lbl_80772BE8:
/* 80772BE8  38 60 00 00 */	li r3, 0
lbl_80772BEC:
/* 80772BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80772BF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80772BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80772BF8  7C 08 03 A6 */	mtlr r0
/* 80772BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80772C00  4E 80 00 20 */	blr 
