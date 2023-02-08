lbl_8052B1A0:
/* 8052B1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B1A4  7C 08 02 A6 */	mflr r0
/* 8052B1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B1AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B1B0  7C 7F 1B 78 */	mr r31, r3
/* 8052B1B4  4B AE DB 2D */	bl fopAc_IsActor__FPv
/* 8052B1B8  2C 03 00 00 */	cmpwi r3, 0
/* 8052B1BC  41 82 00 24 */	beq lbl_8052B1E0
/* 8052B1C0  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052B1C4  2C 00 01 36 */	cmpwi r0, 0x136
/* 8052B1C8  40 82 00 18 */	bne lbl_8052B1E0
/* 8052B1CC  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 8052B1D0  28 00 00 16 */	cmplwi r0, 0x16
/* 8052B1D4  40 82 00 0C */	bne lbl_8052B1E0
/* 8052B1D8  7F E3 FB 78 */	mr r3, r31
/* 8052B1DC  48 00 00 08 */	b lbl_8052B1E4
lbl_8052B1E0:
/* 8052B1E0  38 60 00 00 */	li r3, 0
lbl_8052B1E4:
/* 8052B1E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B1EC  7C 08 03 A6 */	mtlr r0
/* 8052B1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B1F4  4E 80 00 20 */	blr 
