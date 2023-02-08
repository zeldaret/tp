lbl_80468A90:
/* 80468A90  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80468A94  7C 08 02 A6 */	mflr r0
/* 80468A98  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80468A9C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80468AA0  4B EF 97 39 */	bl _savegpr_28
/* 80468AA4  7C 9D 23 78 */	mr r29, r4
/* 80468AA8  3C 80 80 47 */	lis r4, lit_3681@ha /* 0x8046AFC4@ha */
/* 80468AAC  3B E4 AF C4 */	addi r31, r4, lit_3681@l /* 0x8046AFC4@l */
/* 80468AB0  7C 7E 1B 78 */	mr r30, r3
/* 80468AB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80468AB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80468ABC  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80468AC0  38 61 00 54 */	addi r3, r1, 0x54
/* 80468AC4  4B C0 F1 A5 */	bl __ct__11dBgS_LinChkFv
/* 80468AC8  A8 7D 00 94 */	lha r3, 0x94(r29)
/* 80468ACC  38 03 00 01 */	addi r0, r3, 1
/* 80468AD0  B0 1D 00 94 */	sth r0, 0x94(r29)
/* 80468AD4  88 7D 00 98 */	lbz r3, 0x98(r29)
/* 80468AD8  28 03 00 00 */	cmplwi r3, 0
/* 80468ADC  41 82 00 0C */	beq lbl_80468AE8
/* 80468AE0  38 03 FF FF */	addi r0, r3, -1
/* 80468AE4  98 1D 00 98 */	stb r0, 0x98(r29)
lbl_80468AE8:
/* 80468AE8  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80468AEC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80468AF0  EC 23 00 28 */	fsubs f1, f3, f0
/* 80468AF4  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80468AF8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80468AFC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80468B00  D0 7D 00 10 */	stfs f3, 0x10(r29)
/* 80468B04  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80468B08  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80468B0C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80468B10  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80468B14  EC 61 00 72 */	fmuls f3, f1, f1
/* 80468B18  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80468B1C  EC 63 00 2A */	fadds f3, f3, f0
/* 80468B20  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468B24  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80468B28  40 81 00 0C */	ble lbl_80468B34
/* 80468B2C  FC 00 18 34 */	frsqrte f0, f3
/* 80468B30  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80468B34:
/* 80468B34  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80468B38  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80468B3C  40 80 00 54 */	bge lbl_80468B90
/* 80468B40  4B DF EB 35 */	bl cM_atan2s__Fff
/* 80468B44  7C 7C 1B 78 */	mr r28, r3
/* 80468B48  38 7D 00 2A */	addi r3, r29, 0x2a
/* 80468B4C  7F 84 E3 78 */	mr r4, r28
/* 80468B50  38 A0 00 10 */	li r5, 0x10
/* 80468B54  38 C0 00 C8 */	li r6, 0xc8
/* 80468B58  4B E0 7A B1 */	bl cLib_addCalcAngleS2__FPssss
/* 80468B5C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80468B60  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80468B64  80 63 00 00 */	lwz r3, 0(r3)
/* 80468B68  7F 84 E3 78 */	mr r4, r28
/* 80468B6C  4B BA 38 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 80468B70  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468B74  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80468B78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80468B7C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80468B80  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80468B84  38 61 00 48 */	addi r3, r1, 0x48
/* 80468B88  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80468B8C  4B E0 83 61 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_80468B90:
/* 80468B90  38 7D 00 04 */	addi r3, r29, 4
/* 80468B94  38 9D 00 1C */	addi r4, r29, 0x1c
/* 80468B98  7C 65 1B 78 */	mr r5, r3
/* 80468B9C  4B ED E4 F5 */	bl PSVECAdd
/* 80468BA0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468BA4  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80468BA8  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80468BAC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80468BB0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80468BB4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80468BB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80468BBC  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80468BC0  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80468BC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80468BC8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80468BCC  A8 7D 00 2A */	lha r3, 0x2a(r29)
/* 80468BD0  A8 1D 00 92 */	lha r0, 0x92(r29)
/* 80468BD4  7C 03 02 14 */	add r0, r3, r0
/* 80468BD8  B0 1D 00 2A */	sth r0, 0x2a(r29)
/* 80468BDC  38 7D 00 92 */	addi r3, r29, 0x92
/* 80468BE0  38 80 00 00 */	li r4, 0
/* 80468BE4  38 A0 00 01 */	li r5, 1
/* 80468BE8  38 C0 00 28 */	li r6, 0x28
/* 80468BEC  4B E0 7A 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80468BF0  A8 1D 00 94 */	lha r0, 0x94(r29)
/* 80468BF4  1C 00 07 08 */	mulli r0, r0, 0x708
/* 80468BF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80468BFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80468C00  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80468C04  7C 23 04 2E */	lfsx f1, r3, r0
/* 80468C08  38 7D 00 2C */	addi r3, r29, 0x2c
/* 80468C0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80468C10  EC 00 00 72 */	fmuls f0, f0, f1
/* 80468C14  FC 00 00 1E */	fctiwz f0, f0
/* 80468C18  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80468C1C  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 80468C20  38 A0 00 01 */	li r5, 1
/* 80468C24  38 C0 08 00 */	li r6, 0x800
/* 80468C28  4B E0 79 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80468C2C  38 7D 00 28 */	addi r3, r29, 0x28
/* 80468C30  38 80 00 00 */	li r4, 0
/* 80468C34  38 A0 00 04 */	li r5, 4
/* 80468C38  38 C0 10 00 */	li r6, 0x1000
/* 80468C3C  4B E0 79 CD */	bl cLib_addCalcAngleS2__FPssss
/* 80468C40  88 1D 00 98 */	lbz r0, 0x98(r29)
/* 80468C44  28 00 00 00 */	cmplwi r0, 0
/* 80468C48  40 82 01 D0 */	bne lbl_80468E18
/* 80468C4C  38 61 00 24 */	addi r3, r1, 0x24
/* 80468C50  38 9D 00 04 */	addi r4, r29, 4
/* 80468C54  38 BD 00 10 */	addi r5, r29, 0x10
/* 80468C58  4B DF DE DD */	bl __mi__4cXyzCFRC3Vec
/* 80468C5C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80468C60  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80468C64  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80468C68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80468C6C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80468C70  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80468C74  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468C78  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80468C7C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80468C80  4B ED E4 B9 */	bl PSVECSquareMag
/* 80468C84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468C8C  40 81 00 58 */	ble lbl_80468CE4
/* 80468C90  FC 00 08 34 */	frsqrte f0, f1
/* 80468C94  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80468C98  FC 44 00 32 */	fmul f2, f4, f0
/* 80468C9C  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80468CA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80468CA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80468CA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80468CAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80468CB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80468CB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80468CB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80468CBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80468CC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80468CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80468CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80468CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80468CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80468CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80468CD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80468CDC  FC 20 08 18 */	frsp f1, f1
/* 80468CE0  48 00 00 88 */	b lbl_80468D68
lbl_80468CE4:
/* 80468CE4  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80468CE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468CEC  40 80 00 10 */	bge lbl_80468CFC
/* 80468CF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80468CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80468CF8  48 00 00 70 */	b lbl_80468D68
lbl_80468CFC:
/* 80468CFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80468D00  80 81 00 08 */	lwz r4, 8(r1)
/* 80468D04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80468D08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80468D0C  7C 03 00 00 */	cmpw r3, r0
/* 80468D10  41 82 00 14 */	beq lbl_80468D24
/* 80468D14  40 80 00 40 */	bge lbl_80468D54
/* 80468D18  2C 03 00 00 */	cmpwi r3, 0
/* 80468D1C  41 82 00 20 */	beq lbl_80468D3C
/* 80468D20  48 00 00 34 */	b lbl_80468D54
lbl_80468D24:
/* 80468D24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80468D28  41 82 00 0C */	beq lbl_80468D34
/* 80468D2C  38 00 00 01 */	li r0, 1
/* 80468D30  48 00 00 28 */	b lbl_80468D58
lbl_80468D34:
/* 80468D34  38 00 00 02 */	li r0, 2
/* 80468D38  48 00 00 20 */	b lbl_80468D58
lbl_80468D3C:
/* 80468D3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80468D40  41 82 00 0C */	beq lbl_80468D4C
/* 80468D44  38 00 00 05 */	li r0, 5
/* 80468D48  48 00 00 10 */	b lbl_80468D58
lbl_80468D4C:
/* 80468D4C  38 00 00 03 */	li r0, 3
/* 80468D50  48 00 00 08 */	b lbl_80468D58
lbl_80468D54:
/* 80468D54  38 00 00 04 */	li r0, 4
lbl_80468D58:
/* 80468D58  2C 00 00 01 */	cmpwi r0, 1
/* 80468D5C  40 82 00 0C */	bne lbl_80468D68
/* 80468D60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80468D64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80468D68:
/* 80468D68  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80468D6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468D70  40 81 00 A8 */	ble lbl_80468E18
/* 80468D74  38 61 00 18 */	addi r3, r1, 0x18
/* 80468D78  38 81 00 3C */	addi r4, r1, 0x3c
/* 80468D7C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80468D80  4B DF DE 05 */	bl __ml__4cXyzCFf
/* 80468D84  38 61 00 0C */	addi r3, r1, 0xc
/* 80468D88  38 9D 00 04 */	addi r4, r29, 4
/* 80468D8C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80468D90  4B DF DD 55 */	bl __pl__4cXyzCFRC3Vec
/* 80468D94  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80468D98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80468D9C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80468DA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80468DA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80468DA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80468DAC  38 61 00 54 */	addi r3, r1, 0x54
/* 80468DB0  38 9D 00 10 */	addi r4, r29, 0x10
/* 80468DB4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80468DB8  7F C6 F3 78 */	mr r6, r30
/* 80468DBC  4B C0 EF A9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80468DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80468DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80468DC8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80468DCC  38 81 00 54 */	addi r4, r1, 0x54
/* 80468DD0  4B C0 B5 E5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80468DD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80468DD8  41 82 00 40 */	beq lbl_80468E18
/* 80468DDC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80468DE0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80468DE4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80468DE8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80468DEC  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80468DF0  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80468DF4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80468DF8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80468DFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80468E00  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80468E04  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80468E08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80468E0C  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 80468E10  38 00 00 05 */	li r0, 5
/* 80468E14  98 1D 00 98 */	stb r0, 0x98(r29)
lbl_80468E18:
/* 80468E18  38 7D 00 A0 */	addi r3, r29, 0xa0
/* 80468E1C  38 9D 00 04 */	addi r4, r29, 4
/* 80468E20  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80468E24  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80468E28  4B BB 42 E5 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80468E2C  38 61 00 54 */	addi r3, r1, 0x54
/* 80468E30  38 80 FF FF */	li r4, -1
/* 80468E34  4B C0 EE A9 */	bl __dt__11dBgS_LinChkFv
/* 80468E38  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80468E3C  4B EF 93 E9 */	bl _restgpr_28
/* 80468E40  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80468E44  7C 08 03 A6 */	mtlr r0
/* 80468E48  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80468E4C  4E 80 00 20 */	blr 
