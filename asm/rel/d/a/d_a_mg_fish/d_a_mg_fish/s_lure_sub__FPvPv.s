lbl_8052A278:
/* 8052A278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A27C  7C 08 02 A6 */	mflr r0
/* 8052A280  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A288  7C 7F 1B 78 */	mr r31, r3
/* 8052A28C  4B AE EA 55 */	bl fopAc_IsActor__FPv
/* 8052A290  2C 03 00 00 */	cmpwi r3, 0
/* 8052A294  41 82 00 48 */	beq lbl_8052A2DC
/* 8052A298  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052A29C  2C 00 02 E4 */	cmpwi r0, 0x2e4
/* 8052A2A0  40 82 00 3C */	bne lbl_8052A2DC
/* 8052A2A4  A8 1F 0F 7C */	lha r0, 0xf7c(r31)
/* 8052A2A8  2C 00 00 00 */	cmpwi r0, 0
/* 8052A2AC  40 82 00 30 */	bne lbl_8052A2DC
/* 8052A2B0  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 8052A2B4  2C 00 00 04 */	cmpwi r0, 4
/* 8052A2B8  40 82 00 24 */	bne lbl_8052A2DC
/* 8052A2BC  88 1F 10 A9 */	lbz r0, 0x10a9(r31)
/* 8052A2C0  7C 00 07 75 */	extsb. r0, r0
/* 8052A2C4  40 82 00 18 */	bne lbl_8052A2DC
/* 8052A2C8  88 1F 10 0D */	lbz r0, 0x100d(r31)
/* 8052A2CC  7C 00 07 75 */	extsb. r0, r0
/* 8052A2D0  41 82 00 0C */	beq lbl_8052A2DC
/* 8052A2D4  7F E3 FB 78 */	mr r3, r31
/* 8052A2D8  48 00 00 08 */	b lbl_8052A2E0
lbl_8052A2DC:
/* 8052A2DC  38 60 00 00 */	li r3, 0
lbl_8052A2E0:
/* 8052A2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A2E8  7C 08 03 A6 */	mtlr r0
/* 8052A2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A2F0  4E 80 00 20 */	blr 
