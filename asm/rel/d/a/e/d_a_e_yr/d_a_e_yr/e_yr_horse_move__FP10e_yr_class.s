lbl_80824BBC:
/* 80824BBC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80824BC0  7C 08 02 A6 */	mflr r0
/* 80824BC4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80824BC8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80824BCC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80824BD0  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80824BD4  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80824BD8  39 61 00 80 */	addi r11, r1, 0x80
/* 80824BDC  4B B3 D5 F8 */	b _savegpr_27
/* 80824BE0  7C 7C 1B 78 */	mr r28, r3
/* 80824BE4  3C 60 80 83 */	lis r3, lit_3902@ha
/* 80824BE8  3B E3 88 50 */	addi r31, r3, lit_3902@l
/* 80824BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80824BF0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80824BF4  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80824BF8  38 00 00 01 */	li r0, 1
/* 80824BFC  98 1C 0E 94 */	stb r0, 0xe94(r28)
/* 80824C00  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80824C04  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80824C08  FC 00 00 1E */	fctiwz f0, f0
/* 80824C0C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824C10  83 61 00 64 */	lwz r27, 0x64(r1)
/* 80824C14  80 64 5D B8 */	lwz r3, 0x5db8(r4)
/* 80824C18  C3 E3 05 2C */	lfs f31, 0x52c(r3)
/* 80824C1C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80824C20  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80824C24  40 81 00 0C */	ble lbl_80824C30
/* 80824C28  FF E0 00 90 */	fmr f31, f0
/* 80824C2C  48 00 00 14 */	b lbl_80824C40
lbl_80824C30:
/* 80824C30  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80824C34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80824C38  40 80 00 08 */	bge lbl_80824C40
/* 80824C3C  FF E0 00 90 */	fmr f31, f0
lbl_80824C40:
/* 80824C40  3B A0 00 00 */	li r29, 0
/* 80824C44  88 1C 06 7D */	lbz r0, 0x67d(r28)
/* 80824C48  7C 00 07 74 */	extsb r0, r0
/* 80824C4C  2C 00 00 02 */	cmpwi r0, 2
/* 80824C50  41 82 00 F4 */	beq lbl_80824D44
/* 80824C54  40 80 00 14 */	bge lbl_80824C68
/* 80824C58  2C 00 00 00 */	cmpwi r0, 0
/* 80824C5C  41 82 00 1C */	beq lbl_80824C78
/* 80824C60  40 80 00 88 */	bge lbl_80824CE8
/* 80824C64  48 00 07 40 */	b lbl_808253A4
lbl_80824C68:
/* 80824C68  2C 00 00 04 */	cmpwi r0, 4
/* 80824C6C  41 82 06 14 */	beq lbl_80825280
/* 80824C70  40 80 07 34 */	bge lbl_808253A4
/* 80824C74  48 00 05 D8 */	b lbl_8082524C
lbl_80824C78:
/* 80824C78  38 00 00 02 */	li r0, 2
/* 80824C7C  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 80824C80  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824C84  D0 1C 06 98 */	stfs f0, 0x698(r28)
/* 80824C88  D0 1C 06 94 */	stfs f0, 0x694(r28)
/* 80824C8C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80824C90  4B A4 2C C4 */	b cM_rndF__Ff
/* 80824C94  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80824C98  EC 40 08 2A */	fadds f2, f0, f1
/* 80824C9C  7F 83 E3 78 */	mr r3, r28
/* 80824CA0  38 80 00 08 */	li r4, 8
/* 80824CA4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80824CA8  38 A0 00 02 */	li r5, 2
/* 80824CAC  4B FF DA E5 */	bl anm_init__FP10e_yr_classifUcf
/* 80824CB0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80824CB4  4B A4 2C A0 */	b cM_rndF__Ff
/* 80824CB8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80824CBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80824CC0  FC 00 00 1E */	fctiwz f0, f0
/* 80824CC4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824CC8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80824CCC  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
/* 80824CD0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80824CD4  B0 1C 06 C4 */	sth r0, 0x6c4(r28)
/* 80824CD8  38 00 00 00 */	li r0, 0
/* 80824CDC  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
/* 80824CE0  B0 1C 06 A8 */	sth r0, 0x6a8(r28)
/* 80824CE4  B0 1C 06 AA */	sth r0, 0x6aa(r28)
lbl_80824CE8:
/* 80824CE8  A8 1C 06 A6 */	lha r0, 0x6a6(r28)
/* 80824CEC  2C 00 00 00 */	cmpwi r0, 0
/* 80824CF0  40 82 00 A0 */	bne lbl_80824D90
/* 80824CF4  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80824CF8  4B A4 2C 5C */	b cM_rndF__Ff
/* 80824CFC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80824D00  EC 40 08 2A */	fadds f2, f0, f1
/* 80824D04  7F 83 E3 78 */	mr r3, r28
/* 80824D08  38 80 00 08 */	li r4, 8
/* 80824D0C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80824D10  38 A0 00 02 */	li r5, 2
/* 80824D14  4B FF DA 7D */	bl anm_init__FP10e_yr_classifUcf
/* 80824D18  38 00 00 02 */	li r0, 2
/* 80824D1C  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 80824D20  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80824D24  4B A4 2C 30 */	b cM_rndF__Ff
/* 80824D28  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80824D2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80824D30  FC 00 00 1E */	fctiwz f0, f0
/* 80824D34  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824D38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80824D3C  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
/* 80824D40  48 00 00 50 */	b lbl_80824D90
lbl_80824D44:
/* 80824D44  A8 1C 06 A6 */	lha r0, 0x6a6(r28)
/* 80824D48  2C 00 00 00 */	cmpwi r0, 0
/* 80824D4C  40 82 00 44 */	bne lbl_80824D90
/* 80824D50  7F 83 E3 78 */	mr r3, r28
/* 80824D54  38 80 00 0C */	li r4, 0xc
/* 80824D58  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80824D5C  38 A0 00 02 */	li r5, 2
/* 80824D60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80824D64  4B FF DA 2D */	bl anm_init__FP10e_yr_classifUcf
/* 80824D68  38 00 00 01 */	li r0, 1
/* 80824D6C  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 80824D70  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80824D74  4B A4 2B E0 */	b cM_rndF__Ff
/* 80824D78  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80824D7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80824D80  FC 00 00 1E */	fctiwz f0, f0
/* 80824D84  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824D88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80824D8C  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
lbl_80824D90:
/* 80824D90  38 7C 06 C4 */	addi r3, r28, 0x6c4
/* 80824D94  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80824D98  38 A0 00 04 */	li r5, 4
/* 80824D9C  38 C0 02 00 */	li r6, 0x200
/* 80824DA0  4B A4 B8 68 */	b cLib_addCalcAngleS2__FPssss
/* 80824DA4  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 80824DA8  2C 00 00 00 */	cmpwi r0, 0
/* 80824DAC  40 82 00 44 */	bne lbl_80824DF0
/* 80824DB0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80824DB4  4B A4 2B D8 */	b cM_rndFX__Ff
/* 80824DB8  D0 3C 06 BC */	stfs f1, 0x6bc(r28)
/* 80824DBC  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80824DC0  4B A4 2B 94 */	b cM_rndF__Ff
/* 80824DC4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80824DC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80824DCC  D0 1C 06 C0 */	stfs f0, 0x6c0(r28)
/* 80824DD0  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80824DD4  4B A4 2B 80 */	b cM_rndF__Ff
/* 80824DD8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80824DDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80824DE0  FC 00 00 1E */	fctiwz f0, f0
/* 80824DE4  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824DE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80824DEC  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
lbl_80824DF0:
/* 80824DF0  A8 1C 06 DE */	lha r0, 0x6de(r28)
/* 80824DF4  1C 00 00 C8 */	mulli r0, r0, 0xc8
/* 80824DF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80824DFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80824E00  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80824E04  7F C3 04 2E */	lfsx f30, r3, r0
/* 80824E08  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80824E0C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80824E10  80 63 00 00 */	lwz r3, 0(r3)
/* 80824E14  A8 9C 06 C4 */	lha r4, 0x6c4(r28)
/* 80824E18  4B 7E 75 C4 */	b mDoMtx_YrotS__FPA4_fs
/* 80824E1C  C0 1C 06 BC */	lfs f0, 0x6bc(r28)
/* 80824E20  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80824E24  C0 1C 06 C0 */	lfs f0, 0x6c0(r28)
/* 80824E28  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80824E2C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80824E30  EC 3F 10 28 */	fsubs f1, f31, f2
/* 80824E34  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80824E38  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80824E3C  EC 02 00 2A */	fadds f0, f2, f0
/* 80824E40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80824E44  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80824E48  38 61 00 50 */	addi r3, r1, 0x50
/* 80824E4C  38 81 00 44 */	addi r4, r1, 0x44
/* 80824E50  4B A4 C0 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80824E54  38 61 00 38 */	addi r3, r1, 0x38
/* 80824E58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80824E5C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80824E60  4B A4 1C 84 */	b __pl__4cXyzCFRC3Vec
/* 80824E64  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80824E68  D0 1C 06 80 */	stfs f0, 0x680(r28)
/* 80824E6C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80824E70  D0 1C 06 84 */	stfs f0, 0x684(r28)
/* 80824E74  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80824E78  D0 1C 06 88 */	stfs f0, 0x688(r28)
/* 80824E7C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80824E80  38 9C 06 80 */	addi r4, r28, 0x680
/* 80824E84  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80824E88  4B A4 1C AC */	b __mi__4cXyzCFRC3Vec
/* 80824E8C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80824E90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80824E94  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80824E98  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80824E9C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80824EA0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80824EA4  38 61 00 44 */	addi r3, r1, 0x44
/* 80824EA8  4B B2 22 90 */	b PSVECSquareMag
/* 80824EAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80824EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824EB4  40 81 00 58 */	ble lbl_80824F0C
/* 80824EB8  FC 00 08 34 */	frsqrte f0, f1
/* 80824EBC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80824EC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80824EC4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80824EC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80824ECC  FC 01 00 32 */	fmul f0, f1, f0
/* 80824ED0  FC 03 00 28 */	fsub f0, f3, f0
/* 80824ED4  FC 02 00 32 */	fmul f0, f2, f0
/* 80824ED8  FC 44 00 32 */	fmul f2, f4, f0
/* 80824EDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80824EE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80824EE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80824EE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80824EEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80824EF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80824EF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80824EF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80824EFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80824F00  FF C1 00 32 */	fmul f30, f1, f0
/* 80824F04  FF C0 F0 18 */	frsp f30, f30
/* 80824F08  48 00 00 90 */	b lbl_80824F98
lbl_80824F0C:
/* 80824F0C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80824F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80824F14  40 80 00 10 */	bge lbl_80824F24
/* 80824F18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80824F1C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80824F20  48 00 00 78 */	b lbl_80824F98
lbl_80824F24:
/* 80824F24  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80824F28  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80824F2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80824F30  3C 00 7F 80 */	lis r0, 0x7f80
/* 80824F34  7C 03 00 00 */	cmpw r3, r0
/* 80824F38  41 82 00 14 */	beq lbl_80824F4C
/* 80824F3C  40 80 00 40 */	bge lbl_80824F7C
/* 80824F40  2C 03 00 00 */	cmpwi r3, 0
/* 80824F44  41 82 00 20 */	beq lbl_80824F64
/* 80824F48  48 00 00 34 */	b lbl_80824F7C
lbl_80824F4C:
/* 80824F4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80824F50  41 82 00 0C */	beq lbl_80824F5C
/* 80824F54  38 00 00 01 */	li r0, 1
/* 80824F58  48 00 00 28 */	b lbl_80824F80
lbl_80824F5C:
/* 80824F5C  38 00 00 02 */	li r0, 2
/* 80824F60  48 00 00 20 */	b lbl_80824F80
lbl_80824F64:
/* 80824F64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80824F68  41 82 00 0C */	beq lbl_80824F74
/* 80824F6C  38 00 00 05 */	li r0, 5
/* 80824F70  48 00 00 10 */	b lbl_80824F80
lbl_80824F74:
/* 80824F74  38 00 00 03 */	li r0, 3
/* 80824F78  48 00 00 08 */	b lbl_80824F80
lbl_80824F7C:
/* 80824F7C  38 00 00 04 */	li r0, 4
lbl_80824F80:
/* 80824F80  2C 00 00 01 */	cmpwi r0, 1
/* 80824F84  40 82 00 10 */	bne lbl_80824F94
/* 80824F88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80824F8C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80824F90  48 00 00 08 */	b lbl_80824F98
lbl_80824F94:
/* 80824F94  FF C0 08 90 */	fmr f30, f1
lbl_80824F98:
/* 80824F98  A8 1C 06 A8 */	lha r0, 0x6a8(r28)
/* 80824F9C  2C 00 00 00 */	cmpwi r0, 0
/* 80824FA0  40 82 00 EC */	bne lbl_8082508C
/* 80824FA4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80824FA8  4B A4 29 AC */	b cM_rndF__Ff
/* 80824FAC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80824FB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80824FB4  FC 00 00 1E */	fctiwz f0, f0
/* 80824FB8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80824FBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80824FC0  B0 1C 06 A8 */	sth r0, 0x6a8(r28)
/* 80824FC4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80824FC8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80824FCC  40 80 00 18 */	bge lbl_80824FE4
/* 80824FD0  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80824FD4  EF FF 00 32 */	fmuls f31, f31, f0
/* 80824FD8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80824FDC  D0 1C 06 9C */	stfs f0, 0x69c(r28)
/* 80824FE0  48 00 00 14 */	b lbl_80824FF4
lbl_80824FE4:
/* 80824FE4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80824FE8  EF FF 00 32 */	fmuls f31, f31, f0
/* 80824FEC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80824FF0  D0 1C 06 9C */	stfs f0, 0x69c(r28)
lbl_80824FF4:
/* 80824FF4  D3 FC 06 8C */	stfs f31, 0x68c(r28)
/* 80824FF8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80824FFC  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 80825000  C0 3C 06 8C */	lfs f1, 0x68c(r28)
/* 80825004  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80825008  EC 21 00 28 */	fsubs f1, f1, f0
/* 8082500C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80825010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80825014  40 81 00 78 */	ble lbl_8082508C
/* 80825018  88 1C 06 7D */	lbz r0, 0x67d(r28)
/* 8082501C  2C 00 00 01 */	cmpwi r0, 1
/* 80825020  40 82 00 54 */	bne lbl_80825074
/* 80825024  38 00 00 02 */	li r0, 2
/* 80825028  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 8082502C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80825030  4B A4 29 24 */	b cM_rndF__Ff
/* 80825034  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80825038  EC 40 08 2A */	fadds f2, f0, f1
/* 8082503C  7F 83 E3 78 */	mr r3, r28
/* 80825040  38 80 00 08 */	li r4, 8
/* 80825044  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825048  38 A0 00 02 */	li r5, 2
/* 8082504C  4B FF D7 45 */	bl anm_init__FP10e_yr_classifUcf
/* 80825050  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80825054  4B A4 29 00 */	b cM_rndF__Ff
/* 80825058  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8082505C  EC 00 08 2A */	fadds f0, f0, f1
/* 80825060  FC 00 00 1E */	fctiwz f0, f0
/* 80825064  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80825068  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8082506C  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
/* 80825070  48 00 00 1C */	b lbl_8082508C
lbl_80825074:
/* 80825074  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80825078  4B A4 28 DC */	b cM_rndF__Ff
/* 8082507C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80825080  EC 00 08 2A */	fadds f0, f0, f1
/* 80825084  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80825088  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8082508C:
/* 8082508C  A8 1C 06 DE */	lha r0, 0x6de(r28)
/* 80825090  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80825094  40 82 00 2C */	bne lbl_808250C0
/* 80825098  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8082509C  4B A4 28 B8 */	b cM_rndF__Ff
/* 808250A0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808250A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808250A8  40 80 00 18 */	bge lbl_808250C0
/* 808250AC  7F 83 E3 78 */	mr r3, r28
/* 808250B0  38 80 00 19 */	li r4, 0x19
/* 808250B4  3C A0 00 07 */	lis r5, 0x0007 /* 0x000701BB@ha */
/* 808250B8  38 A5 01 BB */	addi r5, r5, 0x01BB /* 0x000701BB@l */
/* 808250BC  4B FF D7 8D */	bl kuti_open__FP10e_yr_classsUl
lbl_808250C0:
/* 808250C0  A8 1C 06 AA */	lha r0, 0x6aa(r28)
/* 808250C4  2C 00 00 00 */	cmpwi r0, 0
/* 808250C8  40 82 02 DC */	bne lbl_808253A4
/* 808250CC  38 61 00 20 */	addi r3, r1, 0x20
/* 808250D0  38 9E 05 38 */	addi r4, r30, 0x538
/* 808250D4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 808250D8  4B A4 1A 5C */	b __mi__4cXyzCFRC3Vec
/* 808250DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 808250E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 808250E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 808250E8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808250EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 808250F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808250F4  38 61 00 50 */	addi r3, r1, 0x50
/* 808250F8  4B B2 20 40 */	b PSVECSquareMag
/* 808250FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80825104  40 81 00 58 */	ble lbl_8082515C
/* 80825108  FC 00 08 34 */	frsqrte f0, f1
/* 8082510C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80825110  FC 44 00 32 */	fmul f2, f4, f0
/* 80825114  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80825118  FC 00 00 32 */	fmul f0, f0, f0
/* 8082511C  FC 01 00 32 */	fmul f0, f1, f0
/* 80825120  FC 03 00 28 */	fsub f0, f3, f0
/* 80825124  FC 02 00 32 */	fmul f0, f2, f0
/* 80825128  FC 44 00 32 */	fmul f2, f4, f0
/* 8082512C  FC 00 00 32 */	fmul f0, f0, f0
/* 80825130  FC 01 00 32 */	fmul f0, f1, f0
/* 80825134  FC 03 00 28 */	fsub f0, f3, f0
/* 80825138  FC 02 00 32 */	fmul f0, f2, f0
/* 8082513C  FC 44 00 32 */	fmul f2, f4, f0
/* 80825140  FC 00 00 32 */	fmul f0, f0, f0
/* 80825144  FC 01 00 32 */	fmul f0, f1, f0
/* 80825148  FC 03 00 28 */	fsub f0, f3, f0
/* 8082514C  FC 02 00 32 */	fmul f0, f2, f0
/* 80825150  FC 21 00 32 */	fmul f1, f1, f0
/* 80825154  FC 20 08 18 */	frsp f1, f1
/* 80825158  48 00 00 88 */	b lbl_808251E0
lbl_8082515C:
/* 8082515C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80825160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80825164  40 80 00 10 */	bge lbl_80825174
/* 80825168  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8082516C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80825170  48 00 00 70 */	b lbl_808251E0
lbl_80825174:
/* 80825174  D0 21 00 08 */	stfs f1, 8(r1)
/* 80825178  80 81 00 08 */	lwz r4, 8(r1)
/* 8082517C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80825180  3C 00 7F 80 */	lis r0, 0x7f80
/* 80825184  7C 03 00 00 */	cmpw r3, r0
/* 80825188  41 82 00 14 */	beq lbl_8082519C
/* 8082518C  40 80 00 40 */	bge lbl_808251CC
/* 80825190  2C 03 00 00 */	cmpwi r3, 0
/* 80825194  41 82 00 20 */	beq lbl_808251B4
/* 80825198  48 00 00 34 */	b lbl_808251CC
lbl_8082519C:
/* 8082519C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808251A0  41 82 00 0C */	beq lbl_808251AC
/* 808251A4  38 00 00 01 */	li r0, 1
/* 808251A8  48 00 00 28 */	b lbl_808251D0
lbl_808251AC:
/* 808251AC  38 00 00 02 */	li r0, 2
/* 808251B0  48 00 00 20 */	b lbl_808251D0
lbl_808251B4:
/* 808251B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808251B8  41 82 00 0C */	beq lbl_808251C4
/* 808251BC  38 00 00 05 */	li r0, 5
/* 808251C0  48 00 00 10 */	b lbl_808251D0
lbl_808251C4:
/* 808251C4  38 00 00 03 */	li r0, 3
/* 808251C8  48 00 00 08 */	b lbl_808251D0
lbl_808251CC:
/* 808251CC  38 00 00 04 */	li r0, 4
lbl_808251D0:
/* 808251D0  2C 00 00 01 */	cmpwi r0, 1
/* 808251D4  40 82 00 0C */	bne lbl_808251E0
/* 808251D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808251DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_808251E0:
/* 808251E0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 808251E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808251E8  40 80 01 BC */	bge lbl_808253A4
/* 808251EC  38 00 00 03 */	li r0, 3
/* 808251F0  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 808251F4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 808251F8  4B A4 27 5C */	b cM_rndF__Ff
/* 808251FC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80825200  EC 40 08 2A */	fadds f2, f0, f1
/* 80825204  7F 83 E3 78 */	mr r3, r28
/* 80825208  38 80 00 0A */	li r4, 0xa
/* 8082520C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825210  38 A0 00 02 */	li r5, 2
/* 80825214  4B FF D5 7D */	bl anm_init__FP10e_yr_classifUcf
/* 80825218  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701B8@ha */
/* 8082521C  38 03 01 B8 */	addi r0, r3, 0x01B8 /* 0x000701B8@l */
/* 80825220  90 01 00 10 */	stw r0, 0x10(r1)
/* 80825224  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 80825228  38 81 00 10 */	addi r4, r1, 0x10
/* 8082522C  38 A0 FF FF */	li r5, -1
/* 80825230  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 80825234  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80825238  7D 89 03 A6 */	mtctr r12
/* 8082523C  4E 80 04 21 */	bctrl 
/* 80825240  38 00 00 14 */	li r0, 0x14
/* 80825244  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
/* 80825248  48 00 01 5C */	b lbl_808253A4
lbl_8082524C:
/* 8082524C  3B A0 00 01 */	li r29, 1
/* 80825250  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 80825254  2C 00 00 00 */	cmpwi r0, 0
/* 80825258  40 82 01 4C */	bne lbl_808253A4
/* 8082525C  7F 83 E3 78 */	mr r3, r28
/* 80825260  38 80 00 09 */	li r4, 9
/* 80825264  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80825268  38 A0 00 00 */	li r5, 0
/* 8082526C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80825270  4B FF D5 21 */	bl anm_init__FP10e_yr_classifUcf
/* 80825274  38 00 00 04 */	li r0, 4
/* 80825278  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 8082527C  48 00 01 28 */	b lbl_808253A4
lbl_80825280:
/* 80825280  3B A0 00 01 */	li r29, 1
/* 80825284  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80825288  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082528C  80 63 00 00 */	lwz r3, 0(r3)
/* 80825290  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80825294  4B 7E 71 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80825298  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8082529C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 808252A0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808252A4  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 808252A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808252AC  38 61 00 50 */	addi r3, r1, 0x50
/* 808252B0  38 81 00 44 */	addi r4, r1, 0x44
/* 808252B4  4B A4 BC 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 808252B8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 808252BC  C0 3E 05 38 */	lfs f1, 0x538(r30)
/* 808252C0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 808252C4  EC 21 00 2A */	fadds f1, f1, f0
/* 808252C8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 808252CC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 808252D0  4B A4 A7 6C */	b cLib_addCalc2__FPffff
/* 808252D4  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 808252D8  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 808252DC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 808252E0  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 808252E4  4B A4 A7 58 */	b cLib_addCalc2__FPffff
/* 808252E8  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 808252EC  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 808252F0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 808252F4  EC 21 00 2A */	fadds f1, f1, f0
/* 808252F8  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 808252FC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80825300  4B A4 A7 3C */	b cLib_addCalc2__FPffff
/* 80825304  2C 1B 00 0A */	cmpwi r27, 0xa
/* 80825308  41 80 00 28 */	blt lbl_80825330
/* 8082530C  38 7C 0A 8C */	addi r3, r28, 0xa8c
/* 80825310  38 9C 0E 6C */	addi r4, r28, 0xe6c
/* 80825314  4B A4 A3 34 */	b SetC__8cM3dGSphFRC4cXyz
/* 80825318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082531C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80825320  38 63 23 3C */	addi r3, r3, 0x233c
/* 80825324  38 9C 09 68 */	addi r4, r28, 0x968
/* 80825328  4B A3 F8 80 */	b Set__4cCcSFP8cCcD_Obj
/* 8082532C  48 00 00 18 */	b lbl_80825344
lbl_80825330:
/* 80825330  38 7C 09 68 */	addi r3, r28, 0x968
/* 80825334  81 9C 09 A4 */	lwz r12, 0x9a4(r28)
/* 80825338  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8082533C  7D 89 03 A6 */	mtctr r12
/* 80825340  4E 80 04 21 */	bctrl 
lbl_80825344:
/* 80825344  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80825348  38 80 00 01 */	li r4, 1
/* 8082534C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80825350  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80825354  40 82 00 18 */	bne lbl_8082536C
/* 80825358  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8082535C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80825360  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80825364  41 82 00 08 */	beq lbl_8082536C
/* 80825368  38 80 00 00 */	li r4, 0
lbl_8082536C:
/* 8082536C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80825370  41 82 00 34 */	beq lbl_808253A4
/* 80825374  38 00 00 02 */	li r0, 2
/* 80825378  98 1C 06 7D */	stb r0, 0x67d(r28)
/* 8082537C  38 00 00 00 */	li r0, 0
/* 80825380  B0 1C 06 A6 */	sth r0, 0x6a6(r28)
/* 80825384  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80825388  4B A4 25 CC */	b cM_rndF__Ff
/* 8082538C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80825390  EC 00 08 2A */	fadds f0, f0, f1
/* 80825394  FC 00 00 1E */	fctiwz f0, f0
/* 80825398  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8082539C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 808253A0  B0 1C 06 AA */	sth r0, 0x6aa(r28)
lbl_808253A4:
/* 808253A4  7F A0 07 75 */	extsb. r0, r29
/* 808253A8  41 82 00 80 */	beq lbl_80825428
/* 808253AC  38 7C 06 C4 */	addi r3, r28, 0x6c4
/* 808253B0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 808253B4  38 A0 00 02 */	li r5, 2
/* 808253B8  38 C0 20 00 */	li r6, 0x2000
/* 808253BC  4B A4 B2 4C */	b cLib_addCalcAngleS2__FPssss
/* 808253C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808253C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808253C8  80 63 00 00 */	lwz r3, 0(r3)
/* 808253CC  A8 9C 06 C4 */	lha r4, 0x6c4(r28)
/* 808253D0  4B 7E 70 0C */	b mDoMtx_YrotS__FPA4_fs
/* 808253D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808253D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 808253DC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 808253E0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808253E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 808253E8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808253EC  38 61 00 50 */	addi r3, r1, 0x50
/* 808253F0  38 81 00 44 */	addi r4, r1, 0x44
/* 808253F4  4B A4 BA F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 808253F8  38 61 00 14 */	addi r3, r1, 0x14
/* 808253FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80825400  38 A1 00 44 */	addi r5, r1, 0x44
/* 80825404  4B A4 16 E0 */	b __pl__4cXyzCFRC3Vec
/* 80825408  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082540C  D0 1C 06 80 */	stfs f0, 0x680(r28)
/* 80825410  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80825414  D0 1C 06 84 */	stfs f0, 0x684(r28)
/* 80825418  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8082541C  D0 1C 06 88 */	stfs f0, 0x688(r28)
/* 80825420  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80825424  D0 1C 06 9C */	stfs f0, 0x69c(r28)
lbl_80825428:
/* 80825428  7F 83 E3 78 */	mr r3, r28
/* 8082542C  4B FF DA E1 */	bl e_yr_pos_move__FP10e_yr_class
/* 80825430  A8 1C 06 DE */	lha r0, 0x6de(r28)
/* 80825434  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80825438  40 82 00 24 */	bne lbl_8082545C
/* 8082543C  7F 83 E3 78 */	mr r3, r28
/* 80825440  4B FF D9 0D */	bl pl_horse_check__FP10e_yr_class
/* 80825444  2C 03 00 00 */	cmpwi r3, 0
/* 80825448  40 82 00 14 */	bne lbl_8082545C
/* 8082544C  38 00 00 03 */	li r0, 3
/* 80825450  98 1C 06 69 */	stb r0, 0x669(r28)
/* 80825454  38 00 00 00 */	li r0, 0
/* 80825458  98 1C 06 7D */	stb r0, 0x67d(r28)
lbl_8082545C:
/* 8082545C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80825460  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80825464  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80825468  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8082546C  39 61 00 80 */	addi r11, r1, 0x80
/* 80825470  4B B3 CD B0 */	b _restgpr_27
/* 80825474  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80825478  7C 08 03 A6 */	mtlr r0
/* 8082547C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80825480  4E 80 00 20 */	blr 
