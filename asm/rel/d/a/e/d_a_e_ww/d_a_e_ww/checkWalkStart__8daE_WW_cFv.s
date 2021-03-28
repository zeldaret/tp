lbl_807EC940:
/* 807EC940  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807EC944  7C 08 02 A6 */	mflr r0
/* 807EC948  90 01 01 24 */	stw r0, 0x124(r1)
/* 807EC94C  39 61 01 20 */	addi r11, r1, 0x120
/* 807EC950  4B B7 58 84 */	b _savegpr_27
/* 807EC954  7C 7D 1B 78 */	mr r29, r3
/* 807EC958  3C 80 80 7F */	lis r4, lit_3905@ha
/* 807EC95C  3B E4 F7 70 */	addi r31, r4, lit_3905@l
/* 807EC960  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 807EC964  28 00 00 00 */	cmplwi r0, 0
/* 807EC968  41 82 00 0C */	beq lbl_807EC974
/* 807EC96C  38 60 00 00 */	li r3, 0
/* 807EC970  48 00 04 D0 */	b lbl_807ECE40
lbl_807EC974:
/* 807EC974  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807EC978  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 807EC97C  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 807EC980  7C 00 07 74 */	extsb r0, r0
/* 807EC984  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807EC988  7C 85 02 14 */	add r4, r5, r0
/* 807EC98C  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 807EC990  AB 84 02 32 */	lha r28, 0x232(r4)
/* 807EC994  80 85 5D AC */	lwz r4, 0x5dac(r5)
/* 807EC998  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 807EC99C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807EC9A0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807EC9A4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807EC9A8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 807EC9AC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807EC9B0  80 1D 07 40 */	lwz r0, 0x740(r29)
/* 807EC9B4  2C 00 00 00 */	cmpwi r0, 0
/* 807EC9B8  40 82 04 84 */	bne lbl_807ECE3C
/* 807EC9BC  38 00 00 1E */	li r0, 0x1e
/* 807EC9C0  90 1D 07 40 */	stw r0, 0x740(r29)
/* 807EC9C4  80 85 5D AC */	lwz r4, 0x5dac(r5)
/* 807EC9C8  4B 82 DD 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EC9CC  38 03 80 00 */	addi r0, r3, -32768
/* 807EC9D0  7C 1E 07 34 */	extsh r30, r0
/* 807EC9D4  7C 1E E0 50 */	subf r0, r30, r28
/* 807EC9D8  7C 1B 07 34 */	extsh r27, r0
/* 807EC9DC  7F 63 DB 78 */	mr r3, r27
/* 807EC9E0  4B B7 86 F0 */	b abs
/* 807EC9E4  2C 03 30 00 */	cmpwi r3, 0x3000
/* 807EC9E8  40 80 02 80 */	bge lbl_807ECC68
/* 807EC9EC  4B A7 AE 80 */	b cM_rnd__Fv
/* 807EC9F0  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 807EC9F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EC9F8  40 80 00 0C */	bge lbl_807ECA04
/* 807EC9FC  38 60 00 00 */	li r3, 0
/* 807ECA00  48 00 04 40 */	b lbl_807ECE40
lbl_807ECA04:
/* 807ECA04  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 807ECA08  4B A7 AF 84 */	b cM_rndFX__Ff
/* 807ECA0C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 807ECA10  EC 00 08 2A */	fadds f0, f0, f1
/* 807ECA14  FC 00 00 1E */	fctiwz f0, f0
/* 807ECA18  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 807ECA1C  83 81 00 FC */	lwz r28, 0xfc(r1)
/* 807ECA20  7F 63 DB 78 */	mr r3, r27
/* 807ECA24  4B B7 86 AC */	b abs
/* 807ECA28  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807ECA2C  40 80 00 20 */	bge lbl_807ECA4C
/* 807ECA30  4B A7 AE 3C */	b cM_rnd__Fv
/* 807ECA34  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 807ECA38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECA3C  40 80 00 20 */	bge lbl_807ECA5C
/* 807ECA40  7C 1C 00 D0 */	neg r0, r28
/* 807ECA44  7C 1C 07 34 */	extsh r28, r0
/* 807ECA48  48 00 00 14 */	b lbl_807ECA5C
lbl_807ECA4C:
/* 807ECA4C  7F 60 07 35 */	extsh. r0, r27
/* 807ECA50  40 81 00 0C */	ble lbl_807ECA5C
/* 807ECA54  7C 1C 00 D0 */	neg r0, r28
/* 807ECA58  7C 1C 07 34 */	extsh r28, r0
lbl_807ECA5C:
/* 807ECA5C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807ECA60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807ECA64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807ECA68  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807ECA6C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 807ECA70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807ECA74  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ECA78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ECA7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807ECA80  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807ECA84  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807ECA88  38 61 00 0C */	addi r3, r1, 0xc
/* 807ECA8C  38 81 00 18 */	addi r4, r1, 0x18
/* 807ECA90  4B B5 A9 0C */	b PSVECSquareDistance
/* 807ECA94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ECA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECA9C  40 81 00 58 */	ble lbl_807ECAF4
/* 807ECAA0  FC 00 08 34 */	frsqrte f0, f1
/* 807ECAA4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807ECAA8  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECAAC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807ECAB0  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECAB4  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECAB8  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECABC  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECAC0  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECAC4  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECAC8  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECACC  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECAD0  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECAD4  FC 44 00 32 */	fmul f2, f4, f0
/* 807ECAD8  FC 00 00 32 */	fmul f0, f0, f0
/* 807ECADC  FC 01 00 32 */	fmul f0, f1, f0
/* 807ECAE0  FC 03 00 28 */	fsub f0, f3, f0
/* 807ECAE4  FC 02 00 32 */	fmul f0, f2, f0
/* 807ECAE8  FC 21 00 32 */	fmul f1, f1, f0
/* 807ECAEC  FC 20 08 18 */	frsp f1, f1
/* 807ECAF0  48 00 00 88 */	b lbl_807ECB78
lbl_807ECAF4:
/* 807ECAF4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807ECAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECAFC  40 80 00 10 */	bge lbl_807ECB0C
/* 807ECB00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ECB04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807ECB08  48 00 00 70 */	b lbl_807ECB78
lbl_807ECB0C:
/* 807ECB0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807ECB10  80 81 00 08 */	lwz r4, 8(r1)
/* 807ECB14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807ECB18  3C 00 7F 80 */	lis r0, 0x7f80
/* 807ECB1C  7C 03 00 00 */	cmpw r3, r0
/* 807ECB20  41 82 00 14 */	beq lbl_807ECB34
/* 807ECB24  40 80 00 40 */	bge lbl_807ECB64
/* 807ECB28  2C 03 00 00 */	cmpwi r3, 0
/* 807ECB2C  41 82 00 20 */	beq lbl_807ECB4C
/* 807ECB30  48 00 00 34 */	b lbl_807ECB64
lbl_807ECB34:
/* 807ECB34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ECB38  41 82 00 0C */	beq lbl_807ECB44
/* 807ECB3C  38 00 00 01 */	li r0, 1
/* 807ECB40  48 00 00 28 */	b lbl_807ECB68
lbl_807ECB44:
/* 807ECB44  38 00 00 02 */	li r0, 2
/* 807ECB48  48 00 00 20 */	b lbl_807ECB68
lbl_807ECB4C:
/* 807ECB4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807ECB50  41 82 00 0C */	beq lbl_807ECB5C
/* 807ECB54  38 00 00 05 */	li r0, 5
/* 807ECB58  48 00 00 10 */	b lbl_807ECB68
lbl_807ECB5C:
/* 807ECB5C  38 00 00 03 */	li r0, 3
/* 807ECB60  48 00 00 08 */	b lbl_807ECB68
lbl_807ECB64:
/* 807ECB64  38 00 00 04 */	li r0, 4
lbl_807ECB68:
/* 807ECB68  2C 00 00 01 */	cmpwi r0, 1
/* 807ECB6C  40 82 00 0C */	bne lbl_807ECB78
/* 807ECB70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807ECB74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807ECB78:
/* 807ECB78  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807ECB7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECB80  40 80 00 08 */	bge lbl_807ECB88
/* 807ECB84  FC 20 00 90 */	fmr f1, f0
lbl_807ECB88:
/* 807ECB88  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 807ECB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECB90  40 81 00 08 */	ble lbl_807ECB98
/* 807ECB94  FC 20 00 90 */	fmr f1, f0
lbl_807ECB98:
/* 807ECB98  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ECB9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807ECBA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807ECBA4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807ECBA8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807ECBAC  38 61 00 78 */	addi r3, r1, 0x78
/* 807ECBB0  38 81 00 60 */	addi r4, r1, 0x60
/* 807ECBB4  7C 1E E2 14 */	add r0, r30, r28
/* 807ECBB8  7C 05 07 34 */	extsh r5, r0
/* 807ECBBC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 807ECBC0  4B A8 42 00 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807ECBC4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807ECBC8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807ECBCC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807ECBD0  EC 21 00 2A */	fadds f1, f1, f0
/* 807ECBD4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807ECBD8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807ECBDC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807ECBE0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 807ECBE4  38 61 00 84 */	addi r3, r1, 0x84
/* 807ECBE8  4B 88 B0 80 */	b __ct__11dBgS_LinChkFv
/* 807ECBEC  38 61 00 84 */	addi r3, r1, 0x84
/* 807ECBF0  38 81 00 54 */	addi r4, r1, 0x54
/* 807ECBF4  38 A1 00 78 */	addi r5, r1, 0x78
/* 807ECBF8  38 C0 00 00 */	li r6, 0
/* 807ECBFC  4B 88 B1 68 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807ECC00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ECC04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ECC08  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807ECC0C  38 81 00 84 */	addi r4, r1, 0x84
/* 807ECC10  4B 88 77 A4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807ECC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807ECC18  40 82 00 40 */	bne lbl_807ECC58
/* 807ECC1C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807ECC20  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 807ECC24  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807ECC28  D0 1D 06 60 */	stfs f0, 0x660(r29)
/* 807ECC2C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807ECC30  D0 1D 06 64 */	stfs f0, 0x664(r29)
/* 807ECC34  7F A3 EB 78 */	mr r3, r29
/* 807ECC38  38 80 00 06 */	li r4, 6
/* 807ECC3C  38 A0 00 00 */	li r5, 0
/* 807ECC40  4B FF AF 9D */	bl setActionMode__8daE_WW_cFii
/* 807ECC44  38 61 00 84 */	addi r3, r1, 0x84
/* 807ECC48  38 80 FF FF */	li r4, -1
/* 807ECC4C  4B 88 B0 90 */	b __dt__11dBgS_LinChkFv
/* 807ECC50  38 60 00 01 */	li r3, 1
/* 807ECC54  48 00 01 EC */	b lbl_807ECE40
lbl_807ECC58:
/* 807ECC58  38 61 00 84 */	addi r3, r1, 0x84
/* 807ECC5C  38 80 FF FF */	li r4, -1
/* 807ECC60  4B 88 B0 7C */	b __dt__11dBgS_LinChkFv
/* 807ECC64  48 00 01 D8 */	b lbl_807ECE3C
lbl_807ECC68:
/* 807ECC68  4B A7 AC 04 */	b cM_rnd__Fv
/* 807ECC6C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807ECC70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECC74  40 80 00 0C */	bge lbl_807ECC80
/* 807ECC78  38 60 00 00 */	li r3, 0
/* 807ECC7C  48 00 01 C4 */	b lbl_807ECE40
lbl_807ECC80:
/* 807ECC80  3B 60 00 00 */	li r27, 0
/* 807ECC84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807ECC88  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 807ECC8C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807ECC90  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807ECC94  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 807ECC98  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 807ECC9C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 807ECCA0  4B A7 AC EC */	b cM_rndFX__Ff
/* 807ECCA4  38 1C 14 00 */	addi r0, r28, 0x1400
/* 807ECCA8  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 807ECCAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807ECCB0  90 01 00 FC */	stw r0, 0xfc(r1)
/* 807ECCB4  3C 00 43 30 */	lis r0, 0x4330
/* 807ECCB8  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 807ECCBC  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 807ECCC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 807ECCC4  EC 00 08 2A */	fadds f0, f0, f1
/* 807ECCC8  FC 00 00 1E */	fctiwz f0, f0
/* 807ECCCC  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 807ECCD0  80 A1 01 04 */	lwz r5, 0x104(r1)
/* 807ECCD4  38 61 00 78 */	addi r3, r1, 0x78
/* 807ECCD8  38 81 00 60 */	addi r4, r1, 0x60
/* 807ECCDC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 807ECCE0  4B A8 40 E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807ECCE4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807ECCE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807ECCEC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807ECCF0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807ECCF4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807ECCF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807ECCFC  7F A3 EB 78 */	mr r3, r29
/* 807ECD00  38 81 00 3C */	addi r4, r1, 0x3c
/* 807ECD04  4B FF B6 09 */	bl checkCreateBg__8daE_WW_cF4cXyz
/* 807ECD08  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807ECD0C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807ECD10  41 82 00 0C */	beq lbl_807ECD1C
/* 807ECD14  3B 60 00 01 */	li r27, 1
/* 807ECD18  D0 21 00 7C */	stfs f1, 0x7c(r1)
lbl_807ECD1C:
/* 807ECD1C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 807ECD20  4B A7 AC 6C */	b cM_rndFX__Ff
/* 807ECD24  38 1C EC 00 */	addi r0, r28, -5120
/* 807ECD28  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 807ECD2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807ECD30  90 01 01 04 */	stw r0, 0x104(r1)
/* 807ECD34  3C 00 43 30 */	lis r0, 0x4330
/* 807ECD38  90 01 01 00 */	stw r0, 0x100(r1)
/* 807ECD3C  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 807ECD40  EC 00 10 28 */	fsubs f0, f0, f2
/* 807ECD44  EC 00 08 2A */	fadds f0, f0, f1
/* 807ECD48  FC 00 00 1E */	fctiwz f0, f0
/* 807ECD4C  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 807ECD50  80 A1 00 FC */	lwz r5, 0xfc(r1)
/* 807ECD54  38 61 00 48 */	addi r3, r1, 0x48
/* 807ECD58  38 81 00 60 */	addi r4, r1, 0x60
/* 807ECD5C  38 C1 00 6C */	addi r6, r1, 0x6c
/* 807ECD60  4B A8 40 60 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807ECD64  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807ECD68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807ECD6C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807ECD70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807ECD74  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807ECD78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807ECD7C  7F A3 EB 78 */	mr r3, r29
/* 807ECD80  38 81 00 30 */	addi r4, r1, 0x30
/* 807ECD84  4B FF B5 89 */	bl checkCreateBg__8daE_WW_cF4cXyz
/* 807ECD88  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807ECD8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807ECD90  41 82 00 10 */	beq lbl_807ECDA0
/* 807ECD94  63 60 00 02 */	ori r0, r27, 2
/* 807ECD98  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 807ECD9C  D0 21 00 4C */	stfs f1, 0x4c(r1)
lbl_807ECDA0:
/* 807ECDA0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 807ECDA4  40 82 00 0C */	bne lbl_807ECDB0
/* 807ECDA8  38 60 00 00 */	li r3, 0
/* 807ECDAC  48 00 00 94 */	b lbl_807ECE40
lbl_807ECDB0:
/* 807ECDB0  28 00 00 03 */	cmplwi r0, 3
/* 807ECDB4  40 82 00 30 */	bne lbl_807ECDE4
/* 807ECDB8  4B A7 AA B4 */	b cM_rnd__Fv
/* 807ECDBC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 807ECDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807ECDC4  40 80 00 40 */	bge lbl_807ECE04
/* 807ECDC8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807ECDCC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807ECDD0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807ECDD4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807ECDD8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807ECDDC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807ECDE0  48 00 00 24 */	b lbl_807ECE04
lbl_807ECDE4:
/* 807ECDE4  28 00 00 02 */	cmplwi r0, 2
/* 807ECDE8  40 82 00 1C */	bne lbl_807ECE04
/* 807ECDEC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807ECDF0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 807ECDF4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807ECDF8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807ECDFC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807ECE00  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_807ECE04:
/* 807ECE04  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 807ECE08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807ECE0C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807ECE10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807ECE14  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807ECE18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807ECE1C  7F A3 EB 78 */	mr r3, r29
/* 807ECE20  38 81 00 24 */	addi r4, r1, 0x24
/* 807ECE24  38 A0 00 00 */	li r5, 0
/* 807ECE28  4B FF C0 C5 */	bl createWolf__8daE_WW_cF4cXyzUc
/* 807ECE2C  7F A3 EB 78 */	mr r3, r29
/* 807ECE30  4B 82 CE 4C */	b fopAcM_delete__FP10fopAc_ac_c
/* 807ECE34  38 60 00 01 */	li r3, 1
/* 807ECE38  48 00 00 08 */	b lbl_807ECE40
lbl_807ECE3C:
/* 807ECE3C  38 60 00 00 */	li r3, 0
lbl_807ECE40:
/* 807ECE40  39 61 01 20 */	addi r11, r1, 0x120
/* 807ECE44  4B B7 53 DC */	b _restgpr_27
/* 807ECE48  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807ECE4C  7C 08 03 A6 */	mtlr r0
/* 807ECE50  38 21 01 20 */	addi r1, r1, 0x120
/* 807ECE54  4E 80 00 20 */	blr 
