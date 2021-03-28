lbl_8004FB18:
/* 8004FB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FB1C  7C 08 02 A6 */	mflr r0
/* 8004FB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FB28  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FB2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FB30  7C 9F 23 78 */	mr r31, r4
/* 8004FB34  41 82 00 3C */	beq lbl_8004FB70
/* 8004FB38  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 8004FB3C  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 8004FB40  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FB44  81 83 00 00 */	lwz r12, 0(r3)
/* 8004FB48  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8004FB4C  7D 89 03 A6 */	mtctr r12
/* 8004FB50  4E 80 04 21 */	bctrl 
/* 8004FB54  7F C3 F3 78 */	mr r3, r30
/* 8004FB58  38 80 00 00 */	li r4, 0
/* 8004FB5C  48 22 EB 49 */	bl __dt__18JPAEmitterCallBackFv
/* 8004FB60  7F E0 07 35 */	extsh. r0, r31
/* 8004FB64  40 81 00 0C */	ble lbl_8004FB70
/* 8004FB68  7F C3 F3 78 */	mr r3, r30
/* 8004FB6C  48 27 F1 D1 */	bl __dl__FPv
lbl_8004FB70:
/* 8004FB70  7F C3 F3 78 */	mr r3, r30
/* 8004FB74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FB78  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FB80  7C 08 03 A6 */	mtlr r0
/* 8004FB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FB88  4E 80 00 20 */	blr 
