lbl_80726A70:
/* 80726A70  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 80726A74  7C 08 02 A6 */	mflr r0
/* 80726A78  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80726A7C  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 80726A80  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, 0 /* qr0 */
/* 80726A84  DB C1 01 A0 */	stfd f30, 0x1a0(r1)
/* 80726A88  F3 C1 01 A8 */	psq_st f30, 424(r1), 0, 0 /* qr0 */
/* 80726A8C  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80726A90  4B C3 B7 38 */	b _savegpr_24
/* 80726A94  7C 7E 1B 78 */	mr r30, r3
/* 80726A98  3C 60 80 73 */	lis r3, lit_3800@ha
/* 80726A9C  3B E3 95 04 */	addi r31, r3, lit_3800@l
/* 80726AA0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80726AA4  4B 95 11 C4 */	b __ct__11dBgS_LinChkFv
/* 80726AA8  38 61 00 BC */	addi r3, r1, 0xbc
/* 80726AAC  3C 80 80 72 */	lis r4, __ct__4cXyzFv@ha
/* 80726AB0  38 84 6F 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 80726AB4  3C A0 80 73 */	lis r5, __dt__4cXyzFv@ha
/* 80726AB8  38 A5 94 B4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80726ABC  38 C0 00 0C */	li r6, 0xc
/* 80726AC0  38 E0 00 10 */	li r7, 0x10
/* 80726AC4  4B C3 B2 9C */	b __construct_array
/* 80726AC8  AB 5E 04 E6 */	lha r26, 0x4e6(r30)
/* 80726ACC  3B 20 00 00 */	li r25, 0
/* 80726AD0  3B 00 00 00 */	li r24, 0
/* 80726AD4  3B 60 00 00 */	li r27, 0
/* 80726AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80726ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80726AE0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80726AE4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80726AE8  3B 83 07 68 */	addi r28, r3, calc_mtx@l
/* 80726AEC  C3 DF 00 04 */	lfs f30, 4(r31)
/* 80726AF0  C3 FF 00 64 */	lfs f31, 0x64(r31)
lbl_80726AF4:
/* 80726AF4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80726AF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80726AFC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80726B00  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80726B04  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80726B08  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80726B0C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 80726B10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80726B14  80 7C 00 00 */	lwz r3, 0(r28)
/* 80726B18  7F 44 D3 78 */	mr r4, r26
/* 80726B1C  4B 8E 58 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80726B20  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80726B24  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 80726B28  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 80726B2C  38 61 00 28 */	addi r3, r1, 0x28
/* 80726B30  38 81 00 34 */	addi r4, r1, 0x34
/* 80726B34  4B B4 A3 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80726B38  38 61 00 34 */	addi r3, r1, 0x34
/* 80726B3C  38 81 00 40 */	addi r4, r1, 0x40
/* 80726B40  7C 65 1B 78 */	mr r5, r3
/* 80726B44  4B C2 05 4C */	b PSVECAdd
/* 80726B48  38 61 00 4C */	addi r3, r1, 0x4c
/* 80726B4C  38 81 00 40 */	addi r4, r1, 0x40
/* 80726B50  38 A1 00 34 */	addi r5, r1, 0x34
/* 80726B54  7F C6 F3 78 */	mr r6, r30
/* 80726B58  4B 95 12 0C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80726B5C  7F A3 EB 78 */	mr r3, r29
/* 80726B60  38 81 00 4C */	addi r4, r1, 0x4c
/* 80726B64  4B 94 D8 50 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80726B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80726B6C  41 82 00 F4 */	beq lbl_80726C60
/* 80726B70  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80726B74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80726B78  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80726B7C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80726B80  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80726B84  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80726B88  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80726B8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80726B90  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80726B94  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80726B98  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80726B9C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80726BA0  38 61 00 28 */	addi r3, r1, 0x28
/* 80726BA4  38 81 00 40 */	addi r4, r1, 0x40
/* 80726BA8  4B B4 A3 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 80726BAC  38 61 00 40 */	addi r3, r1, 0x40
/* 80726BB0  38 81 00 34 */	addi r4, r1, 0x34
/* 80726BB4  7C 65 1B 78 */	mr r5, r3
/* 80726BB8  4B C2 04 D8 */	b PSVECAdd
/* 80726BBC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80726BC0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80726BC4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80726BC8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80726BCC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80726BD0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80726BD4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80726BD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80726BDC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80726BE0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80726BE4  38 81 00 40 */	addi r4, r1, 0x40
/* 80726BE8  38 A1 00 34 */	addi r5, r1, 0x34
/* 80726BEC  7F C6 F3 78 */	mr r6, r30
/* 80726BF0  4B 95 11 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80726BF4  7F A3 EB 78 */	mr r3, r29
/* 80726BF8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80726BFC  4B 94 D7 B8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80726C00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80726C04  41 82 00 2C */	beq lbl_80726C30
/* 80726C08  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80726C0C  38 61 00 BC */	addi r3, r1, 0xbc
/* 80726C10  7C 63 DA 14 */	add r3, r3, r27
/* 80726C14  D0 03 00 00 */	stfs f0, 0(r3)
/* 80726C18  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80726C1C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80726C20  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80726C24  D0 03 00 08 */	stfs f0, 8(r3)
/* 80726C28  3B 20 00 01 */	li r25, 1
/* 80726C2C  48 00 00 34 */	b lbl_80726C60
lbl_80726C30:
/* 80726C30  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80726C34  38 61 00 BC */	addi r3, r1, 0xbc
/* 80726C38  7C 63 DA 14 */	add r3, r3, r27
/* 80726C3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80726C40  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80726C44  D0 03 00 04 */	stfs f0, 4(r3)
/* 80726C48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80726C4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80726C50  C0 23 00 00 */	lfs f1, 0(r3)
/* 80726C54  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80726C58  EC 01 00 2A */	fadds f0, f1, f0
/* 80726C5C  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80726C60:
/* 80726C60  3B 18 00 01 */	addi r24, r24, 1
/* 80726C64  2C 18 00 10 */	cmpwi r24, 0x10
/* 80726C68  3B 5A 10 00 */	addi r26, r26, 0x1000
/* 80726C6C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80726C70  41 80 FE 84 */	blt lbl_80726AF4
/* 80726C74  7F 20 07 75 */	extsb. r0, r25
/* 80726C78  41 82 02 60 */	beq lbl_80726ED8
/* 80726C7C  3B A0 00 00 */	li r29, 0
/* 80726C80  3B 80 00 01 */	li r28, 1
/* 80726C84  3B 60 00 0C */	li r27, 0xc
/* 80726C88  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_80726C8C:
/* 80726C8C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80726C90  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80726C94  38 81 00 BC */	addi r4, r1, 0xbc
/* 80726C98  7C 84 02 14 */	add r4, r4, r0
/* 80726C9C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80726CA0  4B B3 FE 94 */	b __mi__4cXyzCFRC3Vec
/* 80726CA4  38 61 00 10 */	addi r3, r1, 0x10
/* 80726CA8  38 81 00 BC */	addi r4, r1, 0xbc
/* 80726CAC  7C 84 DA 14 */	add r4, r4, r27
/* 80726CB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80726CB4  4B B3 FE 80 */	b __mi__4cXyzCFRC3Vec
/* 80726CB8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80726CBC  4B C2 04 7C */	b PSVECSquareMag
/* 80726CC0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80726CC4  40 81 00 58 */	ble lbl_80726D1C
/* 80726CC8  FC 00 08 34 */	frsqrte f0, f1
/* 80726CCC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80726CD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80726CD4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80726CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80726CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80726CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80726CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80726CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80726CEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80726CF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80726CF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80726CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80726CFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80726D00  FC 00 00 32 */	fmul f0, f0, f0
/* 80726D04  FC 01 00 32 */	fmul f0, f1, f0
/* 80726D08  FC 03 00 28 */	fsub f0, f3, f0
/* 80726D0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80726D10  FF C1 00 32 */	fmul f30, f1, f0
/* 80726D14  FF C0 F0 18 */	frsp f30, f30
/* 80726D18  48 00 00 90 */	b lbl_80726DA8
lbl_80726D1C:
/* 80726D1C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80726D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80726D24  40 80 00 10 */	bge lbl_80726D34
/* 80726D28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80726D2C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80726D30  48 00 00 78 */	b lbl_80726DA8
lbl_80726D34:
/* 80726D34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80726D38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80726D3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80726D40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80726D44  7C 03 00 00 */	cmpw r3, r0
/* 80726D48  41 82 00 14 */	beq lbl_80726D5C
/* 80726D4C  40 80 00 40 */	bge lbl_80726D8C
/* 80726D50  2C 03 00 00 */	cmpwi r3, 0
/* 80726D54  41 82 00 20 */	beq lbl_80726D74
/* 80726D58  48 00 00 34 */	b lbl_80726D8C
lbl_80726D5C:
/* 80726D5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80726D60  41 82 00 0C */	beq lbl_80726D6C
/* 80726D64  38 00 00 01 */	li r0, 1
/* 80726D68  48 00 00 28 */	b lbl_80726D90
lbl_80726D6C:
/* 80726D6C  38 00 00 02 */	li r0, 2
/* 80726D70  48 00 00 20 */	b lbl_80726D90
lbl_80726D74:
/* 80726D74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80726D78  41 82 00 0C */	beq lbl_80726D84
/* 80726D7C  38 00 00 05 */	li r0, 5
/* 80726D80  48 00 00 10 */	b lbl_80726D90
lbl_80726D84:
/* 80726D84  38 00 00 03 */	li r0, 3
/* 80726D88  48 00 00 08 */	b lbl_80726D90
lbl_80726D8C:
/* 80726D8C  38 00 00 04 */	li r0, 4
lbl_80726D90:
/* 80726D90  2C 00 00 01 */	cmpwi r0, 1
/* 80726D94  40 82 00 10 */	bne lbl_80726DA4
/* 80726D98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80726D9C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80726DA0  48 00 00 08 */	b lbl_80726DA8
lbl_80726DA4:
/* 80726DA4  FF C0 08 90 */	fmr f30, f1
lbl_80726DA8:
/* 80726DA8  38 61 00 10 */	addi r3, r1, 0x10
/* 80726DAC  4B C2 03 8C */	b PSVECSquareMag
/* 80726DB0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80726DB4  40 81 00 58 */	ble lbl_80726E0C
/* 80726DB8  FC 00 08 34 */	frsqrte f0, f1
/* 80726DBC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80726DC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80726DC4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80726DC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80726DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80726DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80726DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80726DD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80726DDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80726DE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80726DE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80726DE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80726DEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80726DF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80726DF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80726DF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80726DFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80726E00  FC 21 00 32 */	fmul f1, f1, f0
/* 80726E04  FC 20 08 18 */	frsp f1, f1
/* 80726E08  48 00 00 88 */	b lbl_80726E90
lbl_80726E0C:
/* 80726E0C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80726E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80726E14  40 80 00 10 */	bge lbl_80726E24
/* 80726E18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80726E1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80726E20  48 00 00 70 */	b lbl_80726E90
lbl_80726E24:
/* 80726E24  D0 21 00 08 */	stfs f1, 8(r1)
/* 80726E28  80 81 00 08 */	lwz r4, 8(r1)
/* 80726E2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80726E30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80726E34  7C 03 00 00 */	cmpw r3, r0
/* 80726E38  41 82 00 14 */	beq lbl_80726E4C
/* 80726E3C  40 80 00 40 */	bge lbl_80726E7C
/* 80726E40  2C 03 00 00 */	cmpwi r3, 0
/* 80726E44  41 82 00 20 */	beq lbl_80726E64
/* 80726E48  48 00 00 34 */	b lbl_80726E7C
lbl_80726E4C:
/* 80726E4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80726E50  41 82 00 0C */	beq lbl_80726E5C
/* 80726E54  38 00 00 01 */	li r0, 1
/* 80726E58  48 00 00 28 */	b lbl_80726E80
lbl_80726E5C:
/* 80726E5C  38 00 00 02 */	li r0, 2
/* 80726E60  48 00 00 20 */	b lbl_80726E80
lbl_80726E64:
/* 80726E64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80726E68  41 82 00 0C */	beq lbl_80726E74
/* 80726E6C  38 00 00 05 */	li r0, 5
/* 80726E70  48 00 00 10 */	b lbl_80726E80
lbl_80726E74:
/* 80726E74  38 00 00 03 */	li r0, 3
/* 80726E78  48 00 00 08 */	b lbl_80726E80
lbl_80726E7C:
/* 80726E7C  38 00 00 04 */	li r0, 4
lbl_80726E80:
/* 80726E80  2C 00 00 01 */	cmpwi r0, 1
/* 80726E84  40 82 00 0C */	bne lbl_80726E90
/* 80726E88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80726E8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80726E90:
/* 80726E90  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80726E94  40 81 00 08 */	ble lbl_80726E9C
/* 80726E98  7F 9D E3 78 */	mr r29, r28
lbl_80726E9C:
/* 80726E9C  3B 9C 00 01 */	addi r28, r28, 1
/* 80726EA0  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80726EA4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80726EA8  41 80 FD E4 */	blt lbl_80726C8C
/* 80726EAC  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80726EB0  38 61 00 BC */	addi r3, r1, 0xbc
/* 80726EB4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80726EB8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80726EBC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80726EC0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80726EC4  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80726EC8  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80726ECC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80726ED0  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80726ED4  48 00 00 34 */	b lbl_80726F08
lbl_80726ED8:
/* 80726ED8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80726EDC  4B B4 0A B0 */	b cM_rndFX__Ff
/* 80726EE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80726EE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80726EE8  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 80726EEC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80726EF0  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80726EF4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80726EF8  4B B4 0A 94 */	b cM_rndFX__Ff
/* 80726EFC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80726F00  EC 00 08 2A */	fadds f0, f0, f1
/* 80726F04  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_80726F08:
/* 80726F08  38 61 00 BC */	addi r3, r1, 0xbc
/* 80726F0C  3C 80 80 73 */	lis r4, __dt__4cXyzFv@ha
/* 80726F10  38 84 94 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80726F14  38 A0 00 0C */	li r5, 0xc
/* 80726F18  38 C0 00 10 */	li r6, 0x10
/* 80726F1C  4B C3 AD CC */	b __destroy_arr
/* 80726F20  38 61 00 4C */	addi r3, r1, 0x4c
/* 80726F24  38 80 FF FF */	li r4, -1
/* 80726F28  4B 95 0D B4 */	b __dt__11dBgS_LinChkFv
/* 80726F2C  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, 0 /* qr0 */
/* 80726F30  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 80726F34  E3 C1 01 A8 */	psq_l f30, 424(r1), 0, 0 /* qr0 */
/* 80726F38  CB C1 01 A0 */	lfd f30, 0x1a0(r1)
/* 80726F3C  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 80726F40  4B C3 B2 D4 */	b _restgpr_24
/* 80726F44  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 80726F48  7C 08 03 A6 */	mtlr r0
/* 80726F4C  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 80726F50  4E 80 00 20 */	blr 
