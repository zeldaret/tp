lbl_8052B2BC:
/* 8052B2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B2C0  7C 08 02 A6 */	mflr r0
/* 8052B2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B2CC  7C 7F 1B 78 */	mr r31, r3
/* 8052B2D0  4B AE DA 10 */	b fopAc_IsActor__FPv
/* 8052B2D4  2C 03 00 00 */	cmpwi r3, 0
/* 8052B2D8  41 82 00 24 */	beq lbl_8052B2FC
/* 8052B2DC  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052B2E0  2C 00 01 36 */	cmpwi r0, 0x136
/* 8052B2E4  40 82 00 18 */	bne lbl_8052B2FC
/* 8052B2E8  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 8052B2EC  28 00 00 19 */	cmplwi r0, 0x19
/* 8052B2F0  40 82 00 0C */	bne lbl_8052B2FC
/* 8052B2F4  7F E3 FB 78 */	mr r3, r31
/* 8052B2F8  48 00 00 08 */	b lbl_8052B300
lbl_8052B2FC:
/* 8052B2FC  38 60 00 00 */	li r3, 0
lbl_8052B300:
/* 8052B300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B308  7C 08 03 A6 */	mtlr r0
/* 8052B30C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B310  4E 80 00 20 */	blr 
