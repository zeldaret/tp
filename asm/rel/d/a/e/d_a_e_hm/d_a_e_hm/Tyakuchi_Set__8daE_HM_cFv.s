lbl_806E1C28:
/* 806E1C28  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806E1C2C  7C 08 02 A6 */	mflr r0
/* 806E1C30  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806E1C34  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E1C38  4B C8 05 A4 */	b _savegpr_29
/* 806E1C3C  7C 7F 1B 78 */	mr r31, r3
/* 806E1C40  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E1C44  3B C3 59 20 */	addi r30, r3, lit_3791@l
/* 806E1C48  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E1C4C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806E1C50  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 806E1C54  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806E1C58  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 806E1C5C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806E1C60  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806E1C64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E1C68  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806E1C6C  38 61 00 68 */	addi r3, r1, 0x68
/* 806E1C70  4B 99 5F F8 */	b __ct__11dBgS_LinChkFv
/* 806E1C74  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E1C78  4B 92 B0 EC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E1C7C  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E1C80  4B 92 B2 C4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E1C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E1C8C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806E1C90  4B 92 A7 A4 */	b mDoMtx_YrotM__FPA4_fs
/* 806E1C94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1C98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E1C9C  38 81 00 48 */	addi r4, r1, 0x48
/* 806E1CA0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806E1CA4  4B C6 50 C8 */	b PSMTXMultVec
/* 806E1CA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1CAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E1CB0  38 81 00 30 */	addi r4, r1, 0x30
/* 806E1CB4  38 A1 00 24 */	addi r5, r1, 0x24
/* 806E1CB8  4B C6 50 B4 */	b PSMTXMultVec
/* 806E1CBC  38 61 00 68 */	addi r3, r1, 0x68
/* 806E1CC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 806E1CC4  38 A1 00 24 */	addi r5, r1, 0x24
/* 806E1CC8  38 C0 00 00 */	li r6, 0
/* 806E1CCC  4B 99 60 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E1CD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1CD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E1CD8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806E1CDC  7F A3 EB 78 */	mr r3, r29
/* 806E1CE0  38 81 00 68 */	addi r4, r1, 0x68
/* 806E1CE4  4B 99 26 D0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806E1CE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E1CEC  41 82 01 68 */	beq lbl_806E1E54
/* 806E1CF0  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1CF4  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1CF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 806E1CFC  7F A3 EB 78 */	mr r3, r29
/* 806E1D00  38 81 00 7C */	addi r4, r1, 0x7c
/* 806E1D04  38 A1 00 54 */	addi r5, r1, 0x54
/* 806E1D08  4B 99 2A 3C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E1D0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E1D10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E1D14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E1D18  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E1D1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E1D20  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806E1D24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E1D28  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806E1D2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E1D30  38 61 00 18 */	addi r3, r1, 0x18
/* 806E1D34  38 81 00 0C */	addi r4, r1, 0xc
/* 806E1D38  4B C6 56 64 */	b PSVECSquareDistance
/* 806E1D3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E1D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E1D44  40 81 00 58 */	ble lbl_806E1D9C
/* 806E1D48  FC 00 08 34 */	frsqrte f0, f1
/* 806E1D4C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E1D50  FC 44 00 32 */	fmul f2, f4, f0
/* 806E1D54  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E1D58  FC 00 00 32 */	fmul f0, f0, f0
/* 806E1D5C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E1D60  FC 03 00 28 */	fsub f0, f3, f0
/* 806E1D64  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1D68  FC 44 00 32 */	fmul f2, f4, f0
/* 806E1D6C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E1D70  FC 01 00 32 */	fmul f0, f1, f0
/* 806E1D74  FC 03 00 28 */	fsub f0, f3, f0
/* 806E1D78  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1D7C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E1D80  FC 00 00 32 */	fmul f0, f0, f0
/* 806E1D84  FC 01 00 32 */	fmul f0, f1, f0
/* 806E1D88  FC 03 00 28 */	fsub f0, f3, f0
/* 806E1D8C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1D90  FC 41 00 32 */	fmul f2, f1, f0
/* 806E1D94  FC 40 10 18 */	frsp f2, f2
/* 806E1D98  48 00 00 90 */	b lbl_806E1E28
lbl_806E1D9C:
/* 806E1D9C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E1DA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E1DA4  40 80 00 10 */	bge lbl_806E1DB4
/* 806E1DA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E1DAC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E1DB0  48 00 00 78 */	b lbl_806E1E28
lbl_806E1DB4:
/* 806E1DB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E1DB8  80 81 00 08 */	lwz r4, 8(r1)
/* 806E1DBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E1DC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E1DC4  7C 03 00 00 */	cmpw r3, r0
/* 806E1DC8  41 82 00 14 */	beq lbl_806E1DDC
/* 806E1DCC  40 80 00 40 */	bge lbl_806E1E0C
/* 806E1DD0  2C 03 00 00 */	cmpwi r3, 0
/* 806E1DD4  41 82 00 20 */	beq lbl_806E1DF4
/* 806E1DD8  48 00 00 34 */	b lbl_806E1E0C
lbl_806E1DDC:
/* 806E1DDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E1DE0  41 82 00 0C */	beq lbl_806E1DEC
/* 806E1DE4  38 00 00 01 */	li r0, 1
/* 806E1DE8  48 00 00 28 */	b lbl_806E1E10
lbl_806E1DEC:
/* 806E1DEC  38 00 00 02 */	li r0, 2
/* 806E1DF0  48 00 00 20 */	b lbl_806E1E10
lbl_806E1DF4:
/* 806E1DF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E1DF8  41 82 00 0C */	beq lbl_806E1E04
/* 806E1DFC  38 00 00 05 */	li r0, 5
/* 806E1E00  48 00 00 10 */	b lbl_806E1E10
lbl_806E1E04:
/* 806E1E04  38 00 00 03 */	li r0, 3
/* 806E1E08  48 00 00 08 */	b lbl_806E1E10
lbl_806E1E0C:
/* 806E1E0C  38 00 00 04 */	li r0, 4
lbl_806E1E10:
/* 806E1E10  2C 00 00 01 */	cmpwi r0, 1
/* 806E1E14  40 82 00 10 */	bne lbl_806E1E24
/* 806E1E18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E1E1C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E1E20  48 00 00 08 */	b lbl_806E1E28
lbl_806E1E24:
/* 806E1E24  FC 40 08 90 */	fmr f2, f1
lbl_806E1E28:
/* 806E1E28  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806E1E2C  4B B8 58 48 */	b cM_atan2s__Fff
/* 806E1E30  7C 03 00 D0 */	neg r0, r3
/* 806E1E34  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 806E1E38  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 806E1E3C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 806E1E40  4B B8 58 34 */	b cM_atan2s__Fff
/* 806E1E44  B0 7F 05 CC */	sth r3, 0x5cc(r31)
/* 806E1E48  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1E4C  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1E50  90 01 00 64 */	stw r0, 0x64(r1)
lbl_806E1E54:
/* 806E1E54  38 61 00 68 */	addi r3, r1, 0x68
/* 806E1E58  38 80 FF FF */	li r4, -1
/* 806E1E5C  4B 99 5E 80 */	b __dt__11dBgS_LinChkFv
/* 806E1E60  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E1E64  4B C8 03 C4 */	b _restgpr_29
/* 806E1E68  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806E1E6C  7C 08 03 A6 */	mtlr r0
/* 806E1E70  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806E1E74  4E 80 00 20 */	blr 
