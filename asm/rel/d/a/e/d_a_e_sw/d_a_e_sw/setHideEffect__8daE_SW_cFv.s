lbl_807A7AC0:
/* 807A7AC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A7AC4  7C 08 02 A6 */	mflr r0
/* 807A7AC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A7ACC  39 61 00 40 */	addi r11, r1, 0x40
/* 807A7AD0  4B BB A7 01 */	bl _savegpr_26
/* 807A7AD4  7C 7A 1B 78 */	mr r26, r3
/* 807A7AD8  3B 60 00 00 */	li r27, 0
/* 807A7ADC  3B E0 00 00 */	li r31, 0
/* 807A7AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A7AE4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A7AE8  3C 60 80 7B */	lis r3, l_SW_HIDE_EFFECT_ID@ha /* 0x807AFEFC@ha */
/* 807A7AEC  3B A3 FE FC */	addi r29, r3, l_SW_HIDE_EFFECT_ID@l /* 0x807AFEFC@l */
/* 807A7AF0  3C 60 80 7B */	lis r3, lit_3911@ha /* 0x807AFD34@ha */
/* 807A7AF4  3B C3 FD 34 */	addi r30, r3, lit_3911@l /* 0x807AFD34@l */
lbl_807A7AF8:
/* 807A7AF8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807A7AFC  38 80 00 00 */	li r4, 0
/* 807A7B00  90 81 00 08 */	stw r4, 8(r1)
/* 807A7B04  38 00 FF FF */	li r0, -1
/* 807A7B08  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A7B0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 807A7B10  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A7B14  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7B18  38 80 00 00 */	li r4, 0
/* 807A7B1C  7C BD FA 2E */	lhzx r5, r29, r31
/* 807A7B20  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 807A7B24  38 FA 01 0C */	addi r7, r26, 0x10c
/* 807A7B28  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 807A7B2C  39 20 00 00 */	li r9, 0
/* 807A7B30  39 40 00 FF */	li r10, 0xff
/* 807A7B34  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807A7B38  4B 8A 4F 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A7B3C  3B 7B 00 01 */	addi r27, r27, 1
/* 807A7B40  2C 1B 00 03 */	cmpwi r27, 3
/* 807A7B44  3B FF 00 02 */	addi r31, r31, 2
/* 807A7B48  41 80 FF B0 */	blt lbl_807A7AF8
/* 807A7B4C  39 61 00 40 */	addi r11, r1, 0x40
/* 807A7B50  4B BB A6 CD */	bl _restgpr_26
/* 807A7B54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A7B58  7C 08 03 A6 */	mtlr r0
/* 807A7B5C  38 21 00 40 */	addi r1, r1, 0x40
/* 807A7B60  4E 80 00 20 */	blr 
