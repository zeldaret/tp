lbl_8050FADC:
/* 8050FADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050FAE0  7C 08 02 A6 */	mflr r0
/* 8050FAE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050FAE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FAEC  7C 7F 1B 78 */	mr r31, r3
/* 8050FAF0  4B B0 91 F0 */	b fopAc_IsActor__FPv
/* 8050FAF4  2C 03 00 00 */	cmpwi r3, 0
/* 8050FAF8  41 82 00 24 */	beq lbl_8050FB1C
/* 8050FAFC  A8 1F 00 08 */	lha r0, 8(r31)
/* 8050FB00  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 8050FB04  40 82 00 18 */	bne lbl_8050FB1C
/* 8050FB08  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8050FB0C  28 00 00 06 */	cmplwi r0, 6
/* 8050FB10  41 82 00 0C */	beq lbl_8050FB1C
/* 8050FB14  7F E3 FB 78 */	mr r3, r31
/* 8050FB18  48 00 00 08 */	b lbl_8050FB20
lbl_8050FB1C:
/* 8050FB1C  38 60 00 00 */	li r3, 0
lbl_8050FB20:
/* 8050FB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FB28  7C 08 03 A6 */	mtlr r0
/* 8050FB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FB30  4E 80 00 20 */	blr 
