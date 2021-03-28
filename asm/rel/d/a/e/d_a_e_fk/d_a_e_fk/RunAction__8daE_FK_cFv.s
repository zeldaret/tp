lbl_806B9F20:
/* 806B9F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B9F24  7C 08 02 A6 */	mflr r0
/* 806B9F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B9F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B9F30  93 C1 00 08 */	stw r30, 8(r1)
/* 806B9F34  7C 7E 1B 78 */	mr r30, r3
/* 806B9F38  3C 80 80 6C */	lis r4, lit_3826@ha
/* 806B9F3C  3B E4 B6 D0 */	addi r31, r4, lit_3826@l
/* 806B9F40  88 03 06 15 */	lbz r0, 0x615(r3)
/* 806B9F44  2C 00 00 03 */	cmpwi r0, 3
/* 806B9F48  41 82 00 90 */	beq lbl_806B9FD8
/* 806B9F4C  40 80 00 14 */	bge lbl_806B9F60
/* 806B9F50  2C 00 00 01 */	cmpwi r0, 1
/* 806B9F54  41 82 00 1C */	beq lbl_806B9F70
/* 806B9F58  40 80 00 4C */	bge lbl_806B9FA4
/* 806B9F5C  48 00 00 90 */	b lbl_806B9FEC
lbl_806B9F60:
/* 806B9F60  2C 00 00 05 */	cmpwi r0, 5
/* 806B9F64  41 82 00 84 */	beq lbl_806B9FE8
/* 806B9F68  40 80 00 84 */	bge lbl_806B9FEC
/* 806B9F6C  48 00 00 74 */	b lbl_806B9FE0
lbl_806B9F70:
/* 806B9F70  4B FF FE 35 */	bl R_MoveAction__8daE_FK_cFv
/* 806B9F74  38 7E 06 04 */	addi r3, r30, 0x604
/* 806B9F78  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 806B9F7C  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 806B9F80  4B BB 67 C0 */	b cLib_chaseF__FPfff
/* 806B9F84  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 806B9F88  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B9F8C  38 84 B9 1C */	addi r4, r4, l_HIO@l
/* 806B9F90  C0 24 00 08 */	lfs f1, 8(r4)
/* 806B9F94  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 806B9F98  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 806B9F9C  4B BB 5A A0 */	b cLib_addCalc2__FPffff
/* 806B9FA0  48 00 00 4C */	b lbl_806B9FEC
lbl_806B9FA4:
/* 806B9FA4  48 00 04 11 */	bl AttackAction__8daE_FK_cFv
/* 806B9FA8  38 7E 06 04 */	addi r3, r30, 0x604
/* 806B9FAC  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 806B9FB0  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 806B9FB4  4B BB 67 8C */	b cLib_chaseF__FPfff
/* 806B9FB8  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 806B9FBC  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806B9FC0  38 84 B9 1C */	addi r4, r4, l_HIO@l
/* 806B9FC4  C0 24 00 08 */	lfs f1, 8(r4)
/* 806B9FC8  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 806B9FCC  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 806B9FD0  4B BB 5A 6C */	b cLib_addCalc2__FPffff
/* 806B9FD4  48 00 00 18 */	b lbl_806B9FEC
lbl_806B9FD8:
/* 806B9FD8  48 00 02 75 */	bl DamageAction__8daE_FK_cFv
/* 806B9FDC  48 00 00 10 */	b lbl_806B9FEC
lbl_806B9FE0:
/* 806B9FE0  48 00 00 45 */	bl DeathAction__8daE_FK_cFv
/* 806B9FE4  48 00 00 08 */	b lbl_806B9FEC
lbl_806B9FE8:
/* 806B9FE8  4B FF FE 85 */	bl StartAction__8daE_FK_cFv
lbl_806B9FEC:
/* 806B9FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B9FF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B9FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B9FF8  7C 08 03 A6 */	mtlr r0
/* 806B9FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA000  4E 80 00 20 */	blr 
