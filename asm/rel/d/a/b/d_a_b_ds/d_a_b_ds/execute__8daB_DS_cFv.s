lbl_805DADC4:
/* 805DADC4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805DADC8  7C 08 02 A6 */	mflr r0
/* 805DADCC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805DADD0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 805DADD4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 805DADD8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 805DADDC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 805DADE0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805DADE4  4B D8 73 E1 */	bl _savegpr_23
/* 805DADE8  7C 77 1B 78 */	mr r23, r3
/* 805DADEC  3C 80 80 5E */	lis r4, lit_1109@ha /* 0x805DDA70@ha */
/* 805DADF0  3B 84 DA 70 */	addi r28, r4, lit_1109@l /* 0x805DDA70@l */
/* 805DADF4  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805DADF8  3B A4 CA 54 */	addi r29, r4, lit_3932@l /* 0x805DCA54@l */
/* 805DADFC  88 03 08 56 */	lbz r0, 0x856(r3)
/* 805DAE00  28 00 00 01 */	cmplwi r0, 1
/* 805DAE04  41 82 00 14 */	beq lbl_805DAE18
/* 805DAE08  28 00 00 03 */	cmplwi r0, 3
/* 805DAE0C  41 82 00 0C */	beq lbl_805DAE18
/* 805DAE10  28 00 00 04 */	cmplwi r0, 4
/* 805DAE14  40 82 00 14 */	bne lbl_805DAE28
lbl_805DAE18:
/* 805DAE18  7E E3 BB 78 */	mr r3, r23
/* 805DAE1C  4B FF D2 5D */	bl mBulletAction__8daB_DS_cFv
/* 805DAE20  38 60 00 01 */	li r3, 1
/* 805DAE24  48 00 03 38 */	b lbl_805DB15C
lbl_805DAE28:
/* 805DAE28  28 00 00 02 */	cmplwi r0, 2
/* 805DAE2C  40 82 00 28 */	bne lbl_805DAE54
/* 805DAE30  4B FF ED 45 */	bl mBattle2Action__8daB_DS_cFv
/* 805DAE34  7E E3 BB 78 */	mr r3, r23
/* 805DAE38  4B FF F7 4D */	bl mBattle2_mtx_set__8daB_DS_cFv
/* 805DAE3C  7E E3 BB 78 */	mr r3, r23
/* 805DAE40  4B FF FC 59 */	bl mBattle2_cc_set__8daB_DS_cFv
/* 805DAE44  7E E3 BB 78 */	mr r3, r23
/* 805DAE48  4B FF FB 5D */	bl mBattle2_cc_etc_set__8daB_DS_cFv
/* 805DAE4C  38 60 00 01 */	li r3, 1
/* 805DAE50  48 00 03 0C */	b lbl_805DB15C
lbl_805DAE54:
/* 805DAE54  4B FF DE B1 */	bl action__8daB_DS_cFv
/* 805DAE58  88 17 08 52 */	lbz r0, 0x852(r23)
/* 805DAE5C  28 00 00 64 */	cmplwi r0, 0x64
/* 805DAE60  40 82 00 0C */	bne lbl_805DAE6C
/* 805DAE64  38 60 00 01 */	li r3, 1
/* 805DAE68  48 00 02 F4 */	b lbl_805DB15C
lbl_805DAE6C:
/* 805DAE6C  38 00 F0 60 */	li r0, -4000
/* 805DAE70  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 805DAE74  B0 1C 00 9C */	sth r0, 0x9c(r28)
/* 805DAE78  7E E3 BB 78 */	mr r3, r23
/* 805DAE7C  4B FF E3 29 */	bl mtx_set__8daB_DS_cFv
/* 805DAE80  38 61 00 20 */	addi r3, r1, 0x20
/* 805DAE84  4B A9 C6 F9 */	bl __ct__11dBgS_GndChkFv
/* 805DAE88  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 805DAE8C  83 63 00 04 */	lwz r27, 4(r3)
/* 805DAE90  3B 00 00 00 */	li r24, 0
/* 805DAE94  88 17 08 53 */	lbz r0, 0x853(r23)
/* 805DAE98  28 00 00 00 */	cmplwi r0, 0
/* 805DAE9C  40 82 02 7C */	bne lbl_805DB118
/* 805DAEA0  88 17 08 4F */	lbz r0, 0x84f(r23)
/* 805DAEA4  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 805DAEA8  7C 03 07 34 */	extsh r3, r0
/* 805DAEAC  38 83 E8 90 */	addi r4, r3, -6000
/* 805DAEB0  A8 1C 00 A0 */	lha r0, 0xa0(r28)
/* 805DAEB4  2C 00 F0 60 */	cmpwi r0, -4000
/* 805DAEB8  40 81 00 0C */	ble lbl_805DAEC4
/* 805DAEBC  38 00 F0 60 */	li r0, -4000
/* 805DAEC0  B0 1C 00 A0 */	sth r0, 0xa0(r28)
lbl_805DAEC4:
/* 805DAEC4  38 7C 00 A0 */	addi r3, r28, 0xa0
/* 805DAEC8  38 A0 00 14 */	li r5, 0x14
/* 805DAECC  38 C0 01 00 */	li r6, 0x100
/* 805DAED0  4B C9 57 39 */	bl cLib_addCalcAngleS2__FPssss
/* 805DAED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DAED8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DAEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DAEE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DAEE4  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 805DAEE8  C3 DD 05 24 */	lfs f30, 0x524(r29)
/* 805DAEEC  C3 FD 00 5C */	lfs f31, 0x5c(r29)
/* 805DAEF0  7F DF F3 78 */	mr r31, r30
lbl_805DAEF4:
/* 805DAEF4  3B 20 00 00 */	li r25, 0
/* 805DAEF8  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 805DAEFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DAF00  38 63 02 10 */	addi r3, r3, 0x210
/* 805DAF04  7F E4 FB 78 */	mr r4, r31
/* 805DAF08  4B D6 B5 A9 */	bl PSMTXCopy
/* 805DAF0C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805DAF10  D0 41 00 08 */	stfs f2, 8(r1)
/* 805DAF14  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805DAF18  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DAF1C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805DAF20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DAF24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805DAF28  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DAF2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DAF30  EC 01 F0 2A */	fadds f0, f1, f30
/* 805DAF34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DAF38  38 61 00 20 */	addi r3, r1, 0x20
/* 805DAF3C  38 81 00 08 */	addi r4, r1, 8
/* 805DAF40  4B C8 CD E9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805DAF44  7F 43 D3 78 */	mr r3, r26
/* 805DAF48  38 81 00 20 */	addi r4, r1, 0x20
/* 805DAF4C  4B A9 95 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805DAF50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DAF54  FC 00 08 18 */	frsp f0, f1
/* 805DAF58  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 805DAF5C  40 82 00 0C */	bne lbl_805DAF68
/* 805DAF60  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DAF64  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_805DAF68:
/* 805DAF68  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805DAF6C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805DAF70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DAF74  40 80 00 84 */	bge lbl_805DAFF8
/* 805DAF78  EC 01 00 28 */	fsubs f0, f1, f0
/* 805DAF7C  FC 00 02 10 */	fabs f0, f0
/* 805DAF80  FC 20 00 18 */	frsp f1, f0
/* 805DAF84  A8 7C 00 9C */	lha r3, 0x9c(r28)
/* 805DAF88  C0 1D 01 90 */	lfs f0, 0x190(r29)
/* 805DAF8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805DAF90  FC 00 00 1E */	fctiwz f0, f0
/* 805DAF94  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DAF98  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DAF9C  7C 03 02 14 */	add r0, r3, r0
/* 805DAFA0  B0 1C 00 9C */	sth r0, 0x9c(r28)
/* 805DAFA4  3B 20 00 01 */	li r25, 1
/* 805DAFA8  88 17 08 4D */	lbz r0, 0x84d(r23)
/* 805DAFAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805DAFB0  41 82 00 48 */	beq lbl_805DAFF8
/* 805DAFB4  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 805DAFB8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805DAFBC  FC 00 00 1E */	fctiwz f0, f0
/* 805DAFC0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DAFC4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DAFC8  2C 00 00 48 */	cmpwi r0, 0x48
/* 805DAFCC  41 80 00 2C */	blt lbl_805DAFF8
/* 805DAFD0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DAFD4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DAFD8  2C 00 00 4F */	cmpwi r0, 0x4f
/* 805DAFDC  40 80 00 1C */	bge lbl_805DAFF8
/* 805DAFE0  7E E3 BB 78 */	mr r3, r23
/* 805DAFE4  38 80 00 01 */	li r4, 1
/* 805DAFE8  4B FF 11 71 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805DAFEC  88 17 08 4D */	lbz r0, 0x84d(r23)
/* 805DAFF0  68 00 00 01 */	xori r0, r0, 1
/* 805DAFF4  98 17 08 4D */	stb r0, 0x84d(r23)
lbl_805DAFF8:
/* 805DAFF8  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 805DAFFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DB000  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 805DB004  7F C4 F3 78 */	mr r4, r30
/* 805DB008  4B D6 B4 A9 */	bl PSMTXCopy
/* 805DB00C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805DB010  D0 41 00 08 */	stfs f2, 8(r1)
/* 805DB014  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805DB018  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DB01C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 805DB020  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DB024  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805DB028  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805DB02C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805DB030  EC 01 F0 2A */	fadds f0, f1, f30
/* 805DB034  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DB038  38 61 00 20 */	addi r3, r1, 0x20
/* 805DB03C  38 81 00 08 */	addi r4, r1, 8
/* 805DB040  4B C8 CC E9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805DB044  7F 43 D3 78 */	mr r3, r26
/* 805DB048  38 81 00 20 */	addi r4, r1, 0x20
/* 805DB04C  4B A9 94 55 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805DB050  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DB054  FC 00 08 18 */	frsp f0, f1
/* 805DB058  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 805DB05C  40 82 00 0C */	bne lbl_805DB068
/* 805DB060  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805DB064  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_805DB068:
/* 805DB068  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805DB06C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805DB070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805DB074  40 80 00 84 */	bge lbl_805DB0F8
/* 805DB078  EC 01 00 28 */	fsubs f0, f1, f0
/* 805DB07C  FC 00 02 10 */	fabs f0, f0
/* 805DB080  FC 20 00 18 */	frsp f1, f0
/* 805DB084  A8 7C 00 9E */	lha r3, 0x9e(r28)
/* 805DB088  C0 1D 01 90 */	lfs f0, 0x190(r29)
/* 805DB08C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805DB090  FC 00 00 1E */	fctiwz f0, f0
/* 805DB094  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DB098  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DB09C  7C 03 02 14 */	add r0, r3, r0
/* 805DB0A0  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 805DB0A4  3B 20 00 01 */	li r25, 1
/* 805DB0A8  88 17 08 4D */	lbz r0, 0x84d(r23)
/* 805DB0AC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 805DB0B0  41 82 00 48 */	beq lbl_805DB0F8
/* 805DB0B4  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 805DB0B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805DB0BC  FC 00 00 1E */	fctiwz f0, f0
/* 805DB0C0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DB0C4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DB0C8  2C 00 00 22 */	cmpwi r0, 0x22
/* 805DB0CC  41 80 00 2C */	blt lbl_805DB0F8
/* 805DB0D0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805DB0D4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805DB0D8  2C 00 00 29 */	cmpwi r0, 0x29
/* 805DB0DC  40 80 00 1C */	bge lbl_805DB0F8
/* 805DB0E0  7E E3 BB 78 */	mr r3, r23
/* 805DB0E4  38 80 00 02 */	li r4, 2
/* 805DB0E8  4B FF 10 71 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805DB0EC  88 17 08 4D */	lbz r0, 0x84d(r23)
/* 805DB0F0  68 00 00 02 */	xori r0, r0, 2
/* 805DB0F4  98 17 08 4D */	stb r0, 0x84d(r23)
lbl_805DB0F8:
/* 805DB0F8  7F 20 07 75 */	extsb. r0, r25
/* 805DB0FC  41 82 00 2C */	beq lbl_805DB128
/* 805DB100  80 77 05 B4 */	lwz r3, 0x5b4(r23)
/* 805DB104  4B A3 60 51 */	bl updateDL__16mDoExt_McaMorfSOFv
/* 805DB108  3B 18 00 01 */	addi r24, r24, 1
/* 805DB10C  2C 18 00 0A */	cmpwi r24, 0xa
/* 805DB110  41 81 00 18 */	bgt lbl_805DB128
/* 805DB114  4B FF FD E0 */	b lbl_805DAEF4
lbl_805DB118:
/* 805DB118  38 00 00 00 */	li r0, 0
/* 805DB11C  B0 1C 00 9C */	sth r0, 0x9c(r28)
/* 805DB120  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 805DB124  B0 1C 00 A0 */	sth r0, 0xa0(r28)
lbl_805DB128:
/* 805DB128  88 17 08 52 */	lbz r0, 0x852(r23)
/* 805DB12C  28 00 00 00 */	cmplwi r0, 0
/* 805DB130  40 82 00 0C */	bne lbl_805DB13C
/* 805DB134  7E E3 BB 78 */	mr r3, r23
/* 805DB138  4B FF 24 F1 */	bl neck_set__8daB_DS_cFv
lbl_805DB13C:
/* 805DB13C  7E E3 BB 78 */	mr r3, r23
/* 805DB140  4B FF E3 DD */	bl cc_set__8daB_DS_cFv
/* 805DB144  7E E3 BB 78 */	mr r3, r23
/* 805DB148  4B FF E8 F9 */	bl cc_etc_set__8daB_DS_cFv
/* 805DB14C  38 61 00 20 */	addi r3, r1, 0x20
/* 805DB150  38 80 FF FF */	li r4, -1
/* 805DB154  4B A9 C4 9D */	bl __dt__11dBgS_GndChkFv
/* 805DB158  38 60 00 01 */	li r3, 1
lbl_805DB15C:
/* 805DB15C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805DB160  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805DB164  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 805DB168  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 805DB16C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805DB170  4B D8 70 A1 */	bl _restgpr_23
/* 805DB174  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805DB178  7C 08 03 A6 */	mtlr r0
/* 805DB17C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805DB180  4E 80 00 20 */	blr 
