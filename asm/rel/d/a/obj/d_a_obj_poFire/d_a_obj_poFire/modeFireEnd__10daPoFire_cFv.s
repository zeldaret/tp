lbl_80CB3AE8:
/* 80CB3AE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB3AEC  7C 08 02 A6 */	mflr r0
/* 80CB3AF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB3AF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB3AF8  4B 6A E6 DD */	bl _savegpr_27
/* 80CB3AFC  7C 7B 1B 78 */	mr r27, r3
/* 80CB3B00  3B 80 00 00 */	li r28, 0
/* 80CB3B04  3B E0 00 00 */	li r31, 0
/* 80CB3B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB3B0C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CB3B10:
/* 80CB3B10  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CB3B14  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB3B18  3B BF 05 98 */	addi r29, r31, 0x598
/* 80CB3B1C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80CB3B20  4B 39 7D F9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80CB3B24  28 03 00 00 */	cmplwi r3, 0
/* 80CB3B28  41 82 00 18 */	beq lbl_80CB3B40
/* 80CB3B2C  4B 5C B1 35 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 80CB3B30  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CB3B34  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB3B38  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80CB3B3C  4B 39 7D 79 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_80CB3B40:
/* 80CB3B40  3B 9C 00 01 */	addi r28, r28, 1
/* 80CB3B44  2C 1C 00 02 */	cmpwi r28, 2
/* 80CB3B48  3B FF 00 04 */	addi r31, r31, 4
/* 80CB3B4C  41 80 FF C4 */	blt lbl_80CB3B10
/* 80CB3B50  7F 63 DB 78 */	mr r3, r27
/* 80CB3B54  4B 36 61 29 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CB3B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80CB3B5C  4B 6A E6 C5 */	bl _restgpr_27
/* 80CB3B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB3B64  7C 08 03 A6 */	mtlr r0
/* 80CB3B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB3B6C  4E 80 00 20 */	blr 
