lbl_800500B8:
/* 800500B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800500BC  7C 08 02 A6 */	mflr r0
/* 800500C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800500C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800500C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800500CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800500D0  7C 9F 23 78 */	mr r31, r4
/* 800500D4  41 82 00 4C */	beq lbl_80050120
/* 800500D8  3C 80 80 3B */	lis r4, __vt__25dPa_gen_b_light8EcallBack@ha
/* 800500DC  38 04 84 E4 */	addi r0, r4, __vt__25dPa_gen_b_light8EcallBack@l
/* 800500E0  90 1E 00 00 */	stw r0, 0(r30)
/* 800500E4  41 82 00 2C */	beq lbl_80050110
/* 800500E8  3C 80 80 3B */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 800500EC  38 04 85 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 800500F0  90 1E 00 00 */	stw r0, 0(r30)
/* 800500F4  81 83 00 00 */	lwz r12, 0(r3)
/* 800500F8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800500FC  7D 89 03 A6 */	mtctr r12
/* 80050100  4E 80 04 21 */	bctrl 
/* 80050104  7F C3 F3 78 */	mr r3, r30
/* 80050108  38 80 00 00 */	li r4, 0
/* 8005010C  48 22 E5 99 */	bl __dt__18JPAEmitterCallBackFv
lbl_80050110:
/* 80050110  7F E0 07 35 */	extsh. r0, r31
/* 80050114  40 81 00 0C */	ble lbl_80050120
/* 80050118  7F C3 F3 78 */	mr r3, r30
/* 8005011C  48 27 EC 21 */	bl __dl__FPv
lbl_80050120:
/* 80050120  7F C3 F3 78 */	mr r3, r30
/* 80050124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80050128  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005012C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80050130  7C 08 03 A6 */	mtlr r0
/* 80050134  38 21 00 10 */	addi r1, r1, 0x10
/* 80050138  4E 80 00 20 */	blr 
