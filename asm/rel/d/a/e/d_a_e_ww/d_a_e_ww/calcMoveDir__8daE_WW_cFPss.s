lbl_807EDE8C:
/* 807EDE8C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 807EDE90  7C 08 02 A6 */	mflr r0
/* 807EDE94  90 01 01 24 */	stw r0, 0x124(r1)
/* 807EDE98  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 807EDE9C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 807EDEA0  39 61 01 10 */	addi r11, r1, 0x110
/* 807EDEA4  4B B7 43 10 */	b _savegpr_19
/* 807EDEA8  7C 75 1B 78 */	mr r21, r3
/* 807EDEAC  7C 96 23 78 */	mr r22, r4
/* 807EDEB0  7C B7 2B 78 */	mr r23, r5
/* 807EDEB4  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807EDEB8  3B C3 F7 70 */	addi r30, r3, lit_3905@l
/* 807EDEBC  38 61 00 68 */	addi r3, r1, 0x68
/* 807EDEC0  4B 88 9D A8 */	b __ct__11dBgS_LinChkFv
/* 807EDEC4  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807EDEC8  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807EDECC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807EDED0  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 807EDED4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EDED8  A0 1E 01 10 */	lhz r0, 0x110(r30)
/* 807EDEDC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 807EDEE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EDEE4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807EDEE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807EDEEC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807EDEF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807EDEF4  C0 55 04 D8 */	lfs f2, 0x4d8(r21)
/* 807EDEF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807EDEFC  C0 15 04 D4 */	lfs f0, 0x4d4(r21)
/* 807EDF00  EC 21 00 2A */	fadds f1, f1, f0
/* 807EDF04  C0 15 04 D0 */	lfs f0, 0x4d0(r21)
/* 807EDF08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807EDF0C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807EDF10  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807EDF14  3B 00 00 00 */	li r24, 0
/* 807EDF18  3A 80 00 00 */	li r20, 0
/* 807EDF1C  3A 60 00 00 */	li r19, 0
/* 807EDF20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807EDF24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807EDF28  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 807EDF2C  3B A1 00 98 */	addi r29, r1, 0x98
/* 807EDF30  3B 81 00 7C */	addi r28, r1, 0x7c
/* 807EDF34  C3 FE 00 B0 */	lfs f31, 0xb0(r30)
/* 807EDF38  3B 61 00 48 */	addi r27, r1, 0x48
/* 807EDF3C  3B E1 00 0C */	addi r31, r1, 0xc
/* 807EDF40  3B 41 00 1C */	addi r26, r1, 0x1c
lbl_807EDF44:
/* 807EDF44  7F FB 9D 2E */	stfsx f31, r27, r19
/* 807EDF48  38 61 00 3C */	addi r3, r1, 0x3c
/* 807EDF4C  38 81 00 30 */	addi r4, r1, 0x30
/* 807EDF50  A8 B5 04 E6 */	lha r5, 0x4e6(r21)
/* 807EDF54  7C 1F A2 AE */	lhax r0, r31, r20
/* 807EDF58  7C 05 02 14 */	add r0, r5, r0
/* 807EDF5C  7C 05 07 34 */	extsh r5, r0
/* 807EDF60  38 C1 00 24 */	addi r6, r1, 0x24
/* 807EDF64  4B A8 2E 5C */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807EDF68  38 61 00 68 */	addi r3, r1, 0x68
/* 807EDF6C  38 81 00 30 */	addi r4, r1, 0x30
/* 807EDF70  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807EDF74  38 C0 00 00 */	li r6, 0
/* 807EDF78  4B 88 9D EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807EDF7C  38 00 00 00 */	li r0, 0
/* 807EDF80  7C 1A A3 2E */	sthx r0, r26, r20
/* 807EDF84  7F 23 CB 78 */	mr r3, r25
/* 807EDF88  38 81 00 68 */	addi r4, r1, 0x68
/* 807EDF8C  4B 88 64 28 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 807EDF90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807EDF94  41 82 01 48 */	beq lbl_807EE0DC
/* 807EDF98  38 75 04 D0 */	addi r3, r21, 0x4d0
/* 807EDF9C  7F A4 EB 78 */	mr r4, r29
/* 807EDFA0  4B B5 93 FC */	b PSVECSquareDistance
/* 807EDFA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807EDFA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EDFAC  40 81 00 58 */	ble lbl_807EE004
/* 807EDFB0  FC 00 08 34 */	frsqrte f0, f1
/* 807EDFB4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807EDFB8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EDFBC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807EDFC0  FC 00 00 32 */	fmul f0, f0, f0
/* 807EDFC4  FC 01 00 32 */	fmul f0, f1, f0
/* 807EDFC8  FC 03 00 28 */	fsub f0, f3, f0
/* 807EDFCC  FC 02 00 32 */	fmul f0, f2, f0
/* 807EDFD0  FC 44 00 32 */	fmul f2, f4, f0
/* 807EDFD4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EDFD8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EDFDC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EDFE0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EDFE4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EDFE8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EDFEC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EDFF0  FC 03 00 28 */	fsub f0, f3, f0
/* 807EDFF4  FC 02 00 32 */	fmul f0, f2, f0
/* 807EDFF8  FC 21 00 32 */	fmul f1, f1, f0
/* 807EDFFC  FC 20 08 18 */	frsp f1, f1
/* 807EE000  48 00 00 88 */	b lbl_807EE088
lbl_807EE004:
/* 807EE004  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807EE008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EE00C  40 80 00 10 */	bge lbl_807EE01C
/* 807EE010  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EE014  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807EE018  48 00 00 70 */	b lbl_807EE088
lbl_807EE01C:
/* 807EE01C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807EE020  80 81 00 08 */	lwz r4, 8(r1)
/* 807EE024  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EE028  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EE02C  7C 03 00 00 */	cmpw r3, r0
/* 807EE030  41 82 00 14 */	beq lbl_807EE044
/* 807EE034  40 80 00 40 */	bge lbl_807EE074
/* 807EE038  2C 03 00 00 */	cmpwi r3, 0
/* 807EE03C  41 82 00 20 */	beq lbl_807EE05C
/* 807EE040  48 00 00 34 */	b lbl_807EE074
lbl_807EE044:
/* 807EE044  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EE048  41 82 00 0C */	beq lbl_807EE054
/* 807EE04C  38 00 00 01 */	li r0, 1
/* 807EE050  48 00 00 28 */	b lbl_807EE078
lbl_807EE054:
/* 807EE054  38 00 00 02 */	li r0, 2
/* 807EE058  48 00 00 20 */	b lbl_807EE078
lbl_807EE05C:
/* 807EE05C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EE060  41 82 00 0C */	beq lbl_807EE06C
/* 807EE064  38 00 00 05 */	li r0, 5
/* 807EE068  48 00 00 10 */	b lbl_807EE078
lbl_807EE06C:
/* 807EE06C  38 00 00 03 */	li r0, 3
/* 807EE070  48 00 00 08 */	b lbl_807EE078
lbl_807EE074:
/* 807EE074  38 00 00 04 */	li r0, 4
lbl_807EE078:
/* 807EE078  2C 00 00 01 */	cmpwi r0, 1
/* 807EE07C  40 82 00 0C */	bne lbl_807EE088
/* 807EE080  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807EE084  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807EE088:
/* 807EE088  7C 3B 9D 2E */	stfsx f1, r27, r19
/* 807EE08C  7F 23 CB 78 */	mr r3, r25
/* 807EE090  7F 84 E3 78 */	mr r4, r28
/* 807EE094  38 A1 00 54 */	addi r5, r1, 0x54
/* 807EE098  4B 88 66 AC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807EE09C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 807EE0A0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 807EE0A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EE0A8  40 80 00 34 */	bge lbl_807EE0DC
/* 807EE0AC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 807EE0B0  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 807EE0B4  4B A7 95 C0 */	b cM_atan2s__Fff
/* 807EE0B8  38 81 00 14 */	addi r4, r1, 0x14
/* 807EE0BC  7C 64 A3 2E */	sthx r3, r4, r20
/* 807EE0C0  38 14 07 50 */	addi r0, r20, 0x750
/* 807EE0C4  7C 75 03 2E */	sthx r3, r21, r0
/* 807EE0C8  38 00 00 01 */	li r0, 1
/* 807EE0CC  7C 1A A3 2E */	sthx r0, r26, r20
/* 807EE0D0  38 60 00 1E */	li r3, 0x1e
/* 807EE0D4  38 13 07 44 */	addi r0, r19, 0x744
/* 807EE0D8  7C 75 01 2E */	stwx r3, r21, r0
lbl_807EE0DC:
/* 807EE0DC  3B 18 00 01 */	addi r24, r24, 1
/* 807EE0E0  2C 18 00 03 */	cmpwi r24, 3
/* 807EE0E4  3A 94 00 02 */	addi r20, r20, 2
/* 807EE0E8  3A 73 00 04 */	addi r19, r19, 4
/* 807EE0EC  41 80 FE 58 */	blt lbl_807EDF44
/* 807EE0F0  3C 60 80 7F */	lis r3, stringBase0@ha
/* 807EE0F4  38 63 F8 B8 */	addi r3, r3, stringBase0@l
/* 807EE0F8  38 63 00 05 */	addi r3, r3, 5
/* 807EE0FC  38 99 3E C8 */	addi r4, r25, 0x3ec8
/* 807EE100  4B B7 A8 94 */	b strcmp
/* 807EE104  2C 03 00 00 */	cmpwi r3, 0
/* 807EE108  40 82 00 6C */	bne lbl_807EE174
/* 807EE10C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807EE110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807EE114  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 807EE118  2C 00 00 04 */	cmpwi r0, 4
/* 807EE11C  40 82 00 58 */	bne lbl_807EE174
/* 807EE120  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 807EE124  2C 00 00 00 */	cmpwi r0, 0
/* 807EE128  41 82 00 14 */	beq lbl_807EE13C
/* 807EE12C  38 00 00 00 */	li r0, 0
/* 807EE130  90 15 07 4C */	stw r0, 0x74c(r21)
/* 807EE134  90 15 07 48 */	stw r0, 0x748(r21)
/* 807EE138  48 00 00 3C */	b lbl_807EE174
lbl_807EE13C:
/* 807EE13C  80 15 07 48 */	lwz r0, 0x748(r21)
/* 807EE140  2C 00 00 00 */	cmpwi r0, 0
/* 807EE144  41 82 00 14 */	beq lbl_807EE158
/* 807EE148  A8 15 07 52 */	lha r0, 0x752(r21)
/* 807EE14C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 807EE150  38 00 00 01 */	li r0, 1
/* 807EE154  B0 01 00 1E */	sth r0, 0x1e(r1)
lbl_807EE158:
/* 807EE158  80 15 07 4C */	lwz r0, 0x74c(r21)
/* 807EE15C  2C 00 00 00 */	cmpwi r0, 0
/* 807EE160  41 82 00 14 */	beq lbl_807EE174
/* 807EE164  A8 15 07 54 */	lha r0, 0x754(r21)
/* 807EE168  B0 01 00 18 */	sth r0, 0x18(r1)
/* 807EE16C  38 00 00 01 */	li r0, 1
/* 807EE170  B0 01 00 20 */	sth r0, 0x20(r1)
lbl_807EE174:
/* 807EE174  A8 61 00 1E */	lha r3, 0x1e(r1)
/* 807EE178  7C 60 07 35 */	extsh. r0, r3
/* 807EE17C  41 82 00 8C */	beq lbl_807EE208
/* 807EE180  A8 01 00 20 */	lha r0, 0x20(r1)
/* 807EE184  2C 00 00 00 */	cmpwi r0, 0
/* 807EE188  41 82 00 80 */	beq lbl_807EE208
/* 807EE18C  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 807EE190  2C 00 00 00 */	cmpwi r0, 0
/* 807EE194  41 82 00 30 */	beq lbl_807EE1C4
/* 807EE198  88 15 07 59 */	lbz r0, 0x759(r21)
/* 807EE19C  28 00 00 01 */	cmplwi r0, 1
/* 807EE1A0  40 82 00 14 */	bne lbl_807EE1B4
/* 807EE1A4  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE1A8  38 03 E0 00 */	addi r0, r3, -8192
/* 807EE1AC  7C 19 07 34 */	extsh r25, r0
/* 807EE1B0  48 00 00 4C */	b lbl_807EE1FC
lbl_807EE1B4:
/* 807EE1B4  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE1B8  38 03 20 00 */	addi r0, r3, 0x2000
/* 807EE1BC  7C 19 07 34 */	extsh r25, r0
/* 807EE1C0  48 00 00 3C */	b lbl_807EE1FC
lbl_807EE1C4:
/* 807EE1C4  88 15 07 59 */	lbz r0, 0x759(r21)
/* 807EE1C8  28 00 00 01 */	cmplwi r0, 1
/* 807EE1CC  40 82 00 14 */	bne lbl_807EE1E0
/* 807EE1D0  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE1D4  38 03 E0 00 */	addi r0, r3, -8192
/* 807EE1D8  7C 19 07 34 */	extsh r25, r0
/* 807EE1DC  48 00 00 20 */	b lbl_807EE1FC
lbl_807EE1E0:
/* 807EE1E0  28 00 00 02 */	cmplwi r0, 2
/* 807EE1E4  40 82 00 14 */	bne lbl_807EE1F8
/* 807EE1E8  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE1EC  38 03 20 00 */	addi r0, r3, 0x2000
/* 807EE1F0  7C 19 07 34 */	extsh r25, r0
/* 807EE1F4  48 00 00 08 */	b lbl_807EE1FC
lbl_807EE1F8:
/* 807EE1F8  7E F9 BB 78 */	mr r25, r23
lbl_807EE1FC:
/* 807EE1FC  38 00 00 1E */	li r0, 0x1e
/* 807EE200  90 15 07 38 */	stw r0, 0x738(r21)
/* 807EE204  48 00 01 B0 */	b lbl_807EE3B4
lbl_807EE208:
/* 807EE208  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 807EE20C  2C 00 00 00 */	cmpwi r0, 0
/* 807EE210  41 82 00 9C */	beq lbl_807EE2AC
/* 807EE214  7C 60 07 35 */	extsh. r0, r3
/* 807EE218  41 82 00 14 */	beq lbl_807EE22C
/* 807EE21C  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE220  38 03 20 00 */	addi r0, r3, 0x2000
/* 807EE224  7C 19 07 34 */	extsh r25, r0
/* 807EE228  48 00 00 48 */	b lbl_807EE270
lbl_807EE22C:
/* 807EE22C  A8 01 00 20 */	lha r0, 0x20(r1)
/* 807EE230  2C 00 00 00 */	cmpwi r0, 0
/* 807EE234  41 82 00 14 */	beq lbl_807EE248
/* 807EE238  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE23C  38 03 E0 00 */	addi r0, r3, -8192
/* 807EE240  7C 19 07 34 */	extsh r25, r0
/* 807EE244  48 00 00 2C */	b lbl_807EE270
lbl_807EE248:
/* 807EE248  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 807EE24C  A8 01 00 14 */	lha r0, 0x14(r1)
/* 807EE250  7C 03 00 50 */	subf r0, r3, r0
/* 807EE254  7C 00 07 35 */	extsh. r0, r0
/* 807EE258  40 81 00 10 */	ble lbl_807EE268
/* 807EE25C  38 03 20 00 */	addi r0, r3, 0x2000
/* 807EE260  7C 19 07 34 */	extsh r25, r0
/* 807EE264  48 00 00 0C */	b lbl_807EE270
lbl_807EE268:
/* 807EE268  38 03 E0 00 */	addi r0, r3, -8192
/* 807EE26C  7C 19 07 34 */	extsh r25, r0
lbl_807EE270:
/* 807EE270  80 15 07 38 */	lwz r0, 0x738(r21)
/* 807EE274  2C 00 00 00 */	cmpwi r0, 0
/* 807EE278  40 82 01 3C */	bne lbl_807EE3B4
/* 807EE27C  7E A3 AB 78 */	mr r3, r21
/* 807EE280  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807EE284  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807EE288  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807EE28C  4B 82 C4 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EE290  7C 19 18 50 */	subf r0, r25, r3
/* 807EE294  7C 03 07 34 */	extsh r3, r0
/* 807EE298  4B B7 6E 38 */	b abs
/* 807EE29C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807EE2A0  40 80 01 14 */	bge lbl_807EE3B4
/* 807EE2A4  7E F9 BB 78 */	mr r25, r23
/* 807EE2A8  48 00 01 0C */	b lbl_807EE3B4
lbl_807EE2AC:
/* 807EE2AC  7C 60 07 35 */	extsh. r0, r3
/* 807EE2B0  41 82 00 7C */	beq lbl_807EE32C
/* 807EE2B4  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 807EE2B8  AA 81 00 16 */	lha r20, 0x16(r1)
/* 807EE2BC  7C 00 A0 50 */	subf r0, r0, r20
/* 807EE2C0  7C 00 07 35 */	extsh. r0, r0
/* 807EE2C4  38 14 C0 00 */	addi r0, r20, -16384
/* 807EE2C8  7C 13 07 34 */	extsh r19, r0
/* 807EE2CC  40 80 00 0C */	bge lbl_807EE2D8
/* 807EE2D0  38 14 40 00 */	addi r0, r20, 0x4000
/* 807EE2D4  7C 13 07 34 */	extsh r19, r0
lbl_807EE2D8:
/* 807EE2D8  7E 79 9B 78 */	mr r25, r19
/* 807EE2DC  80 15 07 38 */	lwz r0, 0x738(r21)
/* 807EE2E0  2C 00 00 00 */	cmpwi r0, 0
/* 807EE2E4  40 82 00 30 */	bne lbl_807EE314
/* 807EE2E8  7E A3 AB 78 */	mr r3, r21
/* 807EE2EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807EE2F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807EE2F4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807EE2F8  4B 82 C4 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EE2FC  7C 13 18 50 */	subf r0, r19, r3
/* 807EE300  7C 03 07 34 */	extsh r3, r0
/* 807EE304  4B B7 6D CC */	b abs
/* 807EE308  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807EE30C  40 80 00 08 */	bge lbl_807EE314
/* 807EE310  7E 99 A3 78 */	mr r25, r20
lbl_807EE314:
/* 807EE314  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 807EE318  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807EE31C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EE320  40 80 00 94 */	bge lbl_807EE3B4
/* 807EE324  7E 99 A3 78 */	mr r25, r20
/* 807EE328  48 00 00 8C */	b lbl_807EE3B4
lbl_807EE32C:
/* 807EE32C  A8 01 00 20 */	lha r0, 0x20(r1)
/* 807EE330  2C 00 00 00 */	cmpwi r0, 0
/* 807EE334  41 82 00 7C */	beq lbl_807EE3B0
/* 807EE338  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 807EE33C  AA 81 00 18 */	lha r20, 0x18(r1)
/* 807EE340  7C 00 A0 50 */	subf r0, r0, r20
/* 807EE344  7C 00 07 35 */	extsh. r0, r0
/* 807EE348  38 14 C0 00 */	addi r0, r20, -16384
/* 807EE34C  7C 13 07 34 */	extsh r19, r0
/* 807EE350  40 80 00 0C */	bge lbl_807EE35C
/* 807EE354  38 14 40 00 */	addi r0, r20, 0x4000
/* 807EE358  7C 13 07 34 */	extsh r19, r0
lbl_807EE35C:
/* 807EE35C  7E 79 9B 78 */	mr r25, r19
/* 807EE360  80 15 07 38 */	lwz r0, 0x738(r21)
/* 807EE364  2C 00 00 00 */	cmpwi r0, 0
/* 807EE368  40 82 00 30 */	bne lbl_807EE398
/* 807EE36C  7E A3 AB 78 */	mr r3, r21
/* 807EE370  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807EE374  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807EE378  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807EE37C  4B 82 C3 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807EE380  7C 13 18 50 */	subf r0, r19, r3
/* 807EE384  7C 03 07 34 */	extsh r3, r0
/* 807EE388  4B B7 6D 48 */	b abs
/* 807EE38C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807EE390  40 80 00 08 */	bge lbl_807EE398
/* 807EE394  7E 99 A3 78 */	mr r25, r20
lbl_807EE398:
/* 807EE398  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 807EE39C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807EE3A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EE3A4  40 80 00 10 */	bge lbl_807EE3B4
/* 807EE3A8  7E 99 A3 78 */	mr r25, r20
/* 807EE3AC  48 00 00 08 */	b lbl_807EE3B4
lbl_807EE3B0:
/* 807EE3B0  7E F9 BB 78 */	mr r25, r23
lbl_807EE3B4:
/* 807EE3B4  B3 36 00 00 */	sth r25, 0(r22)
/* 807EE3B8  38 60 00 00 */	li r3, 0
/* 807EE3BC  38 81 00 1C */	addi r4, r1, 0x1c
/* 807EE3C0  38 00 00 03 */	li r0, 3
/* 807EE3C4  7C 09 03 A6 */	mtctr r0
lbl_807EE3C8:
/* 807EE3C8  7C 04 1A AE */	lhax r0, r4, r3
/* 807EE3CC  2C 00 00 00 */	cmpwi r0, 0
/* 807EE3D0  41 82 00 24 */	beq lbl_807EE3F4
/* 807EE3D4  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807EE3D8  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807EE3DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807EE3E0  38 61 00 68 */	addi r3, r1, 0x68
/* 807EE3E4  38 80 FF FF */	li r4, -1
/* 807EE3E8  4B 88 98 F4 */	b __dt__11dBgS_LinChkFv
/* 807EE3EC  38 60 00 01 */	li r3, 1
/* 807EE3F0  48 00 00 28 */	b lbl_807EE418
lbl_807EE3F4:
/* 807EE3F4  38 63 00 02 */	addi r3, r3, 2
/* 807EE3F8  42 00 FF D0 */	bdnz lbl_807EE3C8
/* 807EE3FC  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807EE400  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807EE404  90 01 00 64 */	stw r0, 0x64(r1)
/* 807EE408  38 61 00 68 */	addi r3, r1, 0x68
/* 807EE40C  38 80 FF FF */	li r4, -1
/* 807EE410  4B 88 98 CC */	b __dt__11dBgS_LinChkFv
/* 807EE414  38 60 00 00 */	li r3, 0
lbl_807EE418:
/* 807EE418  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 807EE41C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 807EE420  39 61 01 10 */	addi r11, r1, 0x110
/* 807EE424  4B B7 3D DC */	b _restgpr_19
/* 807EE428  80 01 01 24 */	lwz r0, 0x124(r1)
/* 807EE42C  7C 08 03 A6 */	mtlr r0
/* 807EE430  38 21 01 20 */	addi r1, r1, 0x120
/* 807EE434  4E 80 00 20 */	blr 
