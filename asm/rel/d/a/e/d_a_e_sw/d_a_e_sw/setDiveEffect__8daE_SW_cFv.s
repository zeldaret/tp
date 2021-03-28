lbl_807A7A08:
/* 807A7A08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A7A0C  7C 08 02 A6 */	mflr r0
/* 807A7A10  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A7A14  39 61 00 40 */	addi r11, r1, 0x40
/* 807A7A18  4B BB A7 B8 */	b _savegpr_26
/* 807A7A1C  7C 7A 1B 78 */	mr r26, r3
/* 807A7A20  38 61 00 20 */	addi r3, r1, 0x20
/* 807A7A24  38 80 00 00 */	li r4, 0
/* 807A7A28  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 807A7A2C  38 C0 00 00 */	li r6, 0
/* 807A7A30  4B AB F9 C4 */	b __ct__5csXyzFsss
/* 807A7A34  3B 60 00 00 */	li r27, 0
/* 807A7A38  3B E0 00 00 */	li r31, 0
/* 807A7A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A7A40  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807A7A44  3C 60 80 7B */	lis r3, l_SW_DIVE_EFFECT_ID@ha
/* 807A7A48  3B A3 FE F4 */	addi r29, r3, l_SW_DIVE_EFFECT_ID@l
/* 807A7A4C  3C 60 80 7B */	lis r3, lit_3911@ha
/* 807A7A50  3B C3 FD 34 */	addi r30, r3, lit_3911@l
lbl_807A7A54:
/* 807A7A54  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807A7A58  38 80 00 00 */	li r4, 0
/* 807A7A5C  90 81 00 08 */	stw r4, 8(r1)
/* 807A7A60  38 00 FF FF */	li r0, -1
/* 807A7A64  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A7A68  90 81 00 10 */	stw r4, 0x10(r1)
/* 807A7A6C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A7A70  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7A74  38 80 00 00 */	li r4, 0
/* 807A7A78  7C BD FA 2E */	lhzx r5, r29, r31
/* 807A7A7C  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 807A7A80  38 FA 01 0C */	addi r7, r26, 0x10c
/* 807A7A84  39 01 00 20 */	addi r8, r1, 0x20
/* 807A7A88  39 20 00 00 */	li r9, 0
/* 807A7A8C  39 40 00 FF */	li r10, 0xff
/* 807A7A90  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807A7A94  4B 8A 4F FC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A7A98  3B 7B 00 01 */	addi r27, r27, 1
/* 807A7A9C  2C 1B 00 04 */	cmpwi r27, 4
/* 807A7AA0  3B FF 00 02 */	addi r31, r31, 2
/* 807A7AA4  41 80 FF B0 */	blt lbl_807A7A54
/* 807A7AA8  39 61 00 40 */	addi r11, r1, 0x40
/* 807A7AAC  4B BB A7 70 */	b _restgpr_26
/* 807A7AB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A7AB4  7C 08 03 A6 */	mtlr r0
/* 807A7AB8  38 21 00 40 */	addi r1, r1, 0x40
/* 807A7ABC  4E 80 00 20 */	blr 
