lbl_804F6BD0:
/* 804F6BD0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804F6BD4  7C 08 02 A6 */	mflr r0
/* 804F6BD8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804F6BDC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804F6BE0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804F6BE4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804F6BE8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 804F6BEC  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 804F6BF0  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 804F6BF4  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 804F6BF8  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 804F6BFC  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 804F6C00  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 804F6C04  39 61 00 80 */	addi r11, r1, 0x80
/* 804F6C08  4B E6 B5 B8 */	b _savegpr_22
/* 804F6C0C  7C 7F 1B 78 */	mr r31, r3
/* 804F6C10  3C 60 80 50 */	lis r3, cNullVec__6Z2Calc@ha
/* 804F6C14  3B 43 A9 50 */	addi r26, r3, cNullVec__6Z2Calc@l
/* 804F6C18  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F6C1C  3B 63 A6 BC */	addi r27, r3, lit_3777@l
/* 804F6C20  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F6C24  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F6C28  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804F6C2C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804F6C30  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F6C34  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804F6C38  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F6C3C  83 23 00 04 */	lwz r25, 4(r3)
/* 804F6C40  88 1F 07 B6 */	lbz r0, 0x7b6(r31)
/* 804F6C44  2C 00 00 03 */	cmpwi r0, 3
/* 804F6C48  41 82 00 0C */	beq lbl_804F6C54
/* 804F6C4C  38 00 00 00 */	li r0, 0
/* 804F6C50  98 1F 07 B6 */	stb r0, 0x7b6(r31)
lbl_804F6C54:
/* 804F6C54  38 60 00 00 */	li r3, 0
/* 804F6C58  4B B3 6C A4 */	b dComIfGs_BossLife_public_Set__FSc
/* 804F6C5C  88 1F 07 92 */	lbz r0, 0x792(r31)
/* 804F6C60  7C 00 07 75 */	extsb. r0, r0
/* 804F6C64  41 82 01 6C */	beq lbl_804F6DD0
/* 804F6C68  38 60 00 64 */	li r3, 0x64
/* 804F6C6C  4B B3 6C 90 */	b dComIfGs_BossLife_public_Set__FSc
/* 804F6C70  C3 BB 00 4C */	lfs f29, 0x4c(r27)
/* 804F6C74  C3 9B 02 28 */	lfs f28, 0x228(r27)
/* 804F6C78  88 1F 07 B6 */	lbz r0, 0x7b6(r31)
/* 804F6C7C  2C 00 00 03 */	cmpwi r0, 3
/* 804F6C80  41 82 00 0C */	beq lbl_804F6C8C
/* 804F6C84  38 00 00 01 */	li r0, 1
/* 804F6C88  98 1F 07 B6 */	stb r0, 0x7b6(r31)
lbl_804F6C8C:
/* 804F6C8C  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F6C90  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F6C94  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 804F6C98  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 804F6C9C  EF 61 00 32 */	fmuls f27, f1, f0
/* 804F6CA0  3B 00 00 00 */	li r24, 0
/* 804F6CA4  3A E0 00 00 */	li r23, 0
/* 804F6CA8  3A C0 00 00 */	li r22, 0
/* 804F6CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F6CB0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 804F6CB4  3B BA 01 6C */	addi r29, r26, 0x16c
lbl_804F6CB8:
/* 804F6CB8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804F6CBC  38 00 00 FF */	li r0, 0xff
/* 804F6CC0  90 01 00 08 */	stw r0, 8(r1)
/* 804F6CC4  38 80 00 00 */	li r4, 0
/* 804F6CC8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F6CCC  38 00 FF FF */	li r0, -1
/* 804F6CD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F6CD4  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F6CD8  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F6CDC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F6CE0  3B D6 18 38 */	addi r30, r22, 0x1838
/* 804F6CE4  7C 9F F0 2E */	lwzx r4, r31, r30
/* 804F6CE8  38 A0 00 00 */	li r5, 0
/* 804F6CEC  7C DD BA 2E */	lhzx r6, r29, r23
/* 804F6CF0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 804F6CF4  39 00 00 00 */	li r8, 0
/* 804F6CF8  39 20 00 00 */	li r9, 0
/* 804F6CFC  39 40 00 00 */	li r10, 0
/* 804F6D00  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F6D04  4B B5 67 C8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F6D08  7C 7F F1 2E */	stwx r3, r31, r30
/* 804F6D0C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804F6D10  38 63 02 10 */	addi r3, r3, 0x210
/* 804F6D14  7C 9F F0 2E */	lwzx r4, r31, r30
/* 804F6D18  4B B5 4C 00 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804F6D1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804F6D20  41 82 00 6C */	beq lbl_804F6D8C
/* 804F6D24  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804F6D28  80 83 00 0C */	lwz r4, 0xc(r3)
/* 804F6D2C  38 7A 01 34 */	addi r3, r26, 0x134
/* 804F6D30  7C 03 B0 2E */	lwzx r0, r3, r22
/* 804F6D34  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804F6D38  7C 64 02 14 */	add r3, r4, r0
/* 804F6D3C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804F6D40  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804F6D44  80 84 00 00 */	lwz r4, 0(r4)
/* 804F6D48  4B E4 F7 68 */	b PSMTXCopy
/* 804F6D4C  FC 20 D8 90 */	fmr f1, f27
/* 804F6D50  FC 40 D8 90 */	fmr f2, f27
/* 804F6D54  FC 60 D8 90 */	fmr f3, f27
/* 804F6D58  38 60 00 01 */	li r3, 1
/* 804F6D5C  4B D7 A1 48 */	b MtxScale__FfffUc
/* 804F6D60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F6D64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F6D68  80 63 00 00 */	lwz r3, 0(r3)
/* 804F6D6C  38 9E 00 68 */	addi r4, r30, 0x68
/* 804F6D70  38 BE 00 98 */	addi r5, r30, 0x98
/* 804F6D74  38 DE 00 A4 */	addi r6, r30, 0xa4
/* 804F6D78  4B D8 9A 90 */	b func_80280808
/* 804F6D7C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 804F6D80  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 804F6D84  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 804F6D88  D0 3E 00 B4 */	stfs f1, 0xb4(r30)
lbl_804F6D8C:
/* 804F6D8C  3B 18 00 01 */	addi r24, r24, 1
/* 804F6D90  2C 18 00 0E */	cmpwi r24, 0xe
/* 804F6D94  3A F7 00 02 */	addi r23, r23, 2
/* 804F6D98  3A D6 00 04 */	addi r22, r22, 4
/* 804F6D9C  41 80 FF 1C */	blt lbl_804F6CB8
/* 804F6DA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000B@ha */
/* 804F6DA4  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0007000B@l */
/* 804F6DA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F6DAC  38 7F 06 3C */	addi r3, r31, 0x63c
/* 804F6DB0  38 81 00 20 */	addi r4, r1, 0x20
/* 804F6DB4  38 A0 00 00 */	li r5, 0
/* 804F6DB8  38 C0 FF FF */	li r6, -1
/* 804F6DBC  81 9F 06 3C */	lwz r12, 0x63c(r31)
/* 804F6DC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804F6DC4  7D 89 03 A6 */	mtctr r12
/* 804F6DC8  4E 80 04 21 */	bctrl 
/* 804F6DCC  48 00 00 0C */	b lbl_804F6DD8
lbl_804F6DD0:
/* 804F6DD0  C3 BB 00 3C */	lfs f29, 0x3c(r27)
/* 804F6DD4  C3 9B 01 B0 */	lfs f28, 0x1b0(r27)
lbl_804F6DD8:
/* 804F6DD8  38 7F 07 74 */	addi r3, r31, 0x774
/* 804F6DDC  FC 20 E8 90 */	fmr f1, f29
/* 804F6DE0  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804F6DE4  FC 60 E0 90 */	fmr f3, f28
/* 804F6DE8  4B D7 8C 54 */	b cLib_addCalc2__FPffff
/* 804F6DEC  A8 7F 07 90 */	lha r3, 0x790(r31)
/* 804F6DF0  2C 03 00 00 */	cmpwi r3, 0
/* 804F6DF4  41 82 03 14 */	beq lbl_804F7108
/* 804F6DF8  38 03 00 01 */	addi r0, r3, 1
/* 804F6DFC  B0 1F 07 90 */	sth r0, 0x790(r31)
/* 804F6E00  A8 1F 07 90 */	lha r0, 0x790(r31)
/* 804F6E04  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F6E08  40 82 00 38 */	bne lbl_804F6E40
/* 804F6E0C  3A C0 00 00 */	li r22, 0
lbl_804F6E10:
/* 804F6E10  7F E3 FB 78 */	mr r3, r31
/* 804F6E14  7E C4 B3 78 */	mr r4, r22
/* 804F6E18  4B FF 88 F9 */	bl carry_off__FP10e_fm_classi
/* 804F6E1C  3A D6 00 01 */	addi r22, r22, 1
/* 804F6E20  2C 16 00 04 */	cmpwi r22, 4
/* 804F6E24  41 80 FF EC */	blt lbl_804F6E10
/* 804F6E28  C0 5B 00 AC */	lfs f2, 0xac(r27)
/* 804F6E2C  D0 5F 07 9C */	stfs f2, 0x79c(r31)
/* 804F6E30  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804F6E34  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 804F6E38  38 80 FF FF */	li r4, -1
/* 804F6E3C  4B FF 88 79 */	bl hasira_hahen_hit__FP4cXyzffSc
lbl_804F6E40:
/* 804F6E40  A8 1F 07 90 */	lha r0, 0x790(r31)
/* 804F6E44  2C 00 00 02 */	cmpwi r0, 2
/* 804F6E48  40 82 01 10 */	bne lbl_804F6F58
/* 804F6E4C  3B 80 00 00 */	li r28, 0
/* 804F6E50  3B 00 00 00 */	li r24, 0
/* 804F6E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F6E58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F6E5C  3F 23 00 02 */	addis r25, r3, 2
/* 804F6E60  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804F6E64  3A E3 A9 48 */	addi r23, r3, stringBase0@l
/* 804F6E68  3A DA 01 88 */	addi r22, r26, 0x188
/* 804F6E6C  C3 BB 00 3C */	lfs f29, 0x3c(r27)
/* 804F6E70  3B 39 C2 F8 */	addi r25, r25, -15624
lbl_804F6E74:
/* 804F6E74  7E E3 BB 78 */	mr r3, r23
/* 804F6E78  7C 96 C0 2E */	lwzx r4, r22, r24
/* 804F6E7C  7F 25 CB 78 */	mr r5, r25
/* 804F6E80  38 C0 00 80 */	li r6, 0x80
/* 804F6E84  4B B4 54 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F6E88  7C 64 1B 78 */	mr r4, r3
/* 804F6E8C  7F 5F C2 14 */	add r26, r31, r24
/* 804F6E90  80 7A 07 7C */	lwz r3, 0x77c(r26)
/* 804F6E94  38 A0 00 00 */	li r5, 0
/* 804F6E98  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F6E9C  FC 40 08 90 */	fmr f2, f1
/* 804F6EA0  C0 7B 00 3C */	lfs f3, 0x3c(r27)
/* 804F6EA4  C0 9B 00 88 */	lfs f4, 0x88(r27)
/* 804F6EA8  38 C0 00 00 */	li r6, 0
/* 804F6EAC  4B B1 94 D0 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 804F6EB0  80 7A 07 7C */	lwz r3, 0x77c(r26)
/* 804F6EB4  D3 A3 00 1C */	stfs f29, 0x1c(r3)
/* 804F6EB8  80 7A 07 84 */	lwz r3, 0x784(r26)
/* 804F6EBC  D3 A3 00 10 */	stfs f29, 0x10(r3)
/* 804F6EC0  2C 1C 00 01 */	cmpwi r28, 1
/* 804F6EC4  40 82 00 14 */	bne lbl_804F6ED8
/* 804F6EC8  80 7F 07 8C */	lwz r3, 0x78c(r31)
/* 804F6ECC  D3 A3 00 10 */	stfs f29, 0x10(r3)
/* 804F6ED0  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804F6ED4  D0 1F 07 98 */	stfs f0, 0x798(r31)
lbl_804F6ED8:
/* 804F6ED8  3B 9C 00 01 */	addi r28, r28, 1
/* 804F6EDC  2C 1C 00 02 */	cmpwi r28, 2
/* 804F6EE0  3B 18 00 04 */	addi r24, r24, 4
/* 804F6EE4  41 80 FF 90 */	blt lbl_804F6E74
/* 804F6EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F6EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F6EF0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F6EF4  38 80 00 00 */	li r4, 0
/* 804F6EF8  90 81 00 08 */	stw r4, 8(r1)
/* 804F6EFC  38 00 FF FF */	li r0, -1
/* 804F6F00  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F6F04  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F6F08  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F6F0C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F6F10  38 80 00 00 */	li r4, 0
/* 804F6F14  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000811B@ha */
/* 804F6F18  38 A5 81 1B */	addi r5, r5, 0x811B /* 0x0000811B@l */
/* 804F6F1C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804F6F20  38 E0 00 00 */	li r7, 0
/* 804F6F24  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 804F6F28  39 21 00 40 */	addi r9, r1, 0x40
/* 804F6F2C  39 40 00 FF */	li r10, 0xff
/* 804F6F30  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F6F34  4B B5 5B 5C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F6F38  38 60 00 00 */	li r3, 0
/* 804F6F3C  38 80 00 00 */	li r4, 0
/* 804F6F40  38 00 00 0A */	li r0, 0xa
/* 804F6F44  7C 09 03 A6 */	mtctr r0
lbl_804F6F48:
/* 804F6F48  38 03 18 98 */	addi r0, r3, 0x1898
/* 804F6F4C  7C 9F 01 2E */	stwx r4, r31, r0
/* 804F6F50  38 63 00 04 */	addi r3, r3, 4
/* 804F6F54  42 00 FF F4 */	bdnz lbl_804F6F48
lbl_804F6F58:
/* 804F6F58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804F6F5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804F6F60  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804F6F64  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804F6F68  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804F6F6C  EC 42 00 2A */	fadds f2, f2, f0
/* 804F6F70  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804F6F74  4B E4 F9 74 */	b PSMTXTrans
/* 804F6F78  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F6F7C  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F6F80  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 804F6F84  FC 40 08 90 */	fmr f2, f1
/* 804F6F88  FC 60 08 90 */	fmr f3, f1
/* 804F6F8C  4B B1 5E AC */	b scaleM__14mDoMtx_stack_cFfff
/* 804F6F90  3B 20 00 00 */	li r25, 0
/* 804F6F94  3B 00 00 00 */	li r24, 0
/* 804F6F98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804F6F9C  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
lbl_804F6FA0:
/* 804F6FA0  7E FF C2 14 */	add r23, r31, r24
/* 804F6FA4  80 77 07 7C */	lwz r3, 0x77c(r23)
/* 804F6FA8  80 83 00 04 */	lwz r4, 4(r3)
/* 804F6FAC  7E C3 B3 78 */	mr r3, r22
/* 804F6FB0  38 84 00 24 */	addi r4, r4, 0x24
/* 804F6FB4  4B E4 F4 FC */	b PSMTXCopy
/* 804F6FB8  2C 19 00 01 */	cmpwi r25, 1
/* 804F6FBC  40 82 00 24 */	bne lbl_804F6FE0
/* 804F6FC0  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 804F6FC4  80 77 07 7C */	lwz r3, 0x77c(r23)
/* 804F6FC8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804F6FCC  38 7F 07 98 */	addi r3, r31, 0x798
/* 804F6FD0  C0 3B 00 C4 */	lfs f1, 0xc4(r27)
/* 804F6FD4  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804F6FD8  C0 7B 02 2C */	lfs f3, 0x22c(r27)
/* 804F6FDC  4B D7 8A 60 */	b cLib_addCalc2__FPffff
lbl_804F6FE0:
/* 804F6FE0  80 77 07 7C */	lwz r3, 0x77c(r23)
/* 804F6FE4  38 80 00 00 */	li r4, 0
/* 804F6FE8  38 A0 00 00 */	li r5, 0
/* 804F6FEC  38 C0 00 00 */	li r6, 0
/* 804F6FF0  4B B1 95 D8 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 804F6FF4  80 77 07 84 */	lwz r3, 0x784(r23)
/* 804F6FF8  4B B1 64 30 */	b play__14mDoExt_baseAnmFv
/* 804F6FFC  2C 19 00 01 */	cmpwi r25, 1
/* 804F7000  40 82 00 0C */	bne lbl_804F700C
/* 804F7004  80 7F 07 8C */	lwz r3, 0x78c(r31)
/* 804F7008  4B B1 64 20 */	b play__14mDoExt_baseAnmFv
lbl_804F700C:
/* 804F700C  80 77 07 7C */	lwz r3, 0x77c(r23)
/* 804F7010  4B B1 96 9C */	b modelCalc__14mDoExt_McaMorfFv
/* 804F7014  3B 39 00 01 */	addi r25, r25, 1
/* 804F7018  2C 19 00 02 */	cmpwi r25, 2
/* 804F701C  3B 18 00 04 */	addi r24, r24, 4
/* 804F7020  41 80 FF 80 */	blt lbl_804F6FA0
/* 804F7024  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 804F7028  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 804F702C  C0 3B 02 30 */	lfs f1, 0x230(r27)
/* 804F7030  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F7034  38 63 AE A4 */	addi r3, r3, l_HIO@l
/* 804F7038  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 804F703C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F7040  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F7044  3C 60 80 50 */	lis r3, fire_range@ha
/* 804F7048  D0 03 AF 78 */	stfs f0, fire_range@l(r3)
/* 804F704C  A8 1F 07 90 */	lha r0, 0x790(r31)
/* 804F7050  2C 00 00 2B */	cmpwi r0, 0x2b
/* 804F7054  40 80 00 A0 */	bge lbl_804F70F4
/* 804F7058  2C 00 00 29 */	cmpwi r0, 0x29
/* 804F705C  40 82 00 18 */	bne lbl_804F7074
/* 804F7060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F7064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F7068  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F706C  38 80 00 1F */	li r4, 0x1f
/* 804F7070  4B B7 8D 24 */	b StopQuake__12dVibration_cFi
lbl_804F7074:
/* 804F7074  7F E3 FB 78 */	mr r3, r31
/* 804F7078  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804F707C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804F7080  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804F7084  4B FF 8E E5 */	bl other_bg_check__FP10e_fm_classP10fopAc_ac_c
/* 804F7088  2C 03 00 00 */	cmpwi r3, 0
/* 804F708C  41 82 00 14 */	beq lbl_804F70A0
/* 804F7090  80 1F 16 CC */	lwz r0, 0x16cc(r31)
/* 804F7094  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 804F7098  90 1F 16 CC */	stw r0, 0x16cc(r31)
/* 804F709C  48 00 00 10 */	b lbl_804F70AC
lbl_804F70A0:
/* 804F70A0  80 1F 16 CC */	lwz r0, 0x16cc(r31)
/* 804F70A4  60 00 00 0C */	ori r0, r0, 0xc
/* 804F70A8  90 1F 16 CC */	stw r0, 0x16cc(r31)
lbl_804F70AC:
/* 804F70AC  38 7F 17 F0 */	addi r3, r31, 0x17f0
/* 804F70B0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804F70B4  4B D7 85 94 */	b SetC__8cM3dGSphFRC4cXyz
/* 804F70B8  38 7F 17 F0 */	addi r3, r31, 0x17f0
/* 804F70BC  3C 80 80 50 */	lis r4, fire_range@ha
/* 804F70C0  C0 24 AF 78 */	lfs f1, fire_range@l(r4)
/* 804F70C4  4B D7 86 44 */	b SetR__8cM3dGSphFf
/* 804F70C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F70CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F70D0  38 63 23 3C */	addi r3, r3, 0x233c
/* 804F70D4  38 9F 16 CC */	addi r4, r31, 0x16cc
/* 804F70D8  4B D6 DA D0 */	b Set__4cCcSFP8cCcD_Obj
/* 804F70DC  38 00 00 02 */	li r0, 2
/* 804F70E0  98 1F 07 B6 */	stb r0, 0x7b6(r31)
/* 804F70E4  3C 60 80 4F */	lis r3, s_hasira_eff_sub__FPvPv@ha
/* 804F70E8  38 63 F3 CC */	addi r3, r3, s_hasira_eff_sub__FPvPv@l
/* 804F70EC  7F E4 FB 78 */	mr r4, r31
/* 804F70F0  4B B2 A2 48 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_804F70F4:
/* 804F70F4  A8 1F 07 90 */	lha r0, 0x790(r31)
/* 804F70F8  2C 00 00 46 */	cmpwi r0, 0x46
/* 804F70FC  41 80 00 0C */	blt lbl_804F7108
/* 804F7100  38 00 00 00 */	li r0, 0
/* 804F7104  B0 1F 07 90 */	sth r0, 0x790(r31)
lbl_804F7108:
/* 804F7108  80 7F 07 A8 */	lwz r3, 0x7a8(r31)
/* 804F710C  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 804F7110  28 00 64 FF */	cmplwi r0, 0x64ff
/* 804F7114  41 82 00 78 */	beq lbl_804F718C
/* 804F7118  C0 5F 07 B8 */	lfs f2, 0x7b8(r31)
/* 804F711C  C0 1B 01 78 */	lfs f0, 0x178(r27)
/* 804F7120  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804F7124  40 81 00 68 */	ble lbl_804F718C
/* 804F7128  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804F712C  38 A3 AE A4 */	addi r5, r3, l_HIO@l
/* 804F7130  A8 05 00 34 */	lha r0, 0x34(r5)
/* 804F7134  98 01 00 24 */	stb r0, 0x24(r1)
/* 804F7138  A8 05 00 36 */	lha r0, 0x36(r5)
/* 804F713C  98 01 00 25 */	stb r0, 0x25(r1)
/* 804F7140  A8 05 00 38 */	lha r0, 0x38(r5)
/* 804F7144  98 01 00 26 */	stb r0, 0x26(r1)
/* 804F7148  38 00 00 FF */	li r0, 0xff
/* 804F714C  98 01 00 27 */	stb r0, 0x27(r1)
/* 804F7150  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804F7154  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F7158  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804F715C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804F7160  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804F7164  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F7168  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 804F716C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F7170  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F7174  38 61 00 34 */	addi r3, r1, 0x34
/* 804F7178  38 81 00 24 */	addi r4, r1, 0x24
/* 804F717C  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 804F7180  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804F7184  38 A0 00 00 */	li r5, 0
/* 804F7188  4B CB 2B D8 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_804F718C:
/* 804F718C  88 7F 07 B6 */	lbz r3, 0x7b6(r31)
/* 804F7190  7C 60 07 75 */	extsb. r0, r3
/* 804F7194  40 82 00 10 */	bne lbl_804F71A4
/* 804F7198  C3 FB 00 3C */	lfs f31, 0x3c(r27)
/* 804F719C  C3 DB 00 28 */	lfs f30, 0x28(r27)
/* 804F71A0  48 00 00 64 */	b lbl_804F7204
lbl_804F71A4:
/* 804F71A4  7C 60 07 74 */	extsb r0, r3
/* 804F71A8  2C 00 00 01 */	cmpwi r0, 1
/* 804F71AC  40 82 00 34 */	bne lbl_804F71E0
/* 804F71B0  A8 1F 07 A0 */	lha r0, 0x7a0(r31)
/* 804F71B4  1C 00 1A 00 */	mulli r0, r0, 0x1a00
/* 804F71B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804F71BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804F71C0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804F71C4  7C 43 04 2E */	lfsx f2, r3, r0
/* 804F71C8  C0 3B 02 34 */	lfs f1, 0x234(r27)
/* 804F71CC  C0 1B 00 C4 */	lfs f0, 0xc4(r27)
/* 804F71D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F71D4  EF E1 00 2A */	fadds f31, f1, f0
/* 804F71D8  C3 DB 00 28 */	lfs f30, 0x28(r27)
/* 804F71DC  48 00 00 28 */	b lbl_804F7204
lbl_804F71E0:
/* 804F71E0  2C 00 00 02 */	cmpwi r0, 2
/* 804F71E4  40 82 00 10 */	bne lbl_804F71F4
/* 804F71E8  C3 FB 00 B4 */	lfs f31, 0xb4(r27)
/* 804F71EC  C3 DB 00 28 */	lfs f30, 0x28(r27)
/* 804F71F0  48 00 00 14 */	b lbl_804F7204
lbl_804F71F4:
/* 804F71F4  2C 00 00 03 */	cmpwi r0, 3
/* 804F71F8  40 82 00 0C */	bne lbl_804F7204
/* 804F71FC  C3 FB 00 3C */	lfs f31, 0x3c(r27)
/* 804F7200  C3 DB 02 0C */	lfs f30, 0x20c(r27)
lbl_804F7204:
/* 804F7204  38 7F 07 B8 */	addi r3, r31, 0x7b8
/* 804F7208  FC 20 F8 90 */	fmr f1, f31
/* 804F720C  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804F7210  FC 60 F0 90 */	fmr f3, f30
/* 804F7214  4B D7 88 28 */	b cLib_addCalc2__FPffff
/* 804F7218  38 7F 07 9C */	addi r3, r31, 0x79c
/* 804F721C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804F7220  C0 5B 00 10 */	lfs f2, 0x10(r27)
/* 804F7224  4B D7 88 5C */	b cLib_addCalc0__FPfff
/* 804F7228  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F722C  82 C3 00 04 */	lwz r22, 4(r3)
/* 804F7230  80 76 00 84 */	lwz r3, 0x84(r22)
/* 804F7234  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7238  38 63 04 20 */	addi r3, r3, 0x420
/* 804F723C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804F7240  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804F7244  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7248  4B E4 F2 68 */	b PSMTXCopy
/* 804F724C  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 804F7250  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804F7254  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804F7258  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F725C  38 61 00 28 */	addi r3, r1, 0x28
/* 804F7260  38 9F 07 C8 */	addi r4, r31, 0x7c8
/* 804F7264  4B D7 9C 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F7268  80 76 00 84 */	lwz r3, 0x84(r22)
/* 804F726C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7270  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 804F7274  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804F7278  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804F727C  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7280  4B E4 F2 30 */	b PSMTXCopy
/* 804F7284  38 61 00 28 */	addi r3, r1, 0x28
/* 804F7288  38 9F 07 D4 */	addi r4, r31, 0x7d4
/* 804F728C  4B D7 9C 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F7290  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804F7294  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804F7298  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 804F729C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804F72A0  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 804F72A4  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 804F72A8  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 804F72AC  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 804F72B0  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 804F72B4  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 804F72B8  39 61 00 80 */	addi r11, r1, 0x80
/* 804F72BC  4B E6 AF 50 */	b _restgpr_22
/* 804F72C0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804F72C4  7C 08 03 A6 */	mtlr r0
/* 804F72C8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804F72CC  4E 80 00 20 */	blr 
