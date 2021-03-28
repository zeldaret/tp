lbl_80050378:
/* 80050378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005037C  7C 08 02 A6 */	mflr r0
/* 80050380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80050384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80050388  93 C1 00 08 */	stw r30, 8(r1)
/* 8005038C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80050390  7C 9F 23 78 */	mr r31, r4
/* 80050394  41 82 00 4C */	beq lbl_800503E0
/* 80050398  3C 80 80 3B */	lis r4, __vt__18dPa_modelEcallBack@ha
/* 8005039C  38 04 84 88 */	addi r0, r4, __vt__18dPa_modelEcallBack@l
/* 800503A0  90 1E 00 00 */	stw r0, 0(r30)
/* 800503A4  41 82 00 2C */	beq lbl_800503D0
/* 800503A8  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 800503AC  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 800503B0  90 1E 00 00 */	stw r0, 0(r30)
/* 800503B4  81 83 00 00 */	lwz r12, 0(r3)
/* 800503B8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800503BC  7D 89 03 A6 */	mtctr r12
/* 800503C0  4E 80 04 21 */	bctrl 
/* 800503C4  7F C3 F3 78 */	mr r3, r30
/* 800503C8  38 80 00 00 */	li r4, 0
/* 800503CC  48 22 E2 D9 */	bl __dt__18JPAEmitterCallBackFv
lbl_800503D0:
/* 800503D0  7F E0 07 35 */	extsh. r0, r31
/* 800503D4  40 81 00 0C */	ble lbl_800503E0
/* 800503D8  7F C3 F3 78 */	mr r3, r30
/* 800503DC  48 27 E9 61 */	bl __dl__FPv
lbl_800503E0:
/* 800503E0  7F C3 F3 78 */	mr r3, r30
/* 800503E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800503E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800503EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800503F0  7C 08 03 A6 */	mtlr r0
/* 800503F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800503F8  4E 80 00 20 */	blr 
