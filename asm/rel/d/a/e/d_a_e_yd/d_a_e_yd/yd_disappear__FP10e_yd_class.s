lbl_807F2C78:
/* 807F2C78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807F2C7C  7C 08 02 A6 */	mflr r0
/* 807F2C80  90 01 00 54 */	stw r0, 0x54(r1)
/* 807F2C84  39 61 00 50 */	addi r11, r1, 0x50
/* 807F2C88  4B B6 F5 4D */	bl _savegpr_27
/* 807F2C8C  7C 7D 1B 78 */	mr r29, r3
/* 807F2C90  3C 60 80 7F */	lis r3, lit_3788@ha /* 0x807F7A00@ha */
/* 807F2C94  3B C3 7A 00 */	addi r30, r3, lit_3788@l /* 0x807F7A00@l */
/* 807F2C98  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807F2C9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F2CA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F2CA4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F2CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F2CAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F2CB0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807F2CB4  38 80 00 00 */	li r4, 0
/* 807F2CB8  90 81 00 08 */	stw r4, 8(r1)
/* 807F2CBC  38 00 FF FF */	li r0, -1
/* 807F2CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F2CC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 807F2CC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F2CCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F2CD0  38 80 00 00 */	li r4, 0
/* 807F2CD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826C@ha */
/* 807F2CD8  38 A5 82 6C */	addi r5, r5, 0x826C /* 0x0000826C@l */
/* 807F2CDC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807F2CE0  38 E0 00 00 */	li r7, 0
/* 807F2CE4  39 00 00 00 */	li r8, 0
/* 807F2CE8  39 21 00 24 */	addi r9, r1, 0x24
/* 807F2CEC  39 40 00 FF */	li r10, 0xff
/* 807F2CF0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F2CF4  4B 85 9D 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F2CF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807F2CFC  38 80 00 00 */	li r4, 0
/* 807F2D00  90 81 00 08 */	stw r4, 8(r1)
/* 807F2D04  38 00 FF FF */	li r0, -1
/* 807F2D08  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F2D0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 807F2D10  90 81 00 14 */	stw r4, 0x14(r1)
/* 807F2D14  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F2D18  38 80 00 00 */	li r4, 0
/* 807F2D1C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826D@ha */
/* 807F2D20  38 A5 82 6D */	addi r5, r5, 0x826D /* 0x0000826D@l */
/* 807F2D24  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807F2D28  38 E0 00 00 */	li r7, 0
/* 807F2D2C  39 00 00 00 */	li r8, 0
/* 807F2D30  39 21 00 24 */	addi r9, r1, 0x24
/* 807F2D34  39 40 00 FF */	li r10, 0xff
/* 807F2D38  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F2D3C  4B 85 9D 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F2D40  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807F2D44  7C 03 07 74 */	extsb r3, r0
/* 807F2D48  4B 83 A3 25 */	bl dComIfGp_getReverb__Fi
/* 807F2D4C  7C 67 1B 78 */	mr r7, r3
/* 807F2D50  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 807F2D54  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 807F2D58  90 01 00 20 */	stw r0, 0x20(r1)
/* 807F2D5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807F2D60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807F2D64  80 63 00 00 */	lwz r3, 0(r3)
/* 807F2D68  38 81 00 20 */	addi r4, r1, 0x20
/* 807F2D6C  38 BD 05 38 */	addi r5, r29, 0x538
/* 807F2D70  38 C0 00 00 */	li r6, 0
/* 807F2D74  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F2D78  FC 40 08 90 */	fmr f2, f1
/* 807F2D7C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 807F2D80  FC 80 18 90 */	fmr f4, f3
/* 807F2D84  39 00 00 00 */	li r8, 0
/* 807F2D88  4B AB 8B FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 807F2D8C  38 60 00 2B */	li r3, 0x2b
/* 807F2D90  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807F2D94  38 A0 FF FF */	li r5, -1
/* 807F2D98  38 C0 FF FF */	li r6, -1
/* 807F2D9C  38 E0 00 00 */	li r7, 0
/* 807F2DA0  39 00 00 00 */	li r8, 0
/* 807F2DA4  39 20 00 00 */	li r9, 0
/* 807F2DA8  39 40 00 00 */	li r10, 0
/* 807F2DAC  4B 82 90 69 */	bl fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 807F2DB0  7F A3 EB 78 */	mr r3, r29
/* 807F2DB4  4B 82 6E C9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807F2DB8  38 00 00 01 */	li r0, 1
/* 807F2DBC  98 1D 05 67 */	stb r0, 0x567(r29)
/* 807F2DC0  3B 60 00 00 */	li r27, 0
/* 807F2DC4  3B C0 00 00 */	li r30, 0
lbl_807F2DC8:
/* 807F2DC8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807F2DCC  38 63 02 10 */	addi r3, r3, 0x210
/* 807F2DD0  3B 9E 12 38 */	addi r28, r30, 0x1238
/* 807F2DD4  7C 9D E0 2E */	lwzx r4, r29, r28
/* 807F2DD8  4B 85 8B 41 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 807F2DDC  28 03 00 00 */	cmplwi r3, 0
/* 807F2DE0  41 82 00 18 */	beq lbl_807F2DF8
/* 807F2DE4  4B A8 BE 7D */	bl deleteAllParticle__14JPABaseEmitterFv
/* 807F2DE8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807F2DEC  38 63 02 10 */	addi r3, r3, 0x210
/* 807F2DF0  7C 9D E0 2E */	lwzx r4, r29, r28
/* 807F2DF4  4B 85 8A C1 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_807F2DF8:
/* 807F2DF8  3B 7B 00 01 */	addi r27, r27, 1
/* 807F2DFC  2C 1B 00 02 */	cmpwi r27, 2
/* 807F2E00  3B DE 00 04 */	addi r30, r30, 4
/* 807F2E04  40 81 FF C4 */	ble lbl_807F2DC8
/* 807F2E08  39 61 00 50 */	addi r11, r1, 0x50
/* 807F2E0C  4B B6 F4 15 */	bl _restgpr_27
/* 807F2E10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807F2E14  7C 08 03 A6 */	mtlr r0
/* 807F2E18  38 21 00 50 */	addi r1, r1, 0x50
/* 807F2E1C  4E 80 00 20 */	blr 
