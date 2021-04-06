lbl_8078FDB0:
/* 8078FDB0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8078FDB4  7C 08 02 A6 */	mflr r0
/* 8078FDB8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8078FDBC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8078FDC0  4B BD 24 19 */	bl _savegpr_28
/* 8078FDC4  7C 7C 1B 78 */	mr r28, r3
/* 8078FDC8  3C 80 80 79 */	lis r4, lit_3902@ha /* 0x80791D70@ha */
/* 8078FDCC  3B C4 1D 70 */	addi r30, r4, lit_3902@l /* 0x80791D70@l */
/* 8078FDD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078FDD4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078FDD8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8078FDDC  4B 88 A9 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078FDE0  B0 7C 06 8C */	sth r3, 0x68c(r28)
/* 8078FDE4  7F 83 E3 78 */	mr r3, r28
/* 8078FDE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8078FDEC  4B 88 A9 F5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078FDF0  C0 1C 06 94 */	lfs f0, 0x694(r28)
/* 8078FDF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8078FDF8  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 8078FDFC  38 80 00 01 */	li r4, 1
/* 8078FE00  98 9C 0C EA */	stb r4, 0xcea(r28)
/* 8078FE04  38 00 00 00 */	li r0, 0
/* 8078FE08  98 1C 0C EC */	stb r0, 0xcec(r28)
/* 8078FE0C  3B A0 00 01 */	li r29, 1
/* 8078FE10  A8 1C 06 76 */	lha r0, 0x676(r28)
/* 8078FE14  28 00 00 0B */	cmplwi r0, 0xb
/* 8078FE18  41 81 00 88 */	bgt lbl_8078FEA0
/* 8078FE1C  3C 60 80 79 */	lis r3, lit_4637@ha /* 0x80791F10@ha */
/* 8078FE20  38 63 1F 10 */	addi r3, r3, lit_4637@l /* 0x80791F10@l */
/* 8078FE24  54 00 10 3A */	slwi r0, r0, 2
/* 8078FE28  7C 03 00 2E */	lwzx r0, r3, r0
/* 8078FE2C  7C 09 03 A6 */	mtctr r0
/* 8078FE30  4E 80 04 20 */	bctr 
lbl_8078FE34:
/* 8078FE34  7F 83 E3 78 */	mr r3, r28
/* 8078FE38  4B FF EC 21 */	bl e_sh_stop__FP10e_sh_class
/* 8078FE3C  3B A0 00 00 */	li r29, 0
/* 8078FE40  48 00 00 60 */	b lbl_8078FEA0
lbl_8078FE44:
/* 8078FE44  98 9C 0C EC */	stb r4, 0xcec(r28)
/* 8078FE48  7F 83 E3 78 */	mr r3, r28
/* 8078FE4C  4B FF ED B9 */	bl e_sh_appear__FP10e_sh_class
/* 8078FE50  48 00 00 50 */	b lbl_8078FEA0
lbl_8078FE54:
/* 8078FE54  98 9C 0C EC */	stb r4, 0xcec(r28)
/* 8078FE58  7F 83 E3 78 */	mr r3, r28
/* 8078FE5C  4B FF EE 71 */	bl e_sh_move__FP10e_sh_class
/* 8078FE60  48 00 00 40 */	b lbl_8078FEA0
lbl_8078FE64:
/* 8078FE64  98 9C 0C EC */	stb r4, 0xcec(r28)
/* 8078FE68  7F 83 E3 78 */	mr r3, r28
/* 8078FE6C  4B FF F8 BD */	bl e_sh_attack__FP10e_sh_class
/* 8078FE70  48 00 00 30 */	b lbl_8078FEA0
lbl_8078FE74:
/* 8078FE74  98 9C 0C EC */	stb r4, 0xcec(r28)
/* 8078FE78  7F 83 E3 78 */	mr r3, r28
/* 8078FE7C  4B FF FB BD */	bl e_sh_disappear__FP10e_sh_class
/* 8078FE80  3B A0 00 00 */	li r29, 0
/* 8078FE84  48 00 00 1C */	b lbl_8078FEA0
lbl_8078FE88:
/* 8078FE88  7F 83 E3 78 */	mr r3, r28
/* 8078FE8C  4B FF FD 3D */	bl e_sh_damage__FP10e_sh_class
/* 8078FE90  48 00 00 10 */	b lbl_8078FEA0
lbl_8078FE94:
/* 8078FE94  7F 83 E3 78 */	mr r3, r28
/* 8078FE98  4B FF FE 29 */	bl e_sh_dead__FP10e_sh_class
/* 8078FE9C  3B A0 00 00 */	li r29, 0
lbl_8078FEA0:
/* 8078FEA0  7F 83 E3 78 */	mr r3, r28
/* 8078FEA4  4B FF E9 C5 */	bl damage_check__FP10e_sh_class
/* 8078FEA8  7F A0 07 75 */	extsb. r0, r29
/* 8078FEAC  41 82 00 10 */	beq lbl_8078FEBC
/* 8078FEB0  38 00 00 04 */	li r0, 4
/* 8078FEB4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8078FEB8  48 00 00 18 */	b lbl_8078FED0
lbl_8078FEBC:
/* 8078FEBC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8078FEC0  54 00 00 3E */	slwi r0, r0, 0
/* 8078FEC4  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8078FEC8  38 00 00 00 */	li r0, 0
/* 8078FECC  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_8078FED0:
/* 8078FED0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078FED4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078FED8  80 63 00 00 */	lwz r3, 0(r3)
/* 8078FEDC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8078FEE0  4B 87 C4 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 8078FEE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078FEE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078FEEC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8078FEF0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8078FEF4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8078FEF8  38 61 00 38 */	addi r3, r1, 0x38
/* 8078FEFC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8078FF00  4B AE 0F ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078FF04  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8078FF08  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 8078FF0C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8078FF10  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 8078FF14  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8078FF18  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8078FF1C  7C 65 1B 78 */	mr r5, r3
/* 8078FF20  4B BB 71 71 */	bl PSVECAdd
/* 8078FF24  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8078FF28  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8078FF2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078FF30  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8078FF34  34 7C 08 E0 */	addic. r3, r28, 0x8e0
/* 8078FF38  41 82 00 34 */	beq lbl_8078FF6C
/* 8078FF3C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8078FF40  C0 03 00 00 */	lfs f0, 0(r3)
/* 8078FF44  EC 01 00 2A */	fadds f0, f1, f0
/* 8078FF48  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8078FF4C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8078FF50  C0 03 00 04 */	lfs f0, 4(r3)
/* 8078FF54  EC 01 00 2A */	fadds f0, f1, f0
/* 8078FF58  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8078FF5C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8078FF60  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078FF64  EC 01 00 2A */	fadds f0, f1, f0
/* 8078FF68  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8078FF6C:
/* 8078FF6C  C0 3C 06 A4 */	lfs f1, 0x6a4(r28)
/* 8078FF70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8078FF74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078FF78  40 81 00 60 */	ble lbl_8078FFD8
/* 8078FF7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078FF80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078FF84  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8078FF88  FC 00 08 50 */	fneg f0, f1
/* 8078FF8C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8078FF90  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078FF94  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078FF98  80 63 00 00 */	lwz r3, 0(r3)
/* 8078FF9C  A8 9C 06 A8 */	lha r4, 0x6a8(r28)
/* 8078FFA0  4B 87 C4 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 8078FFA4  38 61 00 38 */	addi r3, r1, 0x38
/* 8078FFA8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8078FFAC  4B AE 0F 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078FFB0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8078FFB4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8078FFB8  7C 65 1B 78 */	mr r5, r3
/* 8078FFBC  4B BB 70 D5 */	bl PSVECAdd
/* 8078FFC0  38 7C 06 A4 */	addi r3, r28, 0x6a4
/* 8078FFC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8078FFC8  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 8078FFCC  4B AD FA B5 */	bl cLib_addCalc0__FPfff
/* 8078FFD0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078FFD4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_8078FFD8:
/* 8078FFD8  38 7C 07 08 */	addi r3, r28, 0x708
/* 8078FFDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078FFE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078FFE4  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 8078FFE8  7F A4 EB 78 */	mr r4, r29
/* 8078FFEC  4B 8E 6A C1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8078FFF0  38 00 00 01 */	li r0, 1
/* 8078FFF4  98 1C 06 AA */	stb r0, 0x6aa(r28)
/* 8078FFF8  88 1C 06 AA */	lbz r0, 0x6aa(r28)
/* 8078FFFC  7C 00 07 75 */	extsb. r0, r0
/* 80790000  41 82 00 F0 */	beq lbl_807900F0
/* 80790004  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80790008  A8 1C 06 74 */	lha r0, 0x674(r28)
/* 8079000C  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80790010  40 82 00 D4 */	bne lbl_807900E4
/* 80790014  38 61 00 14 */	addi r3, r1, 0x14
/* 80790018  38 84 05 38 */	addi r4, r4, 0x538
/* 8079001C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80790020  4B AD 6B 15 */	bl __mi__4cXyzCFRC3Vec
/* 80790024  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80790028  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8079002C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80790030  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80790034  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80790038  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8079003C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80790040  EC 03 00 2A */	fadds f0, f3, f0
/* 80790044  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80790048  4B AD 76 2D */	bl cM_atan2s__Fff
/* 8079004C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80790050  7C 00 18 50 */	subf r0, r0, r3
/* 80790054  B0 1C 06 B0 */	sth r0, 0x6b0(r28)
/* 80790058  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8079005C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80790060  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80790064  EC 00 00 32 */	fmuls f0, f0, f0
/* 80790068  EC 41 00 2A */	fadds f2, f1, f0
/* 8079006C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80790070  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80790074  40 81 00 0C */	ble lbl_80790080
/* 80790078  FC 00 10 34 */	frsqrte f0, f2
/* 8079007C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80790080:
/* 80790080  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80790084  4B AD 75 F1 */	bl cM_atan2s__Fff
/* 80790088  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 8079008C  7C 00 1A 14 */	add r0, r0, r3
/* 80790090  B0 1C 06 B2 */	sth r0, 0x6b2(r28)
/* 80790094  A8 1C 06 B0 */	lha r0, 0x6b0(r28)
/* 80790098  2C 00 1F 40 */	cmpwi r0, 0x1f40
/* 8079009C  40 81 00 10 */	ble lbl_807900AC
/* 807900A0  38 00 1F 40 */	li r0, 0x1f40
/* 807900A4  B0 1C 06 B0 */	sth r0, 0x6b0(r28)
/* 807900A8  48 00 00 14 */	b lbl_807900BC
lbl_807900AC:
/* 807900AC  2C 00 E0 C0 */	cmpwi r0, -8000
/* 807900B0  40 80 00 0C */	bge lbl_807900BC
/* 807900B4  38 00 E0 C0 */	li r0, -8000
/* 807900B8  B0 1C 06 B0 */	sth r0, 0x6b0(r28)
lbl_807900BC:
/* 807900BC  A8 1C 06 B2 */	lha r0, 0x6b2(r28)
/* 807900C0  2C 00 1F 40 */	cmpwi r0, 0x1f40
/* 807900C4  40 81 00 10 */	ble lbl_807900D4
/* 807900C8  38 00 1F 40 */	li r0, 0x1f40
/* 807900CC  B0 1C 06 B2 */	sth r0, 0x6b2(r28)
/* 807900D0  48 00 00 14 */	b lbl_807900E4
lbl_807900D4:
/* 807900D4  2C 00 E0 C0 */	cmpwi r0, -8000
/* 807900D8  40 80 00 0C */	bge lbl_807900E4
/* 807900DC  38 00 E0 C0 */	li r0, -8000
/* 807900E0  B0 1C 06 B2 */	sth r0, 0x6b2(r28)
lbl_807900E4:
/* 807900E4  38 00 00 00 */	li r0, 0
/* 807900E8  98 1C 06 AA */	stb r0, 0x6aa(r28)
/* 807900EC  48 00 00 0C */	b lbl_807900F8
lbl_807900F0:
/* 807900F0  38 00 00 00 */	li r0, 0
/* 807900F4  B0 1C 06 B0 */	sth r0, 0x6b0(r28)
lbl_807900F8:
/* 807900F8  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 807900FC  A8 1C 06 B0 */	lha r0, 0x6b0(r28)
/* 80790100  7C 00 0E 70 */	srawi r0, r0, 1
/* 80790104  7C 00 01 94 */	addze r0, r0
/* 80790108  7C 04 07 34 */	extsh r4, r0
/* 8079010C  38 A0 00 04 */	li r5, 4
/* 80790110  38 C0 10 00 */	li r6, 0x1000
/* 80790114  4B AE 04 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 80790118  38 7C 06 AE */	addi r3, r28, 0x6ae
/* 8079011C  A8 9C 06 B2 */	lha r4, 0x6b2(r28)
/* 80790120  38 A0 00 04 */	li r5, 4
/* 80790124  38 C0 10 00 */	li r6, 0x1000
/* 80790128  4B AE 04 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 8079012C  80 1C 07 34 */	lwz r0, 0x734(r28)
/* 80790130  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80790134  41 82 00 F4 */	beq lbl_80790228
/* 80790138  38 61 00 44 */	addi r3, r1, 0x44
/* 8079013C  4B 8E 74 41 */	bl __ct__11dBgS_GndChkFv
/* 80790140  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80790144  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80790148  80 63 00 00 */	lwz r3, 0(r3)
/* 8079014C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80790150  4B 87 C2 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 80790154  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80790158  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8079015C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80790160  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80790164  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80790168  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x80792108@ha */
/* 8079016C  38 63 21 08 */	addi r3, r3, l_HIO@l /* 0x80792108@l */
/* 80790170  C0 03 00 08 */	lfs f0, 8(r3)
/* 80790174  EC 01 00 32 */	fmuls f0, f1, f0
/* 80790178  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8079017C  38 61 00 38 */	addi r3, r1, 0x38
/* 80790180  38 81 00 2C */	addi r4, r1, 0x2c
/* 80790184  4B AE 0D 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80790188  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079018C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80790190  7C 65 1B 78 */	mr r5, r3
/* 80790194  4B BB 6E FD */	bl PSVECAdd
/* 80790198  38 61 00 44 */	addi r3, r1, 0x44
/* 8079019C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807901A0  4B AD 7B 89 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807901A4  7F A3 EB 78 */	mr r3, r29
/* 807901A8  38 81 00 44 */	addi r4, r1, 0x44
/* 807901AC  4B 8E 42 F5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807901B0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807901B4  38 61 00 08 */	addi r3, r1, 8
/* 807901B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 807901BC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 807901C0  4B AD 69 75 */	bl __mi__4cXyzCFRC3Vec
/* 807901C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 807901C8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807901CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807901D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807901D4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807901D8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807901DC  EC 21 00 72 */	fmuls f1, f1, f1
/* 807901E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807901E4  EC 41 00 2A */	fadds f2, f1, f0
/* 807901E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807901EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807901F0  40 81 00 0C */	ble lbl_807901FC
/* 807901F4  FC 00 10 34 */	frsqrte f0, f2
/* 807901F8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807901FC:
/* 807901FC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80790200  4B AD 74 75 */	bl cM_atan2s__Fff
/* 80790204  7C 60 07 34 */	extsh r0, r3
/* 80790208  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8079020C  41 81 00 10 */	bgt lbl_8079021C
/* 80790210  2C 00 E0 00 */	cmpwi r0, -8192
/* 80790214  41 80 00 08 */	blt lbl_8079021C
/* 80790218  B0 1C 04 DC */	sth r0, 0x4dc(r28)
lbl_8079021C:
/* 8079021C  38 61 00 44 */	addi r3, r1, 0x44
/* 80790220  38 80 FF FF */	li r4, -1
/* 80790224  4B 8E 73 CD */	bl __dt__11dBgS_GndChkFv
lbl_80790228:
/* 80790228  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8079022C  A8 9C 04 DC */	lha r4, 0x4dc(r28)
/* 80790230  38 A0 00 04 */	li r5, 4
/* 80790234  38 C0 10 00 */	li r6, 0x1000
/* 80790238  4B AE 03 D1 */	bl cLib_addCalcAngleS2__FPssss
/* 8079023C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80790240  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80790244  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80790248  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079024C  7F 83 E3 78 */	mr r3, r28
/* 80790250  38 9C 05 BC */	addi r4, r28, 0x5bc
/* 80790254  38 BC 05 38 */	addi r5, r28, 0x538
/* 80790258  38 C1 00 20 */	addi r6, r1, 0x20
/* 8079025C  48 00 16 ED */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80790260  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80790264  4B BD 1F C1 */	bl _restgpr_28
/* 80790268  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8079026C  7C 08 03 A6 */	mtlr r0
/* 80790270  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80790274  4E 80 00 20 */	blr 
