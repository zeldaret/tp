lbl_807C4B54:
/* 807C4B54  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807C4B58  7C 08 02 A6 */	mflr r0
/* 807C4B5C  90 01 00 74 */	stw r0, 0x74(r1)
/* 807C4B60  39 61 00 70 */	addi r11, r1, 0x70
/* 807C4B64  4B B9 D6 60 */	b _savegpr_23
/* 807C4B68  7C 7E 1B 78 */	mr r30, r3
/* 807C4B6C  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C4B70  3B E3 EC A8 */	addi r31, r3, lit_3907@l
/* 807C4B74  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C4B78  38 63 F4 C4 */	addi r3, r3, l_HIO@l
/* 807C4B7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 807C4B80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C4B84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C4B88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807C4B8C  88 1E 13 89 */	lbz r0, 0x1389(r30)
/* 807C4B90  2C 00 00 02 */	cmpwi r0, 2
/* 807C4B94  41 82 00 C4 */	beq lbl_807C4C58
/* 807C4B98  40 80 00 10 */	bge lbl_807C4BA8
/* 807C4B9C  2C 00 00 01 */	cmpwi r0, 1
/* 807C4BA0  40 80 00 14 */	bge lbl_807C4BB4
/* 807C4BA4  48 00 02 40 */	b lbl_807C4DE4
lbl_807C4BA8:
/* 807C4BA8  2C 00 00 04 */	cmpwi r0, 4
/* 807C4BAC  40 80 02 38 */	bge lbl_807C4DE4
/* 807C4BB0  48 00 01 24 */	b lbl_807C4CD4
lbl_807C4BB4:
/* 807C4BB4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807C4BB8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C4BBC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C4BC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C4BC4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807C4BC8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C4BCC  3B 60 00 00 */	li r27, 0
/* 807C4BD0  3B 80 00 00 */	li r28, 0
/* 807C4BD4  3B A0 00 00 */	li r29, 0
/* 807C4BD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C4BDC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 807C4BE0  3C 60 80 7D */	lis r3, va_wepon_eff_id1@ha
/* 807C4BE4  3B 23 F1 7C */	addi r25, r3, va_wepon_eff_id1@l
lbl_807C4BE8:
/* 807C4BE8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 807C4BEC  38 00 00 FF */	li r0, 0xff
/* 807C4BF0  90 01 00 08 */	stw r0, 8(r1)
/* 807C4BF4  38 80 00 00 */	li r4, 0
/* 807C4BF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4BFC  38 00 FF FF */	li r0, -1
/* 807C4C00  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4C04  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4C08  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4C0C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4C10  3F 1D 00 01 */	addis r24, r29, 1
/* 807C4C14  3B 18 0F 68 */	addi r24, r24, 0xf68
/* 807C4C18  7C 9E C0 2E */	lwzx r4, r30, r24
/* 807C4C1C  38 A0 00 00 */	li r5, 0
/* 807C4C20  7C D9 E2 2E */	lhzx r6, r25, r28
/* 807C4C24  38 E1 00 30 */	addi r7, r1, 0x30
/* 807C4C28  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C4C2C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C4C30  39 41 00 24 */	addi r10, r1, 0x24
/* 807C4C34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C4C38  4B 88 88 94 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4C3C  7C 7E C1 2E */	stwx r3, r30, r24
/* 807C4C40  3B 7B 00 01 */	addi r27, r27, 1
/* 807C4C44  2C 1B 00 03 */	cmpwi r27, 3
/* 807C4C48  3B 9C 00 02 */	addi r28, r28, 2
/* 807C4C4C  3B BD 00 04 */	addi r29, r29, 4
/* 807C4C50  41 80 FF 98 */	blt lbl_807C4BE8
/* 807C4C54  48 00 01 90 */	b lbl_807C4DE4
lbl_807C4C58:
/* 807C4C58  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807C4C5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C4C60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C4C64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C4C68  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 807C4C6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C4C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C4C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C4C78  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807C4C7C  38 00 00 FF */	li r0, 0xff
/* 807C4C80  90 01 00 08 */	stw r0, 8(r1)
/* 807C4C84  38 80 00 00 */	li r4, 0
/* 807C4C88  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4C8C  38 00 FF FF */	li r0, -1
/* 807C4C90  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4C94  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4C98  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4C9C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4CA0  3C 9E 00 01 */	addis r4, r30, 1
/* 807C4CA4  80 84 0F 74 */	lwz r4, 0xf74(r4)
/* 807C4CA8  38 A0 00 00 */	li r5, 0
/* 807C4CAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008601@ha */
/* 807C4CB0  38 C6 86 01 */	addi r6, r6, 0x8601 /* 0x00008601@l */
/* 807C4CB4  38 E1 00 30 */	addi r7, r1, 0x30
/* 807C4CB8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C4CBC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C4CC0  39 41 00 24 */	addi r10, r1, 0x24
/* 807C4CC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C4CC8  4B 88 88 04 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4CCC  3C 9E 00 01 */	addis r4, r30, 1
/* 807C4CD0  90 64 0F 74 */	stw r3, 0xf74(r4)
lbl_807C4CD4:
/* 807C4CD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807C4CD8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807C4CDC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807C4CE0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C4CE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807C4CE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807C4CEC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807C4CF0  3B 03 00 24 */	addi r24, r3, 0x24
/* 807C4CF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070339@ha */
/* 807C4CF8  38 03 03 39 */	addi r0, r3, 0x0339 /* 0x00070339@l */
/* 807C4CFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807C4D00  38 7E 12 54 */	addi r3, r30, 0x1254
/* 807C4D04  38 81 00 20 */	addi r4, r1, 0x20
/* 807C4D08  38 A0 00 00 */	li r5, 0
/* 807C4D0C  38 C0 FF FF */	li r6, -1
/* 807C4D10  81 9E 12 54 */	lwz r12, 0x1254(r30)
/* 807C4D14  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807C4D18  7D 89 03 A6 */	mtctr r12
/* 807C4D1C  4E 80 04 21 */	bctrl 
/* 807C4D20  3A E0 00 00 */	li r23, 0
/* 807C4D24  3B A0 00 00 */	li r29, 0
/* 807C4D28  3B 80 00 00 */	li r28, 0
/* 807C4D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C4D30  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807C4D34  3C 60 80 7D */	lis r3, va_wepon_eff_id2@ha
/* 807C4D38  3B 43 F1 84 */	addi r26, r3, va_wepon_eff_id2@l
lbl_807C4D3C:
/* 807C4D3C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807C4D40  38 00 00 FF */	li r0, 0xff
/* 807C4D44  90 01 00 08 */	stw r0, 8(r1)
/* 807C4D48  38 80 00 00 */	li r4, 0
/* 807C4D4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807C4D50  38 00 FF FF */	li r0, -1
/* 807C4D54  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C4D58  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C4D5C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C4D60  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807C4D64  3F 7C 00 01 */	addis r27, r28, 1
/* 807C4D68  3B 7B 0F 68 */	addi r27, r27, 0xf68
/* 807C4D6C  7C 9E D8 2E */	lwzx r4, r30, r27
/* 807C4D70  38 A0 00 00 */	li r5, 0
/* 807C4D74  7C DA EA 2E */	lhzx r6, r26, r29
/* 807C4D78  38 E1 00 30 */	addi r7, r1, 0x30
/* 807C4D7C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807C4D80  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807C4D84  39 41 00 24 */	addi r10, r1, 0x24
/* 807C4D88  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807C4D8C  4B 88 87 40 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C4D90  7C 7E D9 2E */	stwx r3, r30, r27
/* 807C4D94  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807C4D98  38 63 02 10 */	addi r3, r3, 0x210
/* 807C4D9C  7C 9E D8 2E */	lwzx r4, r30, r27
/* 807C4DA0  4B 88 6B 78 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807C4DA4  7C 7B 1B 79 */	or. r27, r3, r3
/* 807C4DA8  41 82 00 28 */	beq lbl_807C4DD0
/* 807C4DAC  7F 03 C3 78 */	mr r3, r24
/* 807C4DB0  38 9B 00 68 */	addi r4, r27, 0x68
/* 807C4DB4  38 BB 00 98 */	addi r5, r27, 0x98
/* 807C4DB8  38 DB 00 A4 */	addi r6, r27, 0xa4
/* 807C4DBC  4B AB BA 4C */	b func_80280808
/* 807C4DC0  C0 3B 00 9C */	lfs f1, 0x9c(r27)
/* 807C4DC4  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 807C4DC8  D0 1B 00 B0 */	stfs f0, 0xb0(r27)
/* 807C4DCC  D0 3B 00 B4 */	stfs f1, 0xb4(r27)
lbl_807C4DD0:
/* 807C4DD0  3A F7 00 01 */	addi r23, r23, 1
/* 807C4DD4  2C 17 00 03 */	cmpwi r23, 3
/* 807C4DD8  3B BD 00 02 */	addi r29, r29, 2
/* 807C4DDC  3B 9C 00 04 */	addi r28, r28, 4
/* 807C4DE0  41 80 FF 5C */	blt lbl_807C4D3C
lbl_807C4DE4:
/* 807C4DE4  39 61 00 70 */	addi r11, r1, 0x70
/* 807C4DE8  4B B9 D4 28 */	b _restgpr_23
/* 807C4DEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807C4DF0  7C 08 03 A6 */	mtlr r0
/* 807C4DF4  38 21 00 70 */	addi r1, r1, 0x70
/* 807C4DF8  4E 80 00 20 */	blr 
