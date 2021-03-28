lbl_80A7FEE8:
/* 80A7FEE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A7FEEC  7C 08 02 A6 */	mflr r0
/* 80A7FEF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A7FEF4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7FEF8  4B 8E 22 E4 */	b _savegpr_29
/* 80A7FEFC  7C 7E 1B 78 */	mr r30, r3
/* 80A7FF00  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha
/* 80A7FF04  3B E4 32 AC */	addi r31, r4, m__17daNpcMoiR_Param_c@l
/* 80A7FF08  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A7FF0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A7FF10  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A7FF14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A7FF18  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A7FF1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A7FF20  38 00 00 00 */	li r0, 0
/* 80A7FF24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7FF28  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7FF2C  2C 00 00 02 */	cmpwi r0, 2
/* 80A7FF30  41 82 00 90 */	beq lbl_80A7FFC0
/* 80A7FF34  40 80 03 74 */	bge lbl_80A802A8
/* 80A7FF38  2C 00 00 00 */	cmpwi r0, 0
/* 80A7FF3C  41 82 00 0C */	beq lbl_80A7FF48
/* 80A7FF40  48 00 03 68 */	b lbl_80A802A8
/* 80A7FF44  48 00 03 64 */	b lbl_80A802A8
lbl_80A7FF48:
/* 80A7FF48  38 80 00 12 */	li r4, 0x12
/* 80A7FF4C  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7FF50  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7FF54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7FF58  7D 89 03 A6 */	mtctr r12
/* 80A7FF5C  4E 80 04 21 */	bctrl 
/* 80A7FF60  7F C3 F3 78 */	mr r3, r30
/* 80A7FF64  38 80 00 22 */	li r4, 0x22
/* 80A7FF68  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7FF6C  38 A0 00 00 */	li r5, 0
/* 80A7FF70  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A7FF74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7FF78  7D 89 03 A6 */	mtctr r12
/* 80A7FF7C  4E 80 04 21 */	bctrl 
/* 80A7FF80  38 00 00 00 */	li r0, 0
/* 80A7FF84  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A7FF88  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A7FF8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A7FF90  38 60 01 00 */	li r3, 0x100
/* 80A7FF94  38 81 00 0C */	addi r4, r1, 0xc
/* 80A7FF98  4B 59 9A 94 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80A7FF9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80A7FFA0  28 03 00 00 */	cmplwi r3, 0
/* 80A7FFA4  41 82 00 10 */	beq lbl_80A7FFB4
/* 80A7FFA8  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80A7FFAC  60 00 00 02 */	ori r0, r0, 2
/* 80A7FFB0  B0 03 06 BE */	sth r0, 0x6be(r3)
lbl_80A7FFB4:
/* 80A7FFB4  38 00 00 02 */	li r0, 2
/* 80A7FFB8  B0 1E 0E 08 */	sth r0, 0xe08(r30)
/* 80A7FFBC  48 00 02 EC */	b lbl_80A802A8
lbl_80A7FFC0:
/* 80A7FFC0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A7FFC4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A7FFC8  4B 7F 0C 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A7FFCC  7C 7D 1B 78 */	mr r29, r3
/* 80A7FFD0  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80A7FFD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A7FFD8  40 82 01 2C */	bne lbl_80A80104
/* 80A7FFDC  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80A7FFE0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A7FFE4  7C 00 E8 50 */	subf r0, r0, r29
/* 80A7FFE8  7C 00 07 34 */	extsh r0, r0
/* 80A7FFEC  C8 3F 05 08 */	lfd f1, 0x508(r31)
/* 80A7FFF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7FFF4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A7FFF8  3C 00 43 30 */	lis r0, 0x4330
/* 80A7FFFC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A80000  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A80004  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A80008  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8000C  FC 00 02 10 */	fabs f0, f0
/* 80A80010  FC 00 00 18 */	frsp f0, f0
/* 80A80014  FC 00 00 1E */	fctiwz f0, f0
/* 80A80018  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A8001C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A80020  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A80024  40 81 00 98 */	ble lbl_80A800BC
/* 80A80028  7F C3 F3 78 */	mr r3, r30
/* 80A8002C  38 80 00 12 */	li r4, 0x12
/* 80A80030  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80034  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A80038  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A8003C  7D 89 03 A6 */	mtctr r12
/* 80A80040  4E 80 04 21 */	bctrl 
/* 80A80044  3C 60 80 A8 */	lis r3, lit_4762@ha
/* 80A80048  38 83 3B C0 */	addi r4, r3, lit_4762@l
/* 80A8004C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A80050  80 04 00 04 */	lwz r0, 4(r4)
/* 80A80054  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A80058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8005C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A80060  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A80064  38 61 00 10 */	addi r3, r1, 0x10
/* 80A80068  38 9E 0D DC */	addi r4, r30, 0xddc
/* 80A8006C  4B 8E 1F DC */	b __ptmf_cmpr
/* 80A80070  2C 03 00 00 */	cmpwi r3, 0
/* 80A80074  40 82 00 28 */	bne lbl_80A8009C
/* 80A80078  7F C3 F3 78 */	mr r3, r30
/* 80A8007C  38 80 00 26 */	li r4, 0x26
/* 80A80080  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80084  38 A0 00 00 */	li r5, 0
/* 80A80088  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A8008C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A80090  7D 89 03 A6 */	mtctr r12
/* 80A80094  4E 80 04 21 */	bctrl 
/* 80A80098  48 00 00 24 */	b lbl_80A800BC
lbl_80A8009C:
/* 80A8009C  7F C3 F3 78 */	mr r3, r30
/* 80A800A0  38 80 00 2A */	li r4, 0x2a
/* 80A800A4  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A800A8  38 A0 00 00 */	li r5, 0
/* 80A800AC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A800B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A800B4  7D 89 03 A6 */	mtctr r12
/* 80A800B8  4E 80 04 21 */	bctrl 
lbl_80A800BC:
/* 80A800BC  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 80A800C0  38 00 00 00 */	li r0, 0
/* 80A800C4  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80A800C8  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 80A800CC  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 80A800D0  7C 03 00 00 */	cmpw r3, r0
/* 80A800D4  40 82 00 10 */	bne lbl_80A800E4
/* 80A800D8  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80A800DC  38 03 00 01 */	addi r0, r3, 1
/* 80A800E0  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80A800E4:
/* 80A800E4  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A800E8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A800EC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A800F0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A800F4  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80A800F8  38 03 00 01 */	addi r0, r3, 1
/* 80A800FC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A80100  48 00 00 90 */	b lbl_80A80190
lbl_80A80104:
/* 80A80104  2C 00 00 01 */	cmpwi r0, 1
/* 80A80108  40 82 00 88 */	bne lbl_80A80190
/* 80A8010C  7F C3 F3 78 */	mr r3, r30
/* 80A80110  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 80A80114  38 A0 00 00 */	li r5, 0
/* 80A80118  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 80A8011C  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A80120  40 82 00 14 */	bne lbl_80A80134
/* 80A80124  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80A80128  2C 00 00 00 */	cmpwi r0, 0
/* 80A8012C  41 81 00 08 */	bgt lbl_80A80134
/* 80A80130  38 A0 00 01 */	li r5, 1
lbl_80A80134:
/* 80A80134  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A80138  41 82 00 0C */	beq lbl_80A80144
/* 80A8013C  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80A80140  48 00 00 08 */	b lbl_80A80148
lbl_80A80144:
/* 80A80144  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
lbl_80A80148:
/* 80A80148  38 A0 00 00 */	li r5, 0
/* 80A8014C  4B 6D 3D A8 */	b turn__8daNpcF_cFsfi
/* 80A80150  2C 03 00 00 */	cmpwi r3, 0
/* 80A80154  41 82 00 2C */	beq lbl_80A80180
/* 80A80158  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8015C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A80160  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A80164  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80A80168  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8016C  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80A80170  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80A80174  38 03 00 01 */	addi r0, r3, 1
/* 80A80178  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80A8017C  48 00 00 14 */	b lbl_80A80190
lbl_80A80180:
/* 80A80180  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A80184  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A80188  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8018C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_80A80190:
/* 80A80190  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A80194  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A80198  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80A8019C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A801A0  40 82 01 00 */	bne lbl_80A802A0
/* 80A801A4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A801A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A801AC  4B 8C 71 F0 */	b PSVECSquareDistance
/* 80A801B0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A801B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A801B8  40 81 00 58 */	ble lbl_80A80210
/* 80A801BC  FC 00 08 34 */	frsqrte f0, f1
/* 80A801C0  C8 9F 05 48 */	lfd f4, 0x548(r31)
/* 80A801C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A801C8  C8 7F 05 50 */	lfd f3, 0x550(r31)
/* 80A801CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A801D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A801D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A801D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A801DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A801E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A801E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A801E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A801EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A801F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A801F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A801F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A801FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A80200  FC 02 00 32 */	fmul f0, f2, f0
/* 80A80204  FC 21 00 32 */	fmul f1, f1, f0
/* 80A80208  FC 20 08 18 */	frsp f1, f1
/* 80A8020C  48 00 00 88 */	b lbl_80A80294
lbl_80A80210:
/* 80A80210  C8 1F 05 58 */	lfd f0, 0x558(r31)
/* 80A80214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A80218  40 80 00 10 */	bge lbl_80A80228
/* 80A8021C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A80220  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A80224  48 00 00 70 */	b lbl_80A80294
lbl_80A80228:
/* 80A80228  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8022C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A80230  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A80234  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A80238  7C 03 00 00 */	cmpw r3, r0
/* 80A8023C  41 82 00 14 */	beq lbl_80A80250
/* 80A80240  40 80 00 40 */	bge lbl_80A80280
/* 80A80244  2C 03 00 00 */	cmpwi r3, 0
/* 80A80248  41 82 00 20 */	beq lbl_80A80268
/* 80A8024C  48 00 00 34 */	b lbl_80A80280
lbl_80A80250:
/* 80A80250  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A80254  41 82 00 0C */	beq lbl_80A80260
/* 80A80258  38 00 00 01 */	li r0, 1
/* 80A8025C  48 00 00 28 */	b lbl_80A80284
lbl_80A80260:
/* 80A80260  38 00 00 02 */	li r0, 2
/* 80A80264  48 00 00 20 */	b lbl_80A80284
lbl_80A80268:
/* 80A80268  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8026C  41 82 00 0C */	beq lbl_80A80278
/* 80A80270  38 00 00 05 */	li r0, 5
/* 80A80274  48 00 00 10 */	b lbl_80A80284
lbl_80A80278:
/* 80A80278  38 00 00 03 */	li r0, 3
/* 80A8027C  48 00 00 08 */	b lbl_80A80284
lbl_80A80280:
/* 80A80280  38 00 00 04 */	li r0, 4
lbl_80A80284:
/* 80A80284  2C 00 00 01 */	cmpwi r0, 1
/* 80A80288  40 82 00 0C */	bne lbl_80A80294
/* 80A8028C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A80290  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A80294:
/* 80A80294  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80A80298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8029C  40 80 00 0C */	bge lbl_80A802A8
lbl_80A802A0:
/* 80A802A0  7F C3 F3 78 */	mr r3, r30
/* 80A802A4  4B 59 99 D8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80A802A8:
/* 80A802A8  38 60 00 01 */	li r3, 1
/* 80A802AC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A802B0  4B 8E 1F 78 */	b _restgpr_29
/* 80A802B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A802B8  7C 08 03 A6 */	mtlr r0
/* 80A802BC  38 21 00 50 */	addi r1, r1, 0x50
/* 80A802C0  4E 80 00 20 */	blr 
