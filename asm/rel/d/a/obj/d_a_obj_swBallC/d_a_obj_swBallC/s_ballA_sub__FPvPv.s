lbl_80CF5C24:
/* 80CF5C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5C28  7C 08 02 A6 */	mflr r0
/* 80CF5C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF5C34  7C 7F 1B 78 */	mr r31, r3
/* 80CF5C38  4B 32 30 A9 */	bl fopAc_IsActor__FPv
/* 80CF5C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5C40  41 82 00 24 */	beq lbl_80CF5C64
/* 80CF5C44  A8 1F 00 08 */	lha r0, 8(r31)
/* 80CF5C48  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80CF5C4C  40 82 00 18 */	bne lbl_80CF5C64
/* 80CF5C50  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80CF5C54  2C 00 00 08 */	cmpwi r0, 8
/* 80CF5C58  40 82 00 0C */	bne lbl_80CF5C64
/* 80CF5C5C  7F E3 FB 78 */	mr r3, r31
/* 80CF5C60  48 00 00 08 */	b lbl_80CF5C68
lbl_80CF5C64:
/* 80CF5C64  38 60 00 00 */	li r3, 0
lbl_80CF5C68:
/* 80CF5C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF5C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5C70  7C 08 03 A6 */	mtlr r0
/* 80CF5C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5C78  4E 80 00 20 */	blr 
