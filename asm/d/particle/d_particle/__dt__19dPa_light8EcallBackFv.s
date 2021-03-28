lbl_8005015C:
/* 8005015C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80050160  7C 08 02 A6 */	mflr r0
/* 80050164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80050168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005016C  93 C1 00 08 */	stw r30, 8(r1)
/* 80050170  7C 7E 1B 79 */	or. r30, r3, r3
/* 80050174  7C 9F 23 78 */	mr r31, r4
/* 80050178  41 82 00 4C */	beq lbl_800501C4
/* 8005017C  3C 80 80 3B */	lis r4, __vt__19dPa_light8EcallBack@ha
/* 80050180  38 04 85 08 */	addi r0, r4, __vt__19dPa_light8EcallBack@l
/* 80050184  90 1E 00 00 */	stw r0, 0(r30)
/* 80050188  41 82 00 2C */	beq lbl_800501B4
/* 8005018C  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80050190  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80050194  90 1E 00 00 */	stw r0, 0(r30)
/* 80050198  81 83 00 00 */	lwz r12, 0(r3)
/* 8005019C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800501A0  7D 89 03 A6 */	mtctr r12
/* 800501A4  4E 80 04 21 */	bctrl 
/* 800501A8  7F C3 F3 78 */	mr r3, r30
/* 800501AC  38 80 00 00 */	li r4, 0
/* 800501B0  48 22 E4 F5 */	bl __dt__18JPAEmitterCallBackFv
lbl_800501B4:
/* 800501B4  7F E0 07 35 */	extsh. r0, r31
/* 800501B8  40 81 00 0C */	ble lbl_800501C4
/* 800501BC  7F C3 F3 78 */	mr r3, r30
/* 800501C0  48 27 EB 7D */	bl __dl__FPv
lbl_800501C4:
/* 800501C4  7F C3 F3 78 */	mr r3, r30
/* 800501C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800501CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800501D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800501D4  7C 08 03 A6 */	mtlr r0
/* 800501D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800501DC  4E 80 00 20 */	blr 
