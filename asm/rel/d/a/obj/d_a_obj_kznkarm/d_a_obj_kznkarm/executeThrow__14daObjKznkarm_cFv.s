lbl_80C4FDB4:
/* 80C4FDB4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80C4FDB8  7C 08 02 A6 */	mflr r0
/* 80C4FDBC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80C4FDC0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80C4FDC4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80C4FDC8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80C4FDCC  4B 71 23 FC */	b _savegpr_24
/* 80C4FDD0  7C 7D 1B 78 */	mr r29, r3
/* 80C4FDD4  3C 60 80 C5 */	lis r3, M_attr__14daObjKznkarm_c@ha
/* 80C4FDD8  3B E3 0D 08 */	addi r31, r3, M_attr__14daObjKznkarm_c@l
/* 80C4FDDC  88 1D 07 AE */	lbz r0, 0x7ae(r29)
/* 80C4FDE0  28 00 00 00 */	cmplwi r0, 0
/* 80C4FDE4  41 82 00 38 */	beq lbl_80C4FE1C
/* 80C4FDE8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80C4FDEC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80C4FDF0  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80C4FDF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C4FDF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4FDFC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C4FE00  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80C4FE04  C0 1D 05 34 */	lfs f0, 0x534(r29)
/* 80C4FE08  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C4FE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FE10  40 80 00 30 */	bge lbl_80C4FE40
/* 80C4FE14  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C4FE18  48 00 00 28 */	b lbl_80C4FE40
lbl_80C4FE1C:
/* 80C4FE1C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80C4FE20  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80C4FE24  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4FE28  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C4FE2C  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80C4FE30  C0 3D 05 34 */	lfs f1, 0x534(r29)
/* 80C4FE34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C4FE38  40 80 00 08 */	bge lbl_80C4FE40
/* 80C4FE3C  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
lbl_80C4FE40:
/* 80C4FE40  C3 FD 04 FC */	lfs f31, 0x4fc(r29)
/* 80C4FE44  7F A3 EB 78 */	mr r3, r29
/* 80C4FE48  38 80 00 00 */	li r4, 0
/* 80C4FE4C  4B 3C A8 14 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80C4FE50  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 80C4FE54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C4FE58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C4FE5C  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80C4FE60  7F C4 F3 78 */	mr r4, r30
/* 80C4FE64  4B 42 6C 48 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C4FE68  D3 FD 04 FC */	stfs f31, 0x4fc(r29)
/* 80C4FE6C  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 80C4FE70  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80C4FE74  41 82 01 78 */	beq lbl_80C4FFEC
/* 80C4FE78  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C4FE7C  4B 6F 72 BC */	b PSVECSquareMag
/* 80C4FE80  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C4FE84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FE88  40 81 00 58 */	ble lbl_80C4FEE0
/* 80C4FE8C  FC 00 08 34 */	frsqrte f0, f1
/* 80C4FE90  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80C4FE94  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FE98  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80C4FE9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FEA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FEA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FEA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FEAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FEB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FEB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FEB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FEBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FEC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4FEC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4FEC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4FECC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4FED0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4FED4  FF E1 00 32 */	fmul f31, f1, f0
/* 80C4FED8  FF E0 F8 18 */	frsp f31, f31
/* 80C4FEDC  48 00 00 90 */	b lbl_80C4FF6C
lbl_80C4FEE0:
/* 80C4FEE0  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80C4FEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FEE8  40 80 00 10 */	bge lbl_80C4FEF8
/* 80C4FEEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4FEF0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C4FEF4  48 00 00 78 */	b lbl_80C4FF6C
lbl_80C4FEF8:
/* 80C4FEF8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C4FEFC  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80C4FF00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4FF04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4FF08  7C 03 00 00 */	cmpw r3, r0
/* 80C4FF0C  41 82 00 14 */	beq lbl_80C4FF20
/* 80C4FF10  40 80 00 40 */	bge lbl_80C4FF50
/* 80C4FF14  2C 03 00 00 */	cmpwi r3, 0
/* 80C4FF18  41 82 00 20 */	beq lbl_80C4FF38
/* 80C4FF1C  48 00 00 34 */	b lbl_80C4FF50
lbl_80C4FF20:
/* 80C4FF20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4FF24  41 82 00 0C */	beq lbl_80C4FF30
/* 80C4FF28  38 00 00 01 */	li r0, 1
/* 80C4FF2C  48 00 00 28 */	b lbl_80C4FF54
lbl_80C4FF30:
/* 80C4FF30  38 00 00 02 */	li r0, 2
/* 80C4FF34  48 00 00 20 */	b lbl_80C4FF54
lbl_80C4FF38:
/* 80C4FF38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4FF3C  41 82 00 0C */	beq lbl_80C4FF48
/* 80C4FF40  38 00 00 05 */	li r0, 5
/* 80C4FF44  48 00 00 10 */	b lbl_80C4FF54
lbl_80C4FF48:
/* 80C4FF48  38 00 00 03 */	li r0, 3
/* 80C4FF4C  48 00 00 08 */	b lbl_80C4FF54
lbl_80C4FF50:
/* 80C4FF50  38 00 00 04 */	li r0, 4
lbl_80C4FF54:
/* 80C4FF54  2C 00 00 01 */	cmpwi r0, 1
/* 80C4FF58  40 82 00 10 */	bne lbl_80C4FF68
/* 80C4FF5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4FF60  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C4FF64  48 00 00 08 */	b lbl_80C4FF6C
lbl_80C4FF68:
/* 80C4FF68  FF E0 08 90 */	fmr f31, f1
lbl_80C4FF6C:
/* 80C4FF6C  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4FF70  38 03 0F 10 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4FF74  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C4FF78  7F C3 F3 78 */	mr r3, r30
/* 80C4FF7C  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 80C4FF80  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80C4FF84  4B 42 47 C0 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4FF88  38 81 00 5C */	addi r4, r1, 0x5c
/* 80C4FF8C  34 01 00 5C */	addic. r0, r1, 0x5c
/* 80C4FF90  41 82 00 2C */	beq lbl_80C4FFBC
/* 80C4FF94  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C4FF98  7C 65 1B 78 */	mr r5, r3
/* 80C4FF9C  4B 6F 73 2C */	b C_VECReflect
/* 80C4FFA0  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C4FFA4  7C 64 1B 78 */	mr r4, r3
/* 80C4FFA8  38 BF 00 00 */	addi r5, r31, 0
/* 80C4FFAC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C4FFB0  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C4FFB4  4B 6F 71 24 */	b PSVECScale
/* 80C4FFB8  48 00 00 1C */	b lbl_80C4FFD4
lbl_80C4FFBC:
/* 80C4FFBC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80C4FFC0  38 7F 00 00 */	addi r3, r31, 0
/* 80C4FFC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C4FFC8  FC 00 00 50 */	fneg f0, f0
/* 80C4FFCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C4FFD0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80C4FFD4:
/* 80C4FFD4  C0 1D 06 4C */	lfs f0, 0x64c(r29)
/* 80C4FFD8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80C4FFDC  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4FFE0  38 03 0F 10 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4FFE4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C4FFE8  48 00 00 28 */	b lbl_80C50010
lbl_80C4FFEC:
/* 80C4FFEC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80C4FFF0  41 82 00 20 */	beq lbl_80C50010
/* 80C4FFF4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C4FFF8  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80C4FFFC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80C50000  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80C50004  7F A3 EB 78 */	mr r3, r29
/* 80C50008  38 80 00 03 */	li r4, 3
/* 80C5000C  4B FF F8 4D */	bl setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e
lbl_80C50010:
/* 80C50010  80 1D 05 E0 */	lwz r0, 0x5e0(r29)
/* 80C50014  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C50018  41 82 01 84 */	beq lbl_80C5019C
/* 80C5001C  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C50020  4B 6F 71 18 */	b PSVECSquareMag
/* 80C50024  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C50028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5002C  40 81 00 58 */	ble lbl_80C50084
/* 80C50030  FC 00 08 34 */	frsqrte f0, f1
/* 80C50034  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80C50038  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5003C  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80C50040  FC 00 00 32 */	fmul f0, f0, f0
/* 80C50044  FC 01 00 32 */	fmul f0, f1, f0
/* 80C50048  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5004C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C50050  FC 44 00 32 */	fmul f2, f4, f0
/* 80C50054  FC 00 00 32 */	fmul f0, f0, f0
/* 80C50058  FC 01 00 32 */	fmul f0, f1, f0
/* 80C5005C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C50060  FC 02 00 32 */	fmul f0, f2, f0
/* 80C50064  FC 44 00 32 */	fmul f2, f4, f0
/* 80C50068  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5006C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C50070  FC 03 00 28 */	fsub f0, f3, f0
/* 80C50074  FC 02 00 32 */	fmul f0, f2, f0
/* 80C50078  FF E1 00 32 */	fmul f31, f1, f0
/* 80C5007C  FF E0 F8 18 */	frsp f31, f31
/* 80C50080  48 00 00 90 */	b lbl_80C50110
lbl_80C50084:
/* 80C50084  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80C50088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C5008C  40 80 00 10 */	bge lbl_80C5009C
/* 80C50090  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C50094  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C50098  48 00 00 78 */	b lbl_80C50110
lbl_80C5009C:
/* 80C5009C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C500A0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C500A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C500A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C500AC  7C 03 00 00 */	cmpw r3, r0
/* 80C500B0  41 82 00 14 */	beq lbl_80C500C4
/* 80C500B4  40 80 00 40 */	bge lbl_80C500F4
/* 80C500B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C500BC  41 82 00 20 */	beq lbl_80C500DC
/* 80C500C0  48 00 00 34 */	b lbl_80C500F4
lbl_80C500C4:
/* 80C500C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C500C8  41 82 00 0C */	beq lbl_80C500D4
/* 80C500CC  38 00 00 01 */	li r0, 1
/* 80C500D0  48 00 00 28 */	b lbl_80C500F8
lbl_80C500D4:
/* 80C500D4  38 00 00 02 */	li r0, 2
/* 80C500D8  48 00 00 20 */	b lbl_80C500F8
lbl_80C500DC:
/* 80C500DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C500E0  41 82 00 0C */	beq lbl_80C500EC
/* 80C500E4  38 00 00 05 */	li r0, 5
/* 80C500E8  48 00 00 10 */	b lbl_80C500F8
lbl_80C500EC:
/* 80C500EC  38 00 00 03 */	li r0, 3
/* 80C500F0  48 00 00 08 */	b lbl_80C500F8
lbl_80C500F4:
/* 80C500F4  38 00 00 04 */	li r0, 4
lbl_80C500F8:
/* 80C500F8  2C 00 00 01 */	cmpwi r0, 1
/* 80C500FC  40 82 00 10 */	bne lbl_80C5010C
/* 80C50100  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C50104  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C50108  48 00 00 08 */	b lbl_80C50110
lbl_80C5010C:
/* 80C5010C  FF E0 08 90 */	fmr f31, f1
lbl_80C50110:
/* 80C50110  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C50114  38 03 0F 10 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C50118  90 01 00 58 */	stw r0, 0x58(r1)
/* 80C5011C  7F C3 F3 78 */	mr r3, r30
/* 80C50120  38 9D 05 74 */	addi r4, r29, 0x574
/* 80C50124  38 A1 00 48 */	addi r5, r1, 0x48
/* 80C50128  4B 42 46 1C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C5012C  38 81 00 48 */	addi r4, r1, 0x48
/* 80C50130  34 01 00 48 */	addic. r0, r1, 0x48
/* 80C50134  41 82 00 2C */	beq lbl_80C50160
/* 80C50138  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C5013C  7C 65 1B 78 */	mr r5, r3
/* 80C50140  4B 6F 71 88 */	b C_VECReflect
/* 80C50144  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80C50148  7C 64 1B 78 */	mr r4, r3
/* 80C5014C  38 BF 00 00 */	addi r5, r31, 0
/* 80C50150  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C50154  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80C50158  4B 6F 6F 80 */	b PSVECScale
/* 80C5015C  48 00 00 28 */	b lbl_80C50184
lbl_80C50160:
/* 80C50160  C0 5D 04 F8 */	lfs f2, 0x4f8(r29)
/* 80C50164  38 7F 00 00 */	addi r3, r31, 0
/* 80C50168  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C5016C  FC 20 00 50 */	fneg f1, f0
/* 80C50170  EC 02 00 72 */	fmuls f0, f2, f1
/* 80C50174  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80C50178  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80C5017C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C50180  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_80C50184:
/* 80C50184  A8 1D 07 AC */	lha r0, 0x7ac(r29)
/* 80C50188  1C 00 FF FF */	mulli r0, r0, -1
/* 80C5018C  B0 1D 07 AC */	sth r0, 0x7ac(r29)
/* 80C50190  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C50194  38 03 0F 10 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C50198  90 01 00 58 */	stw r0, 0x58(r1)
lbl_80C5019C:
/* 80C5019C  88 1D 07 AE */	lbz r0, 0x7ae(r29)
/* 80C501A0  28 00 00 00 */	cmplwi r0, 0
/* 80C501A4  40 82 00 FC */	bne lbl_80C502A0
/* 80C501A8  80 1D 05 E0 */	lwz r0, 0x5e0(r29)
/* 80C501AC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80C501B0  41 82 00 F0 */	beq lbl_80C502A0
/* 80C501B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C501B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C501BC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C501C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C501C4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C501C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C501CC  C0 1D 07 80 */	lfs f0, 0x780(r29)
/* 80C501D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C501D4  3B 00 00 00 */	li r24, 0
/* 80C501D8  3B C0 00 00 */	li r30, 0
/* 80C501DC  3B 80 00 00 */	li r28, 0
/* 80C501E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C501E4  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C501E8  3C 60 80 C5 */	lis r3, w_eff_id@ha
/* 80C501EC  3B 63 0E 88 */	addi r27, r3, w_eff_id@l
lbl_80C501F0:
/* 80C501F0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C501F4  38 00 00 FF */	li r0, 0xff
/* 80C501F8  90 01 00 08 */	stw r0, 8(r1)
/* 80C501FC  38 80 00 00 */	li r4, 0
/* 80C50200  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C50204  38 00 FF FF */	li r0, -1
/* 80C50208  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5020C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C50210  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C50214  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C50218  3B 3C 07 98 */	addi r25, r28, 0x798
/* 80C5021C  7C 9D C8 2E */	lwzx r4, r29, r25
/* 80C50220  38 A0 00 00 */	li r5, 0
/* 80C50224  7C DB F2 2E */	lhzx r6, r27, r30
/* 80C50228  38 E1 00 3C */	addi r7, r1, 0x3c
/* 80C5022C  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80C50230  39 20 00 00 */	li r9, 0
/* 80C50234  39 40 00 00 */	li r10, 0
/* 80C50238  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C5023C  4B 3F D2 90 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C50240  7C 7D C9 2E */	stwx r3, r29, r25
/* 80C50244  3B 18 00 01 */	addi r24, r24, 1
/* 80C50248  2C 18 00 04 */	cmpwi r24, 4
/* 80C5024C  3B DE 00 02 */	addi r30, r30, 2
/* 80C50250  3B 9C 00 04 */	addi r28, r28, 4
/* 80C50254  41 80 FF 9C */	blt lbl_80C501F0
/* 80C50258  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80C5025C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80C50260  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C50264  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C50268  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C5026C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C50270  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C50274  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80C50278  38 C0 00 00 */	li r6, 0
/* 80C5027C  38 E0 00 00 */	li r7, 0
/* 80C50280  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C50284  FC 40 08 90 */	fmr f2, f1
/* 80C50288  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C5028C  FC 80 18 90 */	fmr f4, f3
/* 80C50290  39 00 00 00 */	li r8, 0
/* 80C50294  4B 65 B6 F0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C50298  38 00 00 01 */	li r0, 1
/* 80C5029C  98 1D 07 AE */	stb r0, 0x7ae(r29)
lbl_80C502A0:
/* 80C502A0  88 1D 07 AE */	lbz r0, 0x7ae(r29)
/* 80C502A4  28 00 00 00 */	cmplwi r0, 0
/* 80C502A8  41 82 00 24 */	beq lbl_80C502CC
/* 80C502AC  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80C502B0  38 7F 00 00 */	addi r3, r31, 0
/* 80C502B4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C502B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C502BC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80C502C0  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80C502C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C502C8  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_80C502CC:
/* 80C502CC  C0 3D 05 00 */	lfs f1, 0x500(r29)
/* 80C502D0  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80C502D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C502D8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C502DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C502E0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C502E4  38 61 00 30 */	addi r3, r1, 0x30
/* 80C502E8  4B 6F 6E 50 */	b PSVECSquareMag
/* 80C502EC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80C502F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C502F4  40 81 00 58 */	ble lbl_80C5034C
/* 80C502F8  FC 00 08 34 */	frsqrte f0, f1
/* 80C502FC  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80C50300  FC 44 00 32 */	fmul f2, f4, f0
/* 80C50304  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80C50308  FC 00 00 32 */	fmul f0, f0, f0
/* 80C5030C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C50310  FC 03 00 28 */	fsub f0, f3, f0
/* 80C50314  FC 02 00 32 */	fmul f0, f2, f0
/* 80C50318  FC 44 00 32 */	fmul f2, f4, f0
/* 80C5031C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C50320  FC 01 00 32 */	fmul f0, f1, f0
/* 80C50324  FC 03 00 28 */	fsub f0, f3, f0
/* 80C50328  FC 02 00 32 */	fmul f0, f2, f0
/* 80C5032C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C50330  FC 00 00 32 */	fmul f0, f0, f0
/* 80C50334  FC 01 00 32 */	fmul f0, f1, f0
/* 80C50338  FC 03 00 28 */	fsub f0, f3, f0
/* 80C5033C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C50340  FC 21 00 32 */	fmul f1, f1, f0
/* 80C50344  FC 20 08 18 */	frsp f1, f1
/* 80C50348  48 00 00 88 */	b lbl_80C503D0
lbl_80C5034C:
/* 80C5034C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80C50350  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C50354  40 80 00 10 */	bge lbl_80C50364
/* 80C50358  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C5035C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C50360  48 00 00 70 */	b lbl_80C503D0
lbl_80C50364:
/* 80C50364  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C50368  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80C5036C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C50370  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C50374  7C 03 00 00 */	cmpw r3, r0
/* 80C50378  41 82 00 14 */	beq lbl_80C5038C
/* 80C5037C  40 80 00 40 */	bge lbl_80C503BC
/* 80C50380  2C 03 00 00 */	cmpwi r3, 0
/* 80C50384  41 82 00 20 */	beq lbl_80C503A4
/* 80C50388  48 00 00 34 */	b lbl_80C503BC
lbl_80C5038C:
/* 80C5038C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C50390  41 82 00 0C */	beq lbl_80C5039C
/* 80C50394  38 00 00 01 */	li r0, 1
/* 80C50398  48 00 00 28 */	b lbl_80C503C0
lbl_80C5039C:
/* 80C5039C  38 00 00 02 */	li r0, 2
/* 80C503A0  48 00 00 20 */	b lbl_80C503C0
lbl_80C503A4:
/* 80C503A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C503A8  41 82 00 0C */	beq lbl_80C503B4
/* 80C503AC  38 00 00 05 */	li r0, 5
/* 80C503B0  48 00 00 10 */	b lbl_80C503C0
lbl_80C503B4:
/* 80C503B4  38 00 00 03 */	li r0, 3
/* 80C503B8  48 00 00 08 */	b lbl_80C503C0
lbl_80C503BC:
/* 80C503BC  38 00 00 04 */	li r0, 4
lbl_80C503C0:
/* 80C503C0  2C 00 00 01 */	cmpwi r0, 1
/* 80C503C4  40 82 00 0C */	bne lbl_80C503D0
/* 80C503C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C503CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C503D0:
/* 80C503D0  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 80C503D4  A8 1D 07 AC */	lha r0, 0x7ac(r29)
/* 80C503D8  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 80C503DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C503E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C503E4  3C 00 43 30 */	lis r0, 0x4330
/* 80C503E8  90 01 00 70 */	stw r0, 0x70(r1)
/* 80C503EC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80C503F0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80C503F4  38 7F 00 00 */	addi r3, r31, 0
/* 80C503F8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C503FC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C50400  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C50404  FC 00 00 1E */	fctiwz f0, f0
/* 80C50408  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80C5040C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80C50410  7C 04 02 14 */	add r0, r4, r0
/* 80C50414  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80C50418  7F A3 EB 78 */	mr r3, r29
/* 80C5041C  48 00 02 ED */	bl setBaseMtx__14daObjKznkarm_cFv
/* 80C50420  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80C50424  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80C50428  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80C5042C  4B 71 1D E8 */	b _restgpr_24
/* 80C50430  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80C50434  7C 08 03 A6 */	mtlr r0
/* 80C50438  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80C5043C  4E 80 00 20 */	blr 
