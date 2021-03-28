lbl_80614B70:
/* 80614B70  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80614B74  7C 08 02 A6 */	mflr r0
/* 80614B78  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80614B7C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80614B80  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80614B84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80614B88  4B D4 D6 1C */	b _savegpr_15
/* 80614B8C  7C 7F 1B 78 */	mr r31, r3
/* 80614B90  3C 80 80 62 */	lis r4, lit_1109@ha
/* 80614B94  3B A4 B4 C0 */	addi r29, r4, lit_1109@l
/* 80614B98  3C 80 80 62 */	lis r4, lit_3772@ha
/* 80614B9C  3B C4 AD 84 */	addi r30, r4, lit_3772@l
/* 80614BA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80614BA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80614BA8  81 E4 5D AC */	lwz r15, 0x5dac(r4)
/* 80614BAC  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 80614BB0  2C 00 00 00 */	cmpwi r0, 0
/* 80614BB4  41 82 02 D0 */	beq lbl_80614E84
/* 80614BB8  3A 00 00 00 */	li r16, 0
/* 80614BBC  3A 20 00 01 */	li r17, 1
/* 80614BC0  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 80614BC4  60 00 00 01 */	ori r0, r0, 1
/* 80614BC8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80614BCC  A8 1F 47 52 */	lha r0, 0x4752(r31)
/* 80614BD0  2C 00 00 65 */	cmpwi r0, 0x65
/* 80614BD4  41 82 00 2C */	beq lbl_80614C00
/* 80614BD8  40 80 00 10 */	bge lbl_80614BE8
/* 80614BDC  2C 00 00 64 */	cmpwi r0, 0x64
/* 80614BE0  40 80 00 14 */	bge lbl_80614BF4
/* 80614BE4  48 00 00 34 */	b lbl_80614C18
lbl_80614BE8:
/* 80614BE8  2C 00 00 67 */	cmpwi r0, 0x67
/* 80614BEC  40 80 00 2C */	bge lbl_80614C18
/* 80614BF0  48 00 00 1C */	b lbl_80614C0C
lbl_80614BF4:
/* 80614BF4  4B FF E6 7D */	bl fish_normal__FP10b_ob_class
/* 80614BF8  7C 70 1B 78 */	mr r16, r3
/* 80614BFC  48 00 00 1C */	b lbl_80614C18
lbl_80614C00:
/* 80614C00  4B FF F2 01 */	bl fish_vacume__FP10b_ob_class
/* 80614C04  7C 70 1B 78 */	mr r16, r3
/* 80614C08  48 00 00 10 */	b lbl_80614C18
lbl_80614C0C:
/* 80614C0C  4B FF F6 1D */	bl fish_end__FP10b_ob_class
/* 80614C10  7C 70 1B 78 */	mr r16, r3
/* 80614C14  3A 20 00 00 */	li r17, 0
lbl_80614C18:
/* 80614C18  88 7F 47 4E */	lbz r3, 0x474e(r31)
/* 80614C1C  28 03 00 00 */	cmplwi r3, 0
/* 80614C20  41 82 00 0C */	beq lbl_80614C2C
/* 80614C24  38 03 FF FF */	addi r0, r3, -1
/* 80614C28  98 1F 47 4E */	stb r0, 0x474e(r31)
lbl_80614C2C:
/* 80614C2C  2C 11 00 00 */	cmpwi r17, 0
/* 80614C30  41 82 00 1C */	beq lbl_80614C4C
/* 80614C34  88 1F 47 4E */	lbz r0, 0x474e(r31)
/* 80614C38  28 00 00 00 */	cmplwi r0, 0
/* 80614C3C  40 82 00 10 */	bne lbl_80614C4C
/* 80614C40  38 00 00 04 */	li r0, 4
/* 80614C44  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80614C48  48 00 00 18 */	b lbl_80614C60
lbl_80614C4C:
/* 80614C4C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80614C50  54 00 00 3E */	slwi r0, r0, 0
/* 80614C54  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80614C58  38 00 00 00 */	li r0, 0
/* 80614C5C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80614C60:
/* 80614C60  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80614C64  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80614C68  38 A0 00 02 */	li r5, 2
/* 80614C6C  38 C0 08 00 */	li r6, 0x800
/* 80614C70  4B C5 B9 98 */	b cLib_addCalcAngleS2__FPssss
/* 80614C74  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80614C78  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80614C7C  38 A0 00 02 */	li r5, 2
/* 80614C80  38 C0 08 00 */	li r6, 0x800
/* 80614C84  4B C5 B9 84 */	b cLib_addCalcAngleS2__FPssss
/* 80614C88  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 80614C8C  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 80614C90  38 A0 00 02 */	li r5, 2
/* 80614C94  38 C0 08 00 */	li r6, 0x800
/* 80614C98  4B C5 B9 70 */	b cLib_addCalcAngleS2__FPssss
/* 80614C9C  3A 20 00 00 */	li r17, 0
/* 80614CA0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80614CA4  2C 10 00 00 */	cmpwi r16, 0
/* 80614CA8  40 82 00 10 */	bne lbl_80614CB8
/* 80614CAC  3A 20 02 BC */	li r17, 0x2bc
/* 80614CB0  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80614CB4  48 00 00 74 */	b lbl_80614D28
lbl_80614CB8:
/* 80614CB8  2C 10 00 01 */	cmpwi r16, 1
/* 80614CBC  40 82 00 10 */	bne lbl_80614CCC
/* 80614CC0  3A 20 06 40 */	li r17, 0x640
/* 80614CC4  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80614CC8  48 00 00 60 */	b lbl_80614D28
lbl_80614CCC:
/* 80614CCC  2C 10 00 02 */	cmpwi r16, 2
/* 80614CD0  40 82 00 10 */	bne lbl_80614CE0
/* 80614CD4  3A 20 03 E8 */	li r17, 0x3e8
/* 80614CD8  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80614CDC  48 00 00 4C */	b lbl_80614D28
lbl_80614CE0:
/* 80614CE0  2C 10 00 03 */	cmpwi r16, 3
/* 80614CE4  40 82 00 10 */	bne lbl_80614CF4
/* 80614CE8  3A 20 06 40 */	li r17, 0x640
/* 80614CEC  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80614CF0  48 00 00 38 */	b lbl_80614D28
lbl_80614CF4:
/* 80614CF4  2C 10 00 04 */	cmpwi r16, 4
/* 80614CF8  40 82 00 0C */	bne lbl_80614D04
/* 80614CFC  3A 20 02 BC */	li r17, 0x2bc
/* 80614D00  48 00 00 28 */	b lbl_80614D28
lbl_80614D04:
/* 80614D04  2C 10 00 05 */	cmpwi r16, 5
/* 80614D08  40 82 00 10 */	bne lbl_80614D18
/* 80614D0C  3A 20 03 E8 */	li r17, 0x3e8
/* 80614D10  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80614D14  48 00 00 14 */	b lbl_80614D28
lbl_80614D18:
/* 80614D18  2C 10 00 06 */	cmpwi r16, 6
/* 80614D1C  40 82 00 0C */	bne lbl_80614D28
/* 80614D20  3A 20 04 B0 */	li r17, 0x4b0
/* 80614D24  C0 3E 00 BC */	lfs f1, 0xbc(r30)
lbl_80614D28:
/* 80614D28  38 7F 47 C0 */	addi r3, r31, 0x47c0
/* 80614D2C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80614D30  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80614D34  4B C5 AD 08 */	b cLib_addCalc2__FPffff
/* 80614D38  38 7F 47 BC */	addi r3, r31, 0x47bc
/* 80614D3C  7E 24 8B 78 */	mr r4, r17
/* 80614D40  38 A0 00 01 */	li r5, 1
/* 80614D44  38 C0 00 14 */	li r6, 0x14
/* 80614D48  4B C5 B8 C0 */	b cLib_addCalcAngleS2__FPssss
/* 80614D4C  A8 7F 47 BA */	lha r3, 0x47ba(r31)
/* 80614D50  A8 1F 47 BC */	lha r0, 0x47bc(r31)
/* 80614D54  7C 03 02 14 */	add r0, r3, r0
/* 80614D58  B0 1F 47 BA */	sth r0, 0x47ba(r31)
/* 80614D5C  A8 1F 47 BA */	lha r0, 0x47ba(r31)
/* 80614D60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80614D64  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80614D68  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80614D6C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80614D70  C0 3F 47 C0 */	lfs f1, 0x47c0(r31)
/* 80614D74  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80614D78  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80614D7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80614D80  FC 00 00 1E */	fctiwz f0, f0
/* 80614D84  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80614D88  82 01 00 44 */	lwz r16, 0x44(r1)
/* 80614D8C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614D90  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80614D94  80 63 00 00 */	lwz r3, 0(r3)
/* 80614D98  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80614D9C  4B 9F 76 40 */	b mDoMtx_YrotS__FPA4_fs
/* 80614DA0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614DA4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80614DA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80614DAC  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80614DB0  4B 9F 75 EC */	b mDoMtx_XrotM__FPA4_fs
/* 80614DB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614DB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80614DBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80614DC0  7E 04 83 78 */	mr r4, r16
/* 80614DC4  4B 9F 76 70 */	b mDoMtx_YrotM__FPA4_fs
/* 80614DC8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80614DCC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80614DD0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80614DD4  C0 5F 5D 04 */	lfs f2, 0x5d04(r31)
/* 80614DD8  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80614DDC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80614DE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80614DE4  3A 5D 00 54 */	addi r18, r29, 0x54
/* 80614DE8  C0 12 00 10 */	lfs f0, 0x10(r18)
/* 80614DEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80614DF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80614DF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80614DF8  38 61 00 34 */	addi r3, r1, 0x34
/* 80614DFC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80614E00  4B C5 C0 EC */	b MtxPosition__FP4cXyzP4cXyz
/* 80614E04  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80614E08  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80614E0C  7C 65 1B 78 */	mr r5, r3
/* 80614E10  4B D3 22 80 */	b PSVECAdd
/* 80614E14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80614E18  7C 03 07 74 */	extsb r3, r0
/* 80614E1C  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070353@ha */
/* 80614E20  38 04 03 53 */	addi r0, r4, 0x0353 /* 0x00070353@l */
/* 80614E24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80614E28  4B A1 82 44 */	b dComIfGp_getReverb__Fi
/* 80614E2C  7C 71 1B 78 */	mr r17, r3
/* 80614E30  C0 5F 5D 04 */	lfs f2, 0x5d04(r31)
/* 80614E34  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80614E38  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80614E3C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80614E40  C0 12 00 10 */	lfs f0, 0x10(r18)
/* 80614E44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80614E48  EC 22 00 32 */	fmuls f1, f2, f0
/* 80614E4C  4B D4 D2 60 */	b __cvt_fp2unsigned
/* 80614E50  7C 65 1B 78 */	mr r5, r3
/* 80614E54  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 80614E58  38 81 00 0C */	addi r4, r1, 0xc
/* 80614E5C  7E 26 8B 78 */	mr r6, r17
/* 80614E60  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 80614E64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80614E68  7D 89 03 A6 */	mtctr r12
/* 80614E6C  4E 80 04 21 */	bctrl 
/* 80614E70  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80614E74  1C 00 00 06 */	mulli r0, r0, 6
/* 80614E78  7C 7F 02 14 */	add r3, r31, r0
/* 80614E7C  B2 03 3B 28 */	sth r16, 0x3b28(r3)
/* 80614E80  B2 1F 47 C4 */	sth r16, 0x47c4(r31)
lbl_80614E84:
/* 80614E84  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80614E88  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80614E8C  38 63 23 24 */	addi r3, r3, 0x2324
/* 80614E90  7C 7F 1A 14 */	add r3, r31, r3
/* 80614E94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80614E98  D0 03 00 00 */	stfs f0, 0(r3)
/* 80614E9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80614EA0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80614EA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80614EA8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80614EAC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80614EB0  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80614EB4  1C 00 00 06 */	mulli r0, r0, 6
/* 80614EB8  7C 7F 02 14 */	add r3, r31, r0
/* 80614EBC  B0 83 3B 26 */	sth r4, 0x3b26(r3)
/* 80614EC0  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80614EC4  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80614EC8  1C 00 00 06 */	mulli r0, r0, 6
/* 80614ECC  7C 7F 02 14 */	add r3, r31, r0
/* 80614ED0  B0 83 3B 24 */	sth r4, 0x3b24(r3)
/* 80614ED4  3B 9F 05 C0 */	addi r28, r31, 0x5c0
/* 80614ED8  3A C0 00 00 */	li r22, 0
/* 80614EDC  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 80614EE0  2C 00 00 00 */	cmpwi r0, 0
/* 80614EE4  40 82 00 14 */	bne lbl_80614EF8
/* 80614EE8  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 80614EEC  C0 1F 5D 04 */	lfs f0, 0x5d04(r31)
/* 80614EF0  EF E1 00 24 */	fdivs f31, f1, f0
/* 80614EF4  48 00 00 0C */	b lbl_80614F00
lbl_80614EF8:
/* 80614EF8  7F E3 FB 78 */	mr r3, r31
/* 80614EFC  4B FF F8 D9 */	bl dmcalc__FP10b_ob_class
lbl_80614F00:
/* 80614F00  3B 60 00 00 */	li r27, 0
/* 80614F04  3B 00 00 00 */	li r24, 0
/* 80614F08  3A BD 00 54 */	addi r21, r29, 0x54
/* 80614F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80614F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80614F14  3A E3 23 3C */	addi r23, r3, 0x233c
/* 80614F18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80614F1C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 80614F20  7F 54 D3 78 */	mr r20, r26
/* 80614F24  7F 53 D3 78 */	mr r19, r26
/* 80614F28  7F 52 D3 78 */	mr r18, r26
/* 80614F2C  7F 50 D3 78 */	mr r16, r26
/* 80614F30  48 00 06 D8 */	b lbl_80615608
lbl_80614F34:
/* 80614F34  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 80614F38  2C 00 00 00 */	cmpwi r0, 0
/* 80614F3C  40 82 01 48 */	bne lbl_80615084
/* 80614F40  2C 1B 00 01 */	cmpwi r27, 1
/* 80614F44  41 80 00 10 */	blt lbl_80614F54
/* 80614F48  3A C0 00 04 */	li r22, 4
/* 80614F4C  3A 20 00 00 */	li r17, 0
/* 80614F50  48 00 00 80 */	b lbl_80614FD0
lbl_80614F54:
/* 80614F54  A8 7F 47 B0 */	lha r3, 0x47b0(r31)
/* 80614F58  2C 03 00 64 */	cmpwi r3, 0x64
/* 80614F5C  40 82 00 18 */	bne lbl_80614F74
/* 80614F60  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80614F64  FC 00 00 1E */	fctiwz f0, f0
/* 80614F68  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80614F6C  82 21 00 44 */	lwz r17, 0x44(r1)
/* 80614F70  48 00 00 60 */	b lbl_80614FD0
lbl_80614F74:
/* 80614F74  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 80614F78  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 80614F7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80614F80  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80614F84  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80614F88  7C 64 04 2E */	lfsx f3, r4, r0
/* 80614F8C  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 80614F90  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80614F94  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80614F98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80614F9C  3C 00 43 30 */	lis r0, 0x4330
/* 80614FA0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80614FA4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80614FA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80614FAC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80614FB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80614FB4  FC 00 00 1E */	fctiwz f0, f0
/* 80614FB8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80614FBC  82 21 00 4C */	lwz r17, 0x4c(r1)
/* 80614FC0  7C 60 07 35 */	extsh. r0, r3
/* 80614FC4  41 82 00 0C */	beq lbl_80614FD0
/* 80614FC8  38 03 FF FF */	addi r0, r3, -1
/* 80614FCC  B0 1F 47 B0 */	sth r0, 0x47b0(r31)
lbl_80614FD0:
/* 80614FD0  3C 60 80 62 */	lis r3, buf_p@ha
/* 80614FD4  38 63 B0 D0 */	addi r3, r3, buf_p@l
/* 80614FD8  7C 03 C4 2E */	lfsx f0, r3, r24
/* 80614FDC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80614FE0  FC 00 00 1E */	fctiwz f0, f0
/* 80614FE4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80614FE8  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80614FEC  7E C3 07 34 */	extsh r3, r22
/* 80614FF0  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80614FF4  7C 03 00 50 */	subf r0, r3, r0
/* 80614FF8  7C 04 00 50 */	subf r0, r4, r0
/* 80614FFC  54 04 05 FE */	clrlwi r4, r0, 0x17
/* 80615000  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80615004  7C 7F 02 14 */	add r3, r31, r0
/* 80615008  C0 03 23 24 */	lfs f0, 0x2324(r3)
/* 8061500C  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80615010  C0 03 23 28 */	lfs f0, 0x2328(r3)
/* 80615014  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 80615018  C0 03 23 2C */	lfs f0, 0x232c(r3)
/* 8061501C  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 80615020  A8 7C 00 22 */	lha r3, 0x22(r28)
/* 80615024  A8 1C 00 24 */	lha r0, 0x24(r28)
/* 80615028  7C 03 02 14 */	add r0, r3, r0
/* 8061502C  B0 1C 00 26 */	sth r0, 0x26(r28)
/* 80615030  1C 04 00 06 */	mulli r0, r4, 6
/* 80615034  7C 7F 02 14 */	add r3, r31, r0
/* 80615038  A8 03 3B 24 */	lha r0, 0x3b24(r3)
/* 8061503C  B0 1C 00 20 */	sth r0, 0x20(r28)
/* 80615040  A8 03 3B 26 */	lha r0, 0x3b26(r3)
/* 80615044  B0 1C 00 22 */	sth r0, 0x22(r28)
/* 80615048  A8 03 3B 28 */	lha r0, 0x3b28(r3)
/* 8061504C  B0 1C 00 24 */	sth r0, 0x24(r28)
/* 80615050  C0 35 00 10 */	lfs f1, 0x10(r21)
/* 80615054  3C 60 80 62 */	lis r3, size_p@ha
/* 80615058  38 63 B1 1C */	addi r3, r3, size_p@l
/* 8061505C  7C 03 C4 2E */	lfsx f0, r3, r24
/* 80615060  EC 01 00 32 */	fmuls f0, f1, f0
/* 80615064  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 80615068  A8 7C 00 22 */	lha r3, 0x22(r28)
/* 8061506C  A8 1C 00 24 */	lha r0, 0x24(r28)
/* 80615070  7C 63 02 14 */	add r3, r3, r0
/* 80615074  A8 1C 00 26 */	lha r0, 0x26(r28)
/* 80615078  7C 03 00 50 */	subf r0, r3, r0
/* 8061507C  7C 19 07 34 */	extsh r25, r0
/* 80615080  48 00 00 1C */	b lbl_8061509C
lbl_80615084:
/* 80615084  3A 20 00 00 */	li r17, 0
/* 80615088  A8 7C 00 22 */	lha r3, 0x22(r28)
/* 8061508C  A8 1C 00 26 */	lha r0, 0x26(r28)
/* 80615090  7C 03 00 50 */	subf r0, r3, r0
/* 80615094  7C 00 00 D0 */	neg r0, r0
/* 80615098  7C 19 07 34 */	extsh r25, r0
lbl_8061509C:
/* 8061509C  7F 43 D3 78 */	mr r3, r26
/* 806150A0  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 806150A4  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 806150A8  C0 7C 00 1C */	lfs f3, 0x1c(r28)
/* 806150AC  4B D3 18 3C */	b PSMTXTrans
/* 806150B0  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 806150B4  FC 40 08 90 */	fmr f2, f1
/* 806150B8  FC 60 08 90 */	fmr f3, f1
/* 806150BC  4B 9F 7D 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 806150C0  7F 43 D3 78 */	mr r3, r26
/* 806150C4  A8 9C 00 22 */	lha r4, 0x22(r28)
/* 806150C8  4B 9F 73 6C */	b mDoMtx_YrotM__FPA4_fs
/* 806150CC  7E 83 A3 78 */	mr r3, r20
/* 806150D0  A8 1C 00 20 */	lha r0, 0x20(r28)
/* 806150D4  7C 00 8A 14 */	add r0, r0, r17
/* 806150D8  7C 04 07 34 */	extsh r4, r0
/* 806150DC  4B 9F 72 C0 */	b mDoMtx_XrotM__FPA4_fs
/* 806150E0  7E 63 9B 78 */	mr r3, r19
/* 806150E4  A8 9C 00 24 */	lha r4, 0x24(r28)
/* 806150E8  4B 9F 73 4C */	b mDoMtx_YrotM__FPA4_fs
/* 806150EC  7E 43 93 78 */	mr r3, r18
/* 806150F0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806150F4  4B 9F 73 D8 */	b mDoMtx_ZrotM__FPA4_fs
/* 806150F8  2C 1B 00 00 */	cmpwi r27, 0
/* 806150FC  40 82 00 28 */	bne lbl_80615124
/* 80615100  4B 9F 7B C8 */	b push__14mDoMtx_stack_cFv
/* 80615104  38 7F 47 AE */	addi r3, r31, 0x47ae
/* 80615108  1C 19 00 07 */	mulli r0, r25, 7
/* 8061510C  7C 04 07 34 */	extsh r4, r0
/* 80615110  38 A0 00 04 */	li r5, 4
/* 80615114  38 C0 04 00 */	li r6, 0x400
/* 80615118  4B C5 B4 F0 */	b cLib_addCalcAngleS2__FPssss
/* 8061511C  4B 9F 7B F8 */	b pop__14mDoMtx_stack_cFv
/* 80615120  48 00 00 AC */	b lbl_806151CC
lbl_80615124:
/* 80615124  2C 1B 00 12 */	cmpwi r27, 0x12
/* 80615128  40 82 00 A4 */	bne lbl_806151CC
/* 8061512C  38 60 00 00 */	li r3, 0
/* 80615130  38 80 00 00 */	li r4, 0
/* 80615134  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80615138  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 8061513C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80615140  38 00 00 03 */	li r0, 3
/* 80615144  7C 09 03 A6 */	mtctr r0
lbl_80615148:
/* 80615148  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 8061514C  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80615150  7C 00 22 14 */	add r0, r0, r4
/* 80615154  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80615158  7C 06 04 2E */	lfsx f0, r6, r0
/* 8061515C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80615160  FC 00 00 1E */	fctiwz f0, f0
/* 80615164  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80615168  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8061516C  38 03 47 A4 */	addi r0, r3, 0x47a4
/* 80615170  7C BF 03 2E */	sthx r5, r31, r0
/* 80615174  38 63 00 02 */	addi r3, r3, 2
/* 80615178  38 84 D1 20 */	addi r4, r4, -12000
/* 8061517C  42 00 FF CC */	bdnz lbl_80615148
/* 80615180  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 80615184  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 80615188  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061518C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80615190  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80615194  7C 23 04 2E */	lfsx f1, r3, r0
/* 80615198  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8061519C  EC 00 00 72 */	fmuls f0, f0, f1
/* 806151A0  FC 00 00 1E */	fctiwz f0, f0
/* 806151A4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806151A8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806151AC  B0 1F 47 AA */	sth r0, 0x47aa(r31)
/* 806151B0  38 7F 47 AC */	addi r3, r31, 0x47ac
/* 806151B4  7F 20 07 34 */	extsh r0, r25
/* 806151B8  54 00 10 3A */	slwi r0, r0, 2
/* 806151BC  7C 04 07 34 */	extsh r4, r0
/* 806151C0  38 A0 00 04 */	li r5, 4
/* 806151C4  38 C0 04 00 */	li r6, 0x400
/* 806151C8  4B C5 B4 40 */	b cLib_addCalcAngleS2__FPssss
lbl_806151CC:
/* 806151CC  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 806151D0  2C 00 00 00 */	cmpwi r0, 0
/* 806151D4  40 82 00 3C */	bne lbl_80615210
/* 806151D8  2C 1B 00 12 */	cmpwi r27, 0x12
/* 806151DC  40 82 00 18 */	bne lbl_806151F4
/* 806151E0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806151E4  FC 40 08 90 */	fmr f2, f1
/* 806151E8  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 806151EC  4B 9F 7B B0 */	b transM__14mDoMtx_stack_cFfff
/* 806151F0  48 00 00 54 */	b lbl_80615244
lbl_806151F4:
/* 806151F4  2C 1B 00 00 */	cmpwi r27, 0
/* 806151F8  41 82 00 4C */	beq lbl_80615244
/* 806151FC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615200  FC 40 08 90 */	fmr f2, f1
/* 80615204  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 80615208  4B 9F 7B 94 */	b transM__14mDoMtx_stack_cFfff
/* 8061520C  48 00 00 38 */	b lbl_80615244
lbl_80615210:
/* 80615210  2C 1B 00 12 */	cmpwi r27, 0x12
/* 80615214  40 82 00 18 */	bne lbl_8061522C
/* 80615218  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8061521C  FC 40 08 90 */	fmr f2, f1
/* 80615220  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80615224  4B 9F 7B 78 */	b transM__14mDoMtx_stack_cFfff
/* 80615228  48 00 00 1C */	b lbl_80615244
lbl_8061522C:
/* 8061522C  2C 1B 00 00 */	cmpwi r27, 0
/* 80615230  41 82 00 14 */	beq lbl_80615244
/* 80615234  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615238  FC 40 08 90 */	fmr f2, f1
/* 8061523C  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 80615240  4B 9F 7B 5C */	b transM__14mDoMtx_stack_cFfff
lbl_80615244:
/* 80615244  2C 1B 00 00 */	cmpwi r27, 0
/* 80615248  40 82 00 64 */	bne lbl_806152AC
/* 8061524C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80615250  38 80 00 00 */	li r4, 0
/* 80615254  38 A0 00 00 */	li r5, 0
/* 80615258  38 C0 00 00 */	li r6, 0
/* 8061525C  4B 9F B3 6C */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80615260  80 1F 47 34 */	lwz r0, 0x4734(r31)
/* 80615264  2C 00 00 16 */	cmpwi r0, 0x16
/* 80615268  40 82 00 44 */	bne lbl_806152AC
/* 8061526C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80615270  38 63 00 0C */	addi r3, r3, 0xc
/* 80615274  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80615278  4B D1 31 B4 */	b checkPass__12J3DFrameCtrlFf
/* 8061527C  2C 03 00 00 */	cmpwi r3, 0
/* 80615280  41 82 00 2C */	beq lbl_806152AC
/* 80615284  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070351@ha */
/* 80615288  38 03 03 51 */	addi r0, r3, 0x0351 /* 0x00070351@l */
/* 8061528C  90 01 00 08 */	stw r0, 8(r1)
/* 80615290  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 80615294  38 81 00 08 */	addi r4, r1, 8
/* 80615298  38 A0 FF FF */	li r5, -1
/* 8061529C  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 806152A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806152A4  7D 89 03 A6 */	mtctr r12
/* 806152A8  4E 80 04 21 */	bctrl 
lbl_806152AC:
/* 806152AC  80 7C 00 00 */	lwz r3, 0(r28)
/* 806152B0  80 83 00 04 */	lwz r4, 4(r3)
/* 806152B4  7E 03 83 78 */	mr r3, r16
/* 806152B8  38 84 00 24 */	addi r4, r4, 0x24
/* 806152BC  4B D3 11 F4 */	b PSMTXCopy
/* 806152C0  80 7C 00 00 */	lwz r3, 0(r28)
/* 806152C4  4B 9F B3 E8 */	b modelCalc__14mDoExt_McaMorfFv
/* 806152C8  2C 1B 00 00 */	cmpwi r27, 0
/* 806152CC  40 82 00 74 */	bne lbl_80615340
/* 806152D0  C0 3F 47 30 */	lfs f1, 0x4730(r31)
/* 806152D4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806152D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806152DC  40 81 00 64 */	ble lbl_80615340
/* 806152E0  80 7F 47 2C */	lwz r3, 0x472c(r31)
/* 806152E4  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 806152E8  80 7F 47 28 */	lwz r3, 0x4728(r31)
/* 806152EC  4B 9F 81 3C */	b play__14mDoExt_baseAnmFv
/* 806152F0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806152F4  80 63 00 04 */	lwz r3, 4(r3)
/* 806152F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806152FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80615300  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80615304  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80615308  4B D3 11 A8 */	b PSMTXCopy
/* 8061530C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80615310  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615314  38 80 40 00 */	li r4, 0x4000
/* 80615318  4B 9F 70 84 */	b mDoMtx_XrotM__FPA4_fs
/* 8061531C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615320  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80615324  FC 60 08 90 */	fmr f3, f1
/* 80615328  4B 9F 7A 74 */	b transM__14mDoMtx_stack_cFfff
/* 8061532C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80615330  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615334  80 9F 47 24 */	lwz r4, 0x4724(r31)
/* 80615338  38 84 00 24 */	addi r4, r4, 0x24
/* 8061533C  4B D3 11 74 */	b PSMTXCopy
lbl_80615340:
/* 80615340  2C 1B 00 04 */	cmpwi r27, 4
/* 80615344  41 80 00 A0 */	blt lbl_806153E4
/* 80615348  2C 1B 00 11 */	cmpwi r27, 0x11
/* 8061534C  41 81 00 98 */	bgt lbl_806153E4
/* 80615350  93 7D 00 74 */	stw r27, 0x74(r29)
/* 80615354  38 00 00 00 */	li r0, 0
/* 80615358  90 1D 00 78 */	stw r0, 0x78(r29)
/* 8061535C  88 1C 00 3E */	lbz r0, 0x3e(r28)
/* 80615360  7C 00 07 75 */	extsb. r0, r0
/* 80615364  40 82 00 1C */	bne lbl_80615380
/* 80615368  38 7C 00 2C */	addi r3, r28, 0x2c
/* 8061536C  38 80 F0 60 */	li r4, -4000
/* 80615370  38 A0 00 20 */	li r5, 0x20
/* 80615374  38 C0 00 28 */	li r6, 0x28
/* 80615378  4B C5 B2 90 */	b cLib_addCalcAngleS2__FPssss
/* 8061537C  48 00 00 18 */	b lbl_80615394
lbl_80615380:
/* 80615380  38 7C 00 2C */	addi r3, r28, 0x2c
/* 80615384  38 80 00 00 */	li r4, 0
/* 80615388  38 A0 00 08 */	li r5, 8
/* 8061538C  38 C0 00 64 */	li r6, 0x64
/* 80615390  4B C5 B2 78 */	b cLib_addCalcAngleS2__FPssss
lbl_80615394:
/* 80615394  38 7C 00 2E */	addi r3, r28, 0x2e
/* 80615398  1C 19 00 07 */	mulli r0, r25, 7
/* 8061539C  7C 04 07 34 */	extsh r4, r0
/* 806153A0  38 A0 00 04 */	li r5, 4
/* 806153A4  38 C0 04 00 */	li r6, 0x400
/* 806153A8  4B C5 B2 60 */	b cLib_addCalcAngleS2__FPssss
/* 806153AC  4B 9F 79 1C */	b push__14mDoMtx_stack_cFv
/* 806153B0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806153B4  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 806153B8  C0 7E 01 48 */	lfs f3, 0x148(r30)
/* 806153BC  4B 9F 79 E0 */	b transM__14mDoMtx_stack_cFfff
/* 806153C0  80 7C 00 04 */	lwz r3, 4(r28)
/* 806153C4  80 83 00 04 */	lwz r4, 4(r3)
/* 806153C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806153CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806153D0  38 84 00 24 */	addi r4, r4, 0x24
/* 806153D4  4B D3 10 DC */	b PSMTXCopy
/* 806153D8  80 7C 00 04 */	lwz r3, 4(r28)
/* 806153DC  4B 9F B2 D0 */	b modelCalc__14mDoExt_McaMorfFv
/* 806153E0  4B 9F 79 34 */	b pop__14mDoMtx_stack_cFv
lbl_806153E4:
/* 806153E4  2C 1B 00 07 */	cmpwi r27, 7
/* 806153E8  41 80 00 60 */	blt lbl_80615448
/* 806153EC  2C 1B 00 0F */	cmpwi r27, 0xf
/* 806153F0  41 81 00 58 */	bgt lbl_80615448
/* 806153F4  93 7D 00 74 */	stw r27, 0x74(r29)
/* 806153F8  38 00 00 01 */	li r0, 1
/* 806153FC  90 1D 00 78 */	stw r0, 0x78(r29)
/* 80615400  4B 9F 78 C8 */	b push__14mDoMtx_stack_cFv
/* 80615404  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615408  C0 5E 01 4C */	lfs f2, 0x14c(r30)
/* 8061540C  C0 7E 01 50 */	lfs f3, 0x150(r30)
/* 80615410  4B 9F 79 8C */	b transM__14mDoMtx_stack_cFfff
/* 80615414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80615418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061541C  38 80 80 00 */	li r4, -32768
/* 80615420  4B 9F 70 AC */	b mDoMtx_ZrotM__FPA4_fs
/* 80615424  80 7C 00 08 */	lwz r3, 8(r28)
/* 80615428  80 83 00 04 */	lwz r4, 4(r3)
/* 8061542C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80615430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615434  38 84 00 24 */	addi r4, r4, 0x24
/* 80615438  4B D3 10 78 */	b PSMTXCopy
/* 8061543C  80 7C 00 08 */	lwz r3, 8(r28)
/* 80615440  4B 9F B2 6C */	b modelCalc__14mDoExt_McaMorfFv
/* 80615444  4B 9F 78 D0 */	b pop__14mDoMtx_stack_cFv
lbl_80615448:
/* 80615448  2C 1B 00 08 */	cmpwi r27, 8
/* 8061544C  40 82 00 58 */	bne lbl_806154A4
/* 80615450  93 7D 00 74 */	stw r27, 0x74(r29)
/* 80615454  38 7C 00 34 */	addi r3, r28, 0x34
/* 80615458  1C 19 00 07 */	mulli r0, r25, 7
/* 8061545C  7C 04 07 34 */	extsh r4, r0
/* 80615460  38 A0 00 04 */	li r5, 4
/* 80615464  38 C0 04 00 */	li r6, 0x400
/* 80615468  4B C5 B1 A0 */	b cLib_addCalcAngleS2__FPssss
/* 8061546C  4B 9F 78 5C */	b push__14mDoMtx_stack_cFv
/* 80615470  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615474  C0 5E 01 54 */	lfs f2, 0x154(r30)
/* 80615478  FC 60 10 90 */	fmr f3, f2
/* 8061547C  4B 9F 79 20 */	b transM__14mDoMtx_stack_cFfff
/* 80615480  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80615484  80 83 00 04 */	lwz r4, 4(r3)
/* 80615488  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061548C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615490  38 84 00 24 */	addi r4, r4, 0x24
/* 80615494  4B D3 10 1C */	b PSMTXCopy
/* 80615498  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8061549C  4B 9F B2 10 */	b modelCalc__14mDoExt_McaMorfFv
/* 806154A0  4B 9F 78 74 */	b pop__14mDoMtx_stack_cFv
lbl_806154A4:
/* 806154A4  2C 1B 00 11 */	cmpwi r27, 0x11
/* 806154A8  40 82 00 58 */	bne lbl_80615500
/* 806154AC  93 7D 00 74 */	stw r27, 0x74(r29)
/* 806154B0  38 7C 00 3A */	addi r3, r28, 0x3a
/* 806154B4  1C 19 00 0D */	mulli r0, r25, 0xd
/* 806154B8  7C 04 07 34 */	extsh r4, r0
/* 806154BC  38 A0 00 04 */	li r5, 4
/* 806154C0  38 C0 04 00 */	li r6, 0x400
/* 806154C4  4B C5 B1 44 */	b cLib_addCalcAngleS2__FPssss
/* 806154C8  4B 9F 78 00 */	b push__14mDoMtx_stack_cFv
/* 806154CC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806154D0  C0 5E 01 58 */	lfs f2, 0x158(r30)
/* 806154D4  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 806154D8  4B 9F 78 C4 */	b transM__14mDoMtx_stack_cFfff
/* 806154DC  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 806154E0  80 83 00 04 */	lwz r4, 4(r3)
/* 806154E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806154E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806154EC  38 84 00 24 */	addi r4, r4, 0x24
/* 806154F0  4B D3 0F C0 */	b PSMTXCopy
/* 806154F4  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 806154F8  4B 9F B1 B4 */	b modelCalc__14mDoExt_McaMorfFv
/* 806154FC  4B 9F 78 18 */	b pop__14mDoMtx_stack_cFv
lbl_80615500:
/* 80615500  2C 1B 00 00 */	cmpwi r27, 0
/* 80615504  40 82 00 AC */	bne lbl_806155B0
/* 80615508  80 7C 00 00 */	lwz r3, 0(r28)
/* 8061550C  80 63 00 04 */	lwz r3, 4(r3)
/* 80615510  38 63 00 24 */	addi r3, r3, 0x24
/* 80615514  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80615518  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8061551C  80 84 00 00 */	lwz r4, 0(r4)
/* 80615520  4B D3 0F 90 */	b PSMTXCopy
/* 80615524  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80615528  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8061552C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80615530  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80615534  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80615538  38 61 00 34 */	addi r3, r1, 0x34
/* 8061553C  38 81 00 28 */	addi r4, r1, 0x28
/* 80615540  4B C5 B9 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80615544  38 7C 01 64 */	addi r3, r28, 0x164
/* 80615548  38 81 00 28 */	addi r4, r1, 0x28
/* 8061554C  4B C5 A0 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 80615550  38 7C 01 64 */	addi r3, r28, 0x164
/* 80615554  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 80615558  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 8061555C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80615560  4B C5 A1 A8 */	b SetR__8cM3dGSphFf
/* 80615564  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80615568  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8061556C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80615570  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80615574  38 61 00 34 */	addi r3, r1, 0x34
/* 80615578  38 81 00 28 */	addi r4, r1, 0x28
/* 8061557C  4B C5 B9 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 80615580  38 7F 4D 38 */	addi r3, r31, 0x4d38
/* 80615584  38 81 00 28 */	addi r4, r1, 0x28
/* 80615588  4B C5 A0 C0 */	b SetC__8cM3dGSphFRC4cXyz
/* 8061558C  38 7F 4D 38 */	addi r3, r31, 0x4d38
/* 80615590  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 80615594  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 80615598  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061559C  4B C5 A1 6C */	b SetR__8cM3dGSphFf
/* 806155A0  7E E3 BB 78 */	mr r3, r23
/* 806155A4  38 9F 4C 14 */	addi r4, r31, 0x4c14
/* 806155A8  4B C4 F6 00 */	b Set__4cCcSFP8cCcD_Obj
/* 806155AC  48 00 00 44 */	b lbl_806155F0
lbl_806155B0:
/* 806155B0  38 7C 01 64 */	addi r3, r28, 0x164
/* 806155B4  38 9C 00 14 */	addi r4, r28, 0x14
/* 806155B8  4B C5 A0 90 */	b SetC__8cM3dGSphFRC4cXyz
/* 806155BC  2C 1B 00 12 */	cmpwi r27, 0x12
/* 806155C0  41 82 00 1C */	beq lbl_806155DC
/* 806155C4  38 7C 01 64 */	addi r3, r28, 0x164
/* 806155C8  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 806155CC  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 806155D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806155D4  4B C5 A1 34 */	b SetR__8cM3dGSphFf
/* 806155D8  48 00 00 18 */	b lbl_806155F0
lbl_806155DC:
/* 806155DC  38 7C 01 64 */	addi r3, r28, 0x164
/* 806155E0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806155E4  C0 1C 00 28 */	lfs f0, 0x28(r28)
/* 806155E8  EC 21 00 32 */	fmuls f1, f1, f0
/* 806155EC  4B C5 A1 1C */	b SetR__8cM3dGSphFf
lbl_806155F0:
/* 806155F0  7E E3 BB 78 */	mr r3, r23
/* 806155F4  38 9C 00 40 */	addi r4, r28, 0x40
/* 806155F8  4B C4 F5 B0 */	b Set__4cCcSFP8cCcD_Obj
/* 806155FC  3B 7B 00 01 */	addi r27, r27, 1
/* 80615600  3B 18 00 04 */	addi r24, r24, 4
/* 80615604  3B 9C 01 78 */	addi r28, r28, 0x178
lbl_80615608:
/* 80615608  2C 1B 00 13 */	cmpwi r27, 0x13
/* 8061560C  40 80 00 10 */	bge lbl_8061561C
/* 80615610  88 1C 00 3F */	lbz r0, 0x3f(r28)
/* 80615614  7C 00 07 75 */	extsb. r0, r0
/* 80615618  41 82 F9 1C */	beq lbl_80614F34
lbl_8061561C:
/* 8061561C  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 80615620  2C 00 00 00 */	cmpwi r0, 0
/* 80615624  41 82 00 1C */	beq lbl_80615640
/* 80615628  80 7F 23 20 */	lwz r3, 0x2320(r31)
/* 8061562C  38 03 00 01 */	addi r0, r3, 1
/* 80615630  90 1F 23 20 */	stw r0, 0x2320(r31)
/* 80615634  80 1F 23 20 */	lwz r0, 0x2320(r31)
/* 80615638  54 00 05 FE */	clrlwi r0, r0, 0x17
/* 8061563C  90 1F 23 20 */	stw r0, 0x2320(r31)
lbl_80615640:
/* 80615640  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 80615644  C0 15 00 10 */	lfs f0, 0x10(r21)
/* 80615648  EF E1 00 32 */	fmuls f31, f1, f0
/* 8061564C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80615650  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80615654  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80615658  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 8061565C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80615660  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80615664  38 7F 4D 8C */	addi r3, r31, 0x4d8c
/* 80615668  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8061566C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80615670  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80615674  4B A6 14 38 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80615678  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8061567C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80615680  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80615684  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80615688  EC 00 F8 2A */	fadds f0, f0, f31
/* 8061568C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80615690  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80615694  80 63 00 04 */	lwz r3, 4(r3)
/* 80615698  38 63 00 24 */	addi r3, r3, 0x24
/* 8061569C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806156A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806156A4  4B D3 0E 0C */	b PSMTXCopy
/* 806156A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806156AC  C0 5E 01 6C */	lfs f2, 0x16c(r30)
/* 806156B0  C0 7E 01 70 */	lfs f3, 0x170(r30)
/* 806156B4  4B 9F 76 E8 */	b transM__14mDoMtx_stack_cFfff
/* 806156B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806156BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806156C0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 806156C4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806156C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806156CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806156D0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806156D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806156D8  D0 3F 05 38 */	stfs f1, 0x538(r31)
/* 806156DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806156E0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806156E4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806156E8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806156EC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806156F0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806156F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806156F8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806156FC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80615700  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80615704  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80615708  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8061570C  EC 01 00 2A */	fadds f0, f1, f0
/* 80615710  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80615714  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 80615718  2C 00 00 15 */	cmpwi r0, 0x15
/* 8061571C  41 82 00 0C */	beq lbl_80615728
/* 80615720  2C 00 00 16 */	cmpwi r0, 0x16
/* 80615724  40 82 00 3C */	bne lbl_80615760
lbl_80615728:
/* 80615728  38 61 00 1C */	addi r3, r1, 0x1c
/* 8061572C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80615730  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80615734  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80615738  38 84 00 D8 */	addi r4, r4, 0xd8
/* 8061573C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80615740  4B C5 13 F4 */	b __mi__4cXyzCFRC3Vec
/* 80615744  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80615748  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8061574C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80615750  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80615754  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80615758  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8061575C  48 00 00 2C */	b lbl_80615788
lbl_80615760:
/* 80615760  38 61 00 10 */	addi r3, r1, 0x10
/* 80615764  38 8F 05 38 */	addi r4, r15, 0x538
/* 80615768  38 A1 00 28 */	addi r5, r1, 0x28
/* 8061576C  4B C5 13 C8 */	b __mi__4cXyzCFRC3Vec
/* 80615770  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80615774  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80615778  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8061577C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80615780  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80615784  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80615788:
/* 80615788  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8061578C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80615790  4B C5 1E E4 */	b cM_atan2s__Fff
/* 80615794  7C 03 00 D0 */	neg r0, r3
/* 80615798  7C 0F 07 34 */	extsh r15, r0
/* 8061579C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806157A0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806157A4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806157A8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806157AC  EC 41 00 2A */	fadds f2, f1, f0
/* 806157B0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806157B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806157B8  40 81 00 0C */	ble lbl_806157C4
/* 806157BC  FC 00 10 34 */	frsqrte f0, f2
/* 806157C0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806157C4:
/* 806157C4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806157C8  4B C5 1E AC */	b cM_atan2s__Fff
/* 806157CC  7C 70 07 34 */	extsh r16, r3
/* 806157D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806157D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806157D8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 806157DC  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 806157E0  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 806157E4  4B D3 11 04 */	b PSMTXTrans
/* 806157E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806157EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806157F0  7D E4 7B 78 */	mr r4, r15
/* 806157F4  4B 9F 6B A8 */	b mDoMtx_XrotM__FPA4_fs
/* 806157F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806157FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615800  7E 04 83 78 */	mr r4, r16
/* 80615804  4B 9F 6C 30 */	b mDoMtx_YrotM__FPA4_fs
/* 80615808  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 8061580C  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80615810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80615814  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80615818  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8061581C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80615820  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 80615824  EC 01 00 32 */	fmuls f0, f1, f0
/* 80615828  EC 01 00 2A */	fadds f0, f1, f0
/* 8061582C  D0 1F 47 40 */	stfs f0, 0x4740(r31)
/* 80615830  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80615834  80 83 00 04 */	lwz r4, 4(r3)
/* 80615838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061583C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615840  38 84 00 24 */	addi r4, r4, 0x24
/* 80615844  4B D3 0C 6C */	b PSMTXCopy
/* 80615848  C0 1F 47 40 */	lfs f0, 0x4740(r31)
/* 8061584C  FC 00 00 1E */	fctiwz f0, f0
/* 80615850  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80615854  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80615858  7C 00 07 34 */	extsh r0, r0
/* 8061585C  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80615860  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80615864  90 01 00 44 */	stw r0, 0x44(r1)
/* 80615868  3C 00 43 30 */	lis r0, 0x4330
/* 8061586C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80615870  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80615874  EC 00 08 28 */	fsubs f0, f0, f1
/* 80615878  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8061587C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80615880  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80615884  4B 9F B9 68 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80615888  38 7F 4A 64 */	addi r3, r31, 0x4a64
/* 8061588C  38 81 00 28 */	addi r4, r1, 0x28
/* 80615890  4B C5 9D B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80615894  38 7F 4A 64 */	addi r3, r31, 0x4a64
/* 80615898  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 8061589C  38 9D 00 54 */	addi r4, r29, 0x54
/* 806158A0  C0 04 00 08 */	lfs f0, 8(r4)
/* 806158A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 806158A8  4B C5 9E 60 */	b SetR__8cM3dGSphFf
/* 806158AC  7E E3 BB 78 */	mr r3, r23
/* 806158B0  38 9F 49 40 */	addi r4, r31, 0x4940
/* 806158B4  4B C4 F2 F4 */	b Set__4cCcSFP8cCcD_Obj
/* 806158B8  38 00 00 02 */	li r0, 2
/* 806158BC  98 1F 47 4D */	stb r0, 0x474d(r31)
/* 806158C0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 806158C4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 806158C8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806158CC  4B D4 C9 24 */	b _restgpr_15
/* 806158D0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806158D4  7C 08 03 A6 */	mtlr r0
/* 806158D8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806158DC  4E 80 00 20 */	blr 
