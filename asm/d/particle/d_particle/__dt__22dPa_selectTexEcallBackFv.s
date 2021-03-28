lbl_8004FF8C:
/* 8004FF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FF90  7C 08 02 A6 */	mflr r0
/* 8004FF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FF9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FFA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FFA4  7C 9F 23 78 */	mr r31, r4
/* 8004FFA8  41 82 00 4C */	beq lbl_8004FFF4
/* 8004FFAC  3C 80 80 3B */	lis r4, __vt__22dPa_selectTexEcallBack@ha
/* 8004FFB0  38 04 84 64 */	addi r0, r4, __vt__22dPa_selectTexEcallBack@l
/* 8004FFB4  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FFB8  41 82 00 2C */	beq lbl_8004FFE4
/* 8004FFBC  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 8004FFC0  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 8004FFC4  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FFC8  81 83 00 00 */	lwz r12, 0(r3)
/* 8004FFCC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8004FFD0  7D 89 03 A6 */	mtctr r12
/* 8004FFD4  4E 80 04 21 */	bctrl 
/* 8004FFD8  7F C3 F3 78 */	mr r3, r30
/* 8004FFDC  38 80 00 00 */	li r4, 0
/* 8004FFE0  48 22 E6 C5 */	bl __dt__18JPAEmitterCallBackFv
lbl_8004FFE4:
/* 8004FFE4  7F E0 07 35 */	extsh. r0, r31
/* 8004FFE8  40 81 00 0C */	ble lbl_8004FFF4
/* 8004FFEC  7F C3 F3 78 */	mr r3, r30
/* 8004FFF0  48 27 ED 4D */	bl __dl__FPv
lbl_8004FFF4:
/* 8004FFF4  7F C3 F3 78 */	mr r3, r30
/* 8004FFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FFFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80050000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80050004  7C 08 03 A6 */	mtlr r0
/* 80050008  38 21 00 10 */	addi r1, r1, 0x10
/* 8005000C  4E 80 00 20 */	blr 
