lbl_8052B36C:
/* 8052B36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B370  7C 08 02 A6 */	mflr r0
/* 8052B374  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B37C  7C 7F 1B 78 */	mr r31, r3
/* 8052B380  4B AE D9 61 */	bl fopAc_IsActor__FPv
/* 8052B384  2C 03 00 00 */	cmpwi r3, 0
/* 8052B388  41 82 00 24 */	beq lbl_8052B3AC
/* 8052B38C  A8 1F 00 08 */	lha r0, 8(r31)
/* 8052B390  2C 00 01 36 */	cmpwi r0, 0x136
/* 8052B394  40 82 00 18 */	bne lbl_8052B3AC
/* 8052B398  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 8052B39C  28 00 00 1B */	cmplwi r0, 0x1b
/* 8052B3A0  40 82 00 0C */	bne lbl_8052B3AC
/* 8052B3A4  7F E3 FB 78 */	mr r3, r31
/* 8052B3A8  48 00 00 08 */	b lbl_8052B3B0
lbl_8052B3AC:
/* 8052B3AC  38 60 00 00 */	li r3, 0
lbl_8052B3B0:
/* 8052B3B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B3B8  7C 08 03 A6 */	mtlr r0
/* 8052B3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B3C0  4E 80 00 20 */	blr 
