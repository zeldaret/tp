lbl_8004FCC8:
/* 8004FCC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FCCC  7C 08 02 A6 */	mflr r0
/* 8004FCD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FCD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FCD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FCDC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FCE0  7C 9F 23 78 */	mr r31, r4
/* 8004FCE4  41 82 00 4C */	beq lbl_8004FD30
/* 8004FCE8  3C 80 80 3B */	lis r4, __vt__22dPa_hermiteEcallBack_c@ha
/* 8004FCEC  38 04 83 A0 */	addi r0, r4, __vt__22dPa_hermiteEcallBack_c@l
/* 8004FCF0  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FCF4  41 82 00 2C */	beq lbl_8004FD20
/* 8004FCF8  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 8004FCFC  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 8004FD00  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FD04  81 83 00 00 */	lwz r12, 0(r3)
/* 8004FD08  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8004FD0C  7D 89 03 A6 */	mtctr r12
/* 8004FD10  4E 80 04 21 */	bctrl 
/* 8004FD14  7F C3 F3 78 */	mr r3, r30
/* 8004FD18  38 80 00 00 */	li r4, 0
/* 8004FD1C  48 22 E9 89 */	bl __dt__18JPAEmitterCallBackFv
lbl_8004FD20:
/* 8004FD20  7F E0 07 35 */	extsh. r0, r31
/* 8004FD24  40 81 00 0C */	ble lbl_8004FD30
/* 8004FD28  7F C3 F3 78 */	mr r3, r30
/* 8004FD2C  48 27 F0 11 */	bl __dl__FPv
lbl_8004FD30:
/* 8004FD30  7F C3 F3 78 */	mr r3, r30
/* 8004FD34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FD38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FD3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FD40  7C 08 03 A6 */	mtlr r0
/* 8004FD44  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FD48  4E 80 00 20 */	blr 
