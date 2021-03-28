lbl_80ABB014:
/* 80ABB014  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ABB018  7C 08 02 A6 */	mflr r0
/* 80ABB01C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ABB020  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABB024  4B 8A 71 B0 */	b _savegpr_27
/* 80ABB028  7C 7D 1B 78 */	mr r29, r3
/* 80ABB02C  3C 80 80 AC */	lis r4, cNullVec__6Z2Calc@ha
/* 80ABB030  3B C4 FE 80 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80ABB034  3C 80 80 AC */	lis r4, m__19daNpcRafrel_Param_c@ha
/* 80ABB038  3B E4 F9 E0 */	addi r31, r4, m__19daNpcRafrel_Param_c@l
/* 80ABB03C  A0 03 0E 10 */	lhz r0, 0xe10(r3)
/* 80ABB040  2C 00 00 02 */	cmpwi r0, 2
/* 80ABB044  41 82 00 74 */	beq lbl_80ABB0B8
/* 80ABB048  40 80 0A AC */	bge lbl_80ABBAF4
/* 80ABB04C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABB050  41 82 00 0C */	beq lbl_80ABB05C
/* 80ABB054  48 00 0A A0 */	b lbl_80ABBAF4
/* 80ABB058  48 00 0A 9C */	b lbl_80ABBAF4
lbl_80ABB05C:
/* 80ABB05C  38 80 00 07 */	li r4, 7
/* 80ABB060  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB064  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ABB068  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABB06C  7D 89 03 A6 */	mtctr r12
/* 80ABB070  4E 80 04 21 */	bctrl 
/* 80ABB074  7F A3 EB 78 */	mr r3, r29
/* 80ABB078  38 80 00 00 */	li r4, 0
/* 80ABB07C  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB080  38 A0 00 00 */	li r5, 0
/* 80ABB084  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB088  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABB08C  7D 89 03 A6 */	mtctr r12
/* 80ABB090  4E 80 04 21 */	bctrl 
/* 80ABB094  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABB098  B0 1D 0E 12 */	sth r0, 0xe12(r29)
/* 80ABB09C  38 00 00 00 */	li r0, 0
/* 80ABB0A0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB0A4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABB0A8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80ABB0AC  38 00 00 02 */	li r0, 2
/* 80ABB0B0  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABB0B4  48 00 0A 40 */	b lbl_80ABBAF4
lbl_80ABB0B8:
/* 80ABB0B8  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB0BC  28 00 00 00 */	cmplwi r0, 0
/* 80ABB0C0  40 82 00 30 */	bne lbl_80ABB0F0
/* 80ABB0C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABB0C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABB0CC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80ABB0D0  2C 00 00 05 */	cmpwi r0, 5
/* 80ABB0D4  40 82 00 1C */	bne lbl_80ABB0F0
/* 80ABB0D8  38 60 00 00 */	li r3, 0
/* 80ABB0DC  4B 57 18 A0 */	b getLayerNo__14dComIfG_play_cFi
/* 80ABB0E0  2C 03 00 02 */	cmpwi r3, 2
/* 80ABB0E4  40 82 00 0C */	bne lbl_80ABB0F0
/* 80ABB0E8  38 00 00 01 */	li r0, 1
/* 80ABB0EC  48 00 00 08 */	b lbl_80ABB0F4
lbl_80ABB0F0:
/* 80ABB0F0  38 00 00 00 */	li r0, 0
lbl_80ABB0F4:
/* 80ABB0F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ABB0F8  41 82 00 2C */	beq lbl_80ABB124
/* 80ABB0FC  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABB100  2C 00 00 00 */	cmpwi r0, 0
/* 80ABB104  40 82 00 10 */	bne lbl_80ABB114
/* 80ABB108  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABB10C  28 00 00 00 */	cmplwi r0, 0
/* 80ABB110  41 82 05 FC */	beq lbl_80ABB70C
lbl_80ABB114:
/* 80ABB114  38 00 00 00 */	li r0, 0
/* 80ABB118  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABB11C  90 1D 0C 9C */	stw r0, 0xc9c(r29)
/* 80ABB120  48 00 05 EC */	b lbl_80ABB70C
lbl_80ABB124:
/* 80ABB124  88 1D 0E 14 */	lbz r0, 0xe14(r29)
/* 80ABB128  28 00 00 00 */	cmplwi r0, 0
/* 80ABB12C  41 82 02 60 */	beq lbl_80ABB38C
/* 80ABB130  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB134  28 00 00 01 */	cmplwi r0, 1
/* 80ABB138  40 82 02 54 */	bne lbl_80ABB38C
/* 80ABB13C  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABB140  2C 00 00 02 */	cmpwi r0, 2
/* 80ABB144  40 82 00 10 */	bne lbl_80ABB154
/* 80ABB148  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABB14C  28 00 00 00 */	cmplwi r0, 0
/* 80ABB150  41 82 00 14 */	beq lbl_80ABB164
lbl_80ABB154:
/* 80ABB154  38 00 00 02 */	li r0, 2
/* 80ABB158  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABB15C  38 00 00 00 */	li r0, 0
/* 80ABB160  90 1D 0C 9C */	stw r0, 0xc9c(r29)
lbl_80ABB164:
/* 80ABB164  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABB168  AB 7D 0E 12 */	lha r27, 0xe12(r29)
/* 80ABB16C  7C 00 D8 00 */	cmpw r0, r27
/* 80ABB170  40 82 00 5C */	bne lbl_80ABB1CC
/* 80ABB174  C0 5F 03 54 */	lfs f2, 0x354(r31)
/* 80ABB178  38 7F 00 00 */	addi r3, r31, 0
/* 80ABB17C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80ABB180  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80ABB184  EC 01 00 2A */	fadds f0, f1, f0
/* 80ABB188  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABB18C  FC 00 00 1E */	fctiwz f0, f0
/* 80ABB190  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ABB194  83 61 00 34 */	lwz r27, 0x34(r1)
/* 80ABB198  7F A3 EB 78 */	mr r3, r29
/* 80ABB19C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABB1A0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ABB1A4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB1A8  4B 55 F5 F4 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABB1AC  7F 60 07 34 */	extsh r0, r27
/* 80ABB1B0  7C 03 00 00 */	cmpw r3, r0
/* 80ABB1B4  40 81 01 9C */	ble lbl_80ABB350
/* 80ABB1B8  7F A3 EB 78 */	mr r3, r29
/* 80ABB1BC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB1C0  4B 55 F5 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABB1C4  B0 7D 0E 12 */	sth r3, 0xe12(r29)
/* 80ABB1C8  48 00 01 88 */	b lbl_80ABB350
lbl_80ABB1CC:
/* 80ABB1CC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB1D4  40 82 00 D0 */	bne lbl_80ABB2A4
/* 80ABB1D8  C0 5F 03 58 */	lfs f2, 0x358(r31)
/* 80ABB1DC  7C 00 D8 50 */	subf r0, r0, r27
/* 80ABB1E0  7C 00 07 34 */	extsh r0, r0
/* 80ABB1E4  C8 3F 03 70 */	lfd f1, 0x370(r31)
/* 80ABB1E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABB1EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABB1F0  3C 00 43 30 */	lis r0, 0x4330
/* 80ABB1F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ABB1F8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ABB1FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABB200  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABB204  FC 00 02 10 */	fabs f0, f0
/* 80ABB208  FC 00 00 18 */	frsp f0, f0
/* 80ABB20C  FC 00 00 1E */	fctiwz f0, f0
/* 80ABB210  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80ABB214  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80ABB218  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABB21C  40 81 00 40 */	ble lbl_80ABB25C
/* 80ABB220  7F A3 EB 78 */	mr r3, r29
/* 80ABB224  38 80 00 07 */	li r4, 7
/* 80ABB228  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB22C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB230  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABB234  7D 89 03 A6 */	mtctr r12
/* 80ABB238  4E 80 04 21 */	bctrl 
/* 80ABB23C  7F A3 EB 78 */	mr r3, r29
/* 80ABB240  38 80 00 12 */	li r4, 0x12
/* 80ABB244  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB248  38 A0 00 00 */	li r5, 0
/* 80ABB24C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB250  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABB254  7D 89 03 A6 */	mtctr r12
/* 80ABB258  4E 80 04 21 */	bctrl 
lbl_80ABB25C:
/* 80ABB25C  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80ABB260  38 00 00 00 */	li r0, 0
/* 80ABB264  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ABB268  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ABB26C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ABB270  7C 03 00 00 */	cmpw r3, r0
/* 80ABB274  40 82 00 10 */	bne lbl_80ABB284
/* 80ABB278  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB27C  38 03 00 01 */	addi r0, r3, 1
/* 80ABB280  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ABB284:
/* 80ABB284  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABB288  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ABB28C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB290  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB294  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB298  38 03 00 01 */	addi r0, r3, 1
/* 80ABB29C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB2A0  48 00 00 60 */	b lbl_80ABB300
lbl_80ABB2A4:
/* 80ABB2A4  2C 03 00 01 */	cmpwi r3, 1
/* 80ABB2A8  40 82 00 58 */	bne lbl_80ABB300
/* 80ABB2AC  7F A3 EB 78 */	mr r3, r29
/* 80ABB2B0  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ABB2B4  C0 3F 03 5C */	lfs f1, 0x35c(r31)
/* 80ABB2B8  38 A0 00 00 */	li r5, 0
/* 80ABB2BC  4B 69 8C 38 */	b turn__8daNpcF_cFsfi
/* 80ABB2C0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB2C4  41 82 00 2C */	beq lbl_80ABB2F0
/* 80ABB2C8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB2CC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB2D0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB2D4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ABB2D8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB2DC  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ABB2E0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB2E4  38 03 00 01 */	addi r0, r3, 1
/* 80ABB2E8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB2EC  48 00 00 14 */	b lbl_80ABB300
lbl_80ABB2F0:
/* 80ABB2F0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB2F4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB2F8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB2FC  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ABB300:
/* 80ABB300  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ABB304  2C 00 00 01 */	cmpwi r0, 1
/* 80ABB308  40 81 00 48 */	ble lbl_80ABB350
/* 80ABB30C  7F A3 EB 78 */	mr r3, r29
/* 80ABB310  38 80 00 07 */	li r4, 7
/* 80ABB314  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB318  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB31C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABB320  7D 89 03 A6 */	mtctr r12
/* 80ABB324  4E 80 04 21 */	bctrl 
/* 80ABB328  7F A3 EB 78 */	mr r3, r29
/* 80ABB32C  38 80 00 00 */	li r4, 0
/* 80ABB330  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB334  38 A0 00 00 */	li r5, 0
/* 80ABB338  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB33C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABB340  7D 89 03 A6 */	mtctr r12
/* 80ABB344  4E 80 04 21 */	bctrl 
/* 80ABB348  38 00 00 00 */	li r0, 0
/* 80ABB34C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ABB350:
/* 80ABB350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABB354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABB358  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ABB35C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80ABB360  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80ABB364  EC 21 00 28 */	fsubs f1, f1, f0
/* 80ABB368  C0 1F 03 60 */	lfs f0, 0x360(r31)
/* 80ABB36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABB370  41 80 00 10 */	blt lbl_80ABB380
/* 80ABB374  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 80ABB378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABB37C  40 81 03 90 */	ble lbl_80ABB70C
lbl_80ABB380:
/* 80ABB380  38 00 00 00 */	li r0, 0
/* 80ABB384  98 1D 0E 14 */	stb r0, 0xe14(r29)
/* 80ABB388  48 00 03 84 */	b lbl_80ABB70C
lbl_80ABB38C:
/* 80ABB38C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB390  4B 69 53 5C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABB394  28 03 00 00 */	cmplwi r3, 0
/* 80ABB398  41 82 00 C4 */	beq lbl_80ABB45C
/* 80ABB39C  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB3A0  28 00 00 00 */	cmplwi r0, 0
/* 80ABB3A4  40 82 00 0C */	bne lbl_80ABB3B0
/* 80ABB3A8  C0 3F 03 68 */	lfs f1, 0x368(r31)
/* 80ABB3AC  48 00 00 0C */	b lbl_80ABB3B8
lbl_80ABB3B0:
/* 80ABB3B0  38 7F 00 00 */	addi r3, r31, 0
/* 80ABB3B4  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ABB3B8:
/* 80ABB3B8  7F A3 EB 78 */	mr r3, r29
/* 80ABB3BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABB3C0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ABB3C4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB3C8  4B 69 86 28 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ABB3CC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB3D0  40 82 00 14 */	bne lbl_80ABB3E4
/* 80ABB3D4  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB3D8  4B 69 53 08 */	b remove__18daNpcF_ActorMngr_cFv
/* 80ABB3DC  3B 60 00 00 */	li r27, 0
/* 80ABB3E0  48 00 00 68 */	b lbl_80ABB448
lbl_80ABB3E4:
/* 80ABB3E4  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB3E8  4B 69 53 04 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABB3EC  28 03 00 00 */	cmplwi r3, 0
/* 80ABB3F0  40 82 00 20 */	bne lbl_80ABB410
/* 80ABB3F4  7F A3 EB 78 */	mr r3, r29
/* 80ABB3F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB3FC  7F A5 EB 78 */	mr r5, r29
/* 80ABB400  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80ABB404  4B 69 87 D8 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ABB408  7C 7B 1B 78 */	mr r27, r3
/* 80ABB40C  48 00 00 1C */	b lbl_80ABB428
lbl_80ABB410:
/* 80ABB410  7F A3 EB 78 */	mr r3, r29
/* 80ABB414  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB418  7F A5 EB 78 */	mr r5, r29
/* 80ABB41C  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80ABB420  4B 69 87 BC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ABB424  7C 7B 1B 78 */	mr r27, r3
lbl_80ABB428:
/* 80ABB428  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABB42C  41 82 00 14 */	beq lbl_80ABB440
/* 80ABB430  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB434  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB438  4B 69 52 84 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ABB43C  48 00 00 0C */	b lbl_80ABB448
lbl_80ABB440:
/* 80ABB440  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB444  4B 69 52 9C */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ABB448:
/* 80ABB448  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABB44C  40 82 00 CC */	bne lbl_80ABB518
/* 80ABB450  38 00 00 00 */	li r0, 0
/* 80ABB454  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB458  48 00 00 C0 */	b lbl_80ABB518
lbl_80ABB45C:
/* 80ABB45C  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB460  28 00 00 00 */	cmplwi r0, 0
/* 80ABB464  40 82 00 0C */	bne lbl_80ABB470
/* 80ABB468  C0 3F 03 68 */	lfs f1, 0x368(r31)
/* 80ABB46C  48 00 00 0C */	b lbl_80ABB478
lbl_80ABB470:
/* 80ABB470  38 7F 00 00 */	addi r3, r31, 0
/* 80ABB474  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ABB478:
/* 80ABB478  7F A3 EB 78 */	mr r3, r29
/* 80ABB47C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABB480  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ABB484  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB488  4B 69 85 68 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ABB48C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB490  40 82 00 14 */	bne lbl_80ABB4A4
/* 80ABB494  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB498  4B 69 52 48 */	b remove__18daNpcF_ActorMngr_cFv
/* 80ABB49C  3B 60 00 00 */	li r27, 0
/* 80ABB4A0  48 00 00 68 */	b lbl_80ABB508
lbl_80ABB4A4:
/* 80ABB4A4  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB4A8  4B 69 52 44 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABB4AC  28 03 00 00 */	cmplwi r3, 0
/* 80ABB4B0  40 82 00 20 */	bne lbl_80ABB4D0
/* 80ABB4B4  7F A3 EB 78 */	mr r3, r29
/* 80ABB4B8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB4BC  7F A5 EB 78 */	mr r5, r29
/* 80ABB4C0  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80ABB4C4  4B 69 87 18 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ABB4C8  7C 7B 1B 78 */	mr r27, r3
/* 80ABB4CC  48 00 00 1C */	b lbl_80ABB4E8
lbl_80ABB4D0:
/* 80ABB4D0  7F A3 EB 78 */	mr r3, r29
/* 80ABB4D4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB4D8  7F A5 EB 78 */	mr r5, r29
/* 80ABB4DC  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80ABB4E0  4B 69 86 FC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ABB4E4  7C 7B 1B 78 */	mr r27, r3
lbl_80ABB4E8:
/* 80ABB4E8  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABB4EC  41 82 00 14 */	beq lbl_80ABB500
/* 80ABB4F0  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB4F4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ABB4F8  4B 69 51 C4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ABB4FC  48 00 00 0C */	b lbl_80ABB508
lbl_80ABB500:
/* 80ABB500  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB504  4B 69 51 DC */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ABB508:
/* 80ABB508  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABB50C  41 82 00 0C */	beq lbl_80ABB518
/* 80ABB510  38 00 00 00 */	li r0, 0
/* 80ABB514  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ABB518:
/* 80ABB518  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80ABB51C  4B 69 51 D0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ABB520  28 03 00 00 */	cmplwi r3, 0
/* 80ABB524  41 82 00 30 */	beq lbl_80ABB554
/* 80ABB528  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABB52C  2C 00 00 02 */	cmpwi r0, 2
/* 80ABB530  40 82 00 10 */	bne lbl_80ABB540
/* 80ABB534  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABB538  28 00 00 00 */	cmplwi r0, 0
/* 80ABB53C  41 82 01 D0 */	beq lbl_80ABB70C
lbl_80ABB540:
/* 80ABB540  38 00 00 02 */	li r0, 2
/* 80ABB544  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABB548  38 00 00 00 */	li r0, 0
/* 80ABB54C  90 1D 0C 9C */	stw r0, 0xc9c(r29)
/* 80ABB550  48 00 01 BC */	b lbl_80ABB70C
lbl_80ABB554:
/* 80ABB554  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABB558  2C 00 00 00 */	cmpwi r0, 0
/* 80ABB55C  40 82 00 10 */	bne lbl_80ABB56C
/* 80ABB560  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABB564  28 00 00 00 */	cmplwi r0, 0
/* 80ABB568  41 82 00 10 */	beq lbl_80ABB578
lbl_80ABB56C:
/* 80ABB56C  38 00 00 00 */	li r0, 0
/* 80ABB570  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABB574  90 1D 0C 9C */	stw r0, 0xc9c(r29)
lbl_80ABB578:
/* 80ABB578  AB 7D 04 B6 */	lha r27, 0x4b6(r29)
/* 80ABB57C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABB580  7C 1B 00 00 */	cmpw r27, r0
/* 80ABB584  41 82 01 88 */	beq lbl_80ABB70C
/* 80ABB588  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB58C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB590  40 82 00 D0 */	bne lbl_80ABB660
/* 80ABB594  C0 5F 03 58 */	lfs f2, 0x358(r31)
/* 80ABB598  7C 00 D8 50 */	subf r0, r0, r27
/* 80ABB59C  7C 00 07 34 */	extsh r0, r0
/* 80ABB5A0  C8 3F 03 70 */	lfd f1, 0x370(r31)
/* 80ABB5A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABB5A8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ABB5AC  3C 00 43 30 */	lis r0, 0x4330
/* 80ABB5B0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80ABB5B4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80ABB5B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABB5BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABB5C0  FC 00 02 10 */	fabs f0, f0
/* 80ABB5C4  FC 00 00 18 */	frsp f0, f0
/* 80ABB5C8  FC 00 00 1E */	fctiwz f0, f0
/* 80ABB5CC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ABB5D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABB5D4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABB5D8  40 81 00 40 */	ble lbl_80ABB618
/* 80ABB5DC  7F A3 EB 78 */	mr r3, r29
/* 80ABB5E0  38 80 00 07 */	li r4, 7
/* 80ABB5E4  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB5E8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB5EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABB5F0  7D 89 03 A6 */	mtctr r12
/* 80ABB5F4  4E 80 04 21 */	bctrl 
/* 80ABB5F8  7F A3 EB 78 */	mr r3, r29
/* 80ABB5FC  38 80 00 12 */	li r4, 0x12
/* 80ABB600  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB604  38 A0 00 00 */	li r5, 0
/* 80ABB608  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB60C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABB610  7D 89 03 A6 */	mtctr r12
/* 80ABB614  4E 80 04 21 */	bctrl 
lbl_80ABB618:
/* 80ABB618  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80ABB61C  38 00 00 00 */	li r0, 0
/* 80ABB620  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ABB624  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ABB628  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ABB62C  7C 03 00 00 */	cmpw r3, r0
/* 80ABB630  40 82 00 10 */	bne lbl_80ABB640
/* 80ABB634  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB638  38 03 00 01 */	addi r0, r3, 1
/* 80ABB63C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ABB640:
/* 80ABB640  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ABB644  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ABB648  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB64C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB650  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB654  38 03 00 01 */	addi r0, r3, 1
/* 80ABB658  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB65C  48 00 00 60 */	b lbl_80ABB6BC
lbl_80ABB660:
/* 80ABB660  2C 03 00 01 */	cmpwi r3, 1
/* 80ABB664  40 82 00 58 */	bne lbl_80ABB6BC
/* 80ABB668  7F A3 EB 78 */	mr r3, r29
/* 80ABB66C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ABB670  C0 3F 03 5C */	lfs f1, 0x35c(r31)
/* 80ABB674  38 A0 00 00 */	li r5, 0
/* 80ABB678  4B 69 88 7C */	b turn__8daNpcF_cFsfi
/* 80ABB67C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB680  41 82 00 2C */	beq lbl_80ABB6AC
/* 80ABB684  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB688  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB68C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB690  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ABB694  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB698  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ABB69C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ABB6A0  38 03 00 01 */	addi r0, r3, 1
/* 80ABB6A4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ABB6A8  48 00 00 14 */	b lbl_80ABB6BC
lbl_80ABB6AC:
/* 80ABB6AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB6B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ABB6B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ABB6B8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ABB6BC:
/* 80ABB6BC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ABB6C0  2C 00 00 01 */	cmpwi r0, 1
/* 80ABB6C4  40 81 00 48 */	ble lbl_80ABB70C
/* 80ABB6C8  7F A3 EB 78 */	mr r3, r29
/* 80ABB6CC  38 80 00 07 */	li r4, 7
/* 80ABB6D0  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB6D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB6D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABB6DC  7D 89 03 A6 */	mtctr r12
/* 80ABB6E0  4E 80 04 21 */	bctrl 
/* 80ABB6E4  7F A3 EB 78 */	mr r3, r29
/* 80ABB6E8  38 80 00 00 */	li r4, 0
/* 80ABB6EC  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABB6F0  38 A0 00 00 */	li r5, 0
/* 80ABB6F4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABB6F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABB6FC  7D 89 03 A6 */	mtctr r12
/* 80ABB700  4E 80 04 21 */	bctrl 
/* 80ABB704  38 00 00 00 */	li r0, 0
/* 80ABB708  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ABB70C:
/* 80ABB70C  88 1D 0E 15 */	lbz r0, 0xe15(r29)
/* 80ABB710  28 00 00 00 */	cmplwi r0, 0
/* 80ABB714  40 82 00 7C */	bne lbl_80ABB790
/* 80ABB718  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB71C  28 00 00 01 */	cmplwi r0, 1
/* 80ABB720  40 82 00 70 */	bne lbl_80ABB790
/* 80ABB724  7F A3 EB 78 */	mr r3, r29
/* 80ABB728  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABB72C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ABB730  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ABB734  4B 55 F0 AC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABB738  38 7F 00 00 */	addi r3, r31, 0
/* 80ABB73C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80ABB740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABB744  40 80 00 4C */	bge lbl_80ABB790
/* 80ABB748  38 60 00 0B */	li r3, 0xb
/* 80ABB74C  4B 69 9F E8 */	b daNpcF_offTmpBit__FUl
/* 80ABB750  38 60 00 0C */	li r3, 0xc
/* 80ABB754  4B 69 9F E0 */	b daNpcF_offTmpBit__FUl
/* 80ABB758  38 60 00 0D */	li r3, 0xd
/* 80ABB75C  4B 69 9F D8 */	b daNpcF_offTmpBit__FUl
/* 80ABB760  38 60 00 0E */	li r3, 0xe
/* 80ABB764  4B 69 9F D0 */	b daNpcF_offTmpBit__FUl
/* 80ABB768  38 60 00 0F */	li r3, 0xf
/* 80ABB76C  4B 69 9F C8 */	b daNpcF_offTmpBit__FUl
/* 80ABB770  38 60 00 33 */	li r3, 0x33
/* 80ABB774  4B 69 9F C0 */	b daNpcF_offTmpBit__FUl
/* 80ABB778  38 60 00 34 */	li r3, 0x34
/* 80ABB77C  4B 69 9F B8 */	b daNpcF_offTmpBit__FUl
/* 80ABB780  38 00 00 03 */	li r0, 3
/* 80ABB784  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ABB788  38 00 00 01 */	li r0, 1
/* 80ABB78C  98 1D 0E 15 */	stb r0, 0xe15(r29)
lbl_80ABB790:
/* 80ABB790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABB794  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80ABB798  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80ABB79C  28 00 00 00 */	cmplwi r0, 0
/* 80ABB7A0  41 82 02 E8 */	beq lbl_80ABBA88
/* 80ABB7A4  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80ABB7A8  28 00 00 01 */	cmplwi r0, 1
/* 80ABB7AC  40 82 02 34 */	bne lbl_80ABB9E0
/* 80ABB7B0  88 1D 0E 17 */	lbz r0, 0xe17(r29)
/* 80ABB7B4  28 00 00 00 */	cmplwi r0, 0
/* 80ABB7B8  40 82 00 28 */	bne lbl_80ABB7E0
/* 80ABB7BC  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 80ABB7C0  2C 00 00 05 */	cmpwi r0, 5
/* 80ABB7C4  40 82 00 1C */	bne lbl_80ABB7E0
/* 80ABB7C8  38 60 00 00 */	li r3, 0
/* 80ABB7CC  4B 57 11 B0 */	b getLayerNo__14dComIfG_play_cFi
/* 80ABB7D0  2C 03 00 02 */	cmpwi r3, 2
/* 80ABB7D4  40 82 00 0C */	bne lbl_80ABB7E0
/* 80ABB7D8  38 00 00 01 */	li r0, 1
/* 80ABB7DC  48 00 00 08 */	b lbl_80ABB7E4
lbl_80ABB7E0:
/* 80ABB7E0  38 00 00 00 */	li r0, 0
lbl_80ABB7E4:
/* 80ABB7E4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ABB7E8  41 82 00 38 */	beq lbl_80ABB820
/* 80ABB7EC  38 00 00 06 */	li r0, 6
/* 80ABB7F0  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ABB7F4  7F A3 EB 78 */	mr r3, r29
/* 80ABB7F8  80 9E 02 18 */	lwz r4, 0x218(r30)
/* 80ABB7FC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ABB800  54 00 10 3A */	slwi r0, r0, 2
/* 80ABB804  38 BE 02 28 */	addi r5, r30, 0x228
/* 80ABB808  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ABB80C  38 C0 00 01 */	li r6, 1
/* 80ABB810  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ABB814  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ABB818  4B 69 81 3C */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80ABB81C  48 00 02 D8 */	b lbl_80ABBAF4
lbl_80ABB820:
/* 80ABB820  3B 9F 4E C8 */	addi r28, r31, 0x4ec8
/* 80ABB824  38 00 00 00 */	li r0, 0
/* 80ABB828  88 7F 4F B5 */	lbz r3, 0x4fb5(r31)
/* 80ABB82C  28 03 00 01 */	cmplwi r3, 1
/* 80ABB830  41 82 00 0C */	beq lbl_80ABB83C
/* 80ABB834  28 03 00 02 */	cmplwi r3, 2
/* 80ABB838  40 82 00 08 */	bne lbl_80ABB840
lbl_80ABB83C:
/* 80ABB83C  38 00 00 01 */	li r0, 1
lbl_80ABB840:
/* 80ABB840  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ABB844  41 82 01 10 */	beq lbl_80ABB954
/* 80ABB848  3B 7F 4F F8 */	addi r27, r31, 0x4ff8
/* 80ABB84C  7F 63 DB 78 */	mr r3, r27
/* 80ABB850  4B 58 CF A0 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80ABB854  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB858  40 82 00 0C */	bne lbl_80ABB864
/* 80ABB85C  38 60 00 01 */	li r3, 1
/* 80ABB860  48 00 02 98 */	b lbl_80ABBAF8
lbl_80ABB864:
/* 80ABB864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABB868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABB86C  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80ABB870  28 00 00 90 */	cmplwi r0, 0x90
/* 80ABB874  40 82 00 98 */	bne lbl_80ABB90C
/* 80ABB878  38 00 00 21 */	li r0, 0x21
/* 80ABB87C  B0 1D 0E 0C */	sth r0, 0xe0c(r29)
/* 80ABB880  80 7E 03 28 */	lwz r3, 0x328(r30)
/* 80ABB884  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80ABB888  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ABB88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABB890  80 1E 03 30 */	lwz r0, 0x330(r30)
/* 80ABB894  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ABB898  38 00 00 03 */	li r0, 3
/* 80ABB89C  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABB8A0  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABB8A4  4B 8A 67 74 */	b __ptmf_test
/* 80ABB8A8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB8AC  41 82 00 18 */	beq lbl_80ABB8C4
/* 80ABB8B0  7F A3 EB 78 */	mr r3, r29
/* 80ABB8B4  38 80 00 00 */	li r4, 0
/* 80ABB8B8  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABB8BC  4B 8A 67 C8 */	b __ptmf_scall
/* 80ABB8C0  60 00 00 00 */	nop 
lbl_80ABB8C4:
/* 80ABB8C4  38 00 00 00 */	li r0, 0
/* 80ABB8C8  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABB8CC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ABB8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABB8D4  90 7D 0D E0 */	stw r3, 0xde0(r29)
/* 80ABB8D8  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80ABB8DC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ABB8E0  90 1D 0D E8 */	stw r0, 0xde8(r29)
/* 80ABB8E4  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABB8E8  4B 8A 67 30 */	b __ptmf_test
/* 80ABB8EC  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB8F0  41 82 02 04 */	beq lbl_80ABBAF4
/* 80ABB8F4  7F A3 EB 78 */	mr r3, r29
/* 80ABB8F8  38 80 00 00 */	li r4, 0
/* 80ABB8FC  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABB900  4B 8A 67 84 */	b __ptmf_scall
/* 80ABB904  60 00 00 00 */	nop 
/* 80ABB908  48 00 01 EC */	b lbl_80ABBAF4
lbl_80ABB90C:
/* 80ABB90C  7F 63 DB 78 */	mr r3, r27
/* 80ABB910  7F A4 EB 78 */	mr r4, r29
/* 80ABB914  3C A0 80 AC */	lis r5, struct_80ABFDBC+0x0@ha
/* 80ABB918  38 A5 FD BC */	addi r5, r5, struct_80ABFDBC+0x0@l
/* 80ABB91C  38 A5 00 A2 */	addi r5, r5, 0xa2
/* 80ABB920  38 C0 00 FF */	li r6, 0xff
/* 80ABB924  4B 58 BE 34 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80ABB928  7C 7B 1B 78 */	mr r27, r3
/* 80ABB92C  7F 83 E3 78 */	mr r3, r28
/* 80ABB930  7F A4 EB 78 */	mr r4, r29
/* 80ABB934  4B 58 6B E4 */	b reset__14dEvt_control_cFPv
/* 80ABB938  7F A3 EB 78 */	mr r3, r29
/* 80ABB93C  7F 64 DB 78 */	mr r4, r27
/* 80ABB940  38 A0 00 01 */	li r5, 1
/* 80ABB944  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ABB948  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ABB94C  4B 55 FC 98 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80ABB950  48 00 01 A4 */	b lbl_80ABBAF4
lbl_80ABB954:
/* 80ABB954  80 7E 03 34 */	lwz r3, 0x334(r30)
/* 80ABB958  80 1E 03 38 */	lwz r0, 0x338(r30)
/* 80ABB95C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ABB960  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABB964  80 1E 03 3C */	lwz r0, 0x33c(r30)
/* 80ABB968  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABB96C  38 00 00 03 */	li r0, 3
/* 80ABB970  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABB974  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABB978  4B 8A 66 A0 */	b __ptmf_test
/* 80ABB97C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB980  41 82 00 18 */	beq lbl_80ABB998
/* 80ABB984  7F A3 EB 78 */	mr r3, r29
/* 80ABB988  38 80 00 00 */	li r4, 0
/* 80ABB98C  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABB990  4B 8A 66 F4 */	b __ptmf_scall
/* 80ABB994  60 00 00 00 */	nop 
lbl_80ABB998:
/* 80ABB998  38 00 00 00 */	li r0, 0
/* 80ABB99C  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABB9A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ABB9A4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ABB9A8  90 7D 0D E0 */	stw r3, 0xde0(r29)
/* 80ABB9AC  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80ABB9B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABB9B4  90 1D 0D E8 */	stw r0, 0xde8(r29)
/* 80ABB9B8  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABB9BC  4B 8A 66 5C */	b __ptmf_test
/* 80ABB9C0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABB9C4  41 82 01 30 */	beq lbl_80ABBAF4
/* 80ABB9C8  7F A3 EB 78 */	mr r3, r29
/* 80ABB9CC  38 80 00 00 */	li r4, 0
/* 80ABB9D0  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABB9D4  4B 8A 66 B0 */	b __ptmf_scall
/* 80ABB9D8  60 00 00 00 */	nop 
/* 80ABB9DC  48 00 01 18 */	b lbl_80ABBAF4
lbl_80ABB9E0:
/* 80ABB9E0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80ABB9E4  80 9E 02 44 */	lwz r4, 0x244(r30)
/* 80ABB9E8  38 A0 00 00 */	li r5, 0
/* 80ABB9EC  38 C0 00 00 */	li r6, 0
/* 80ABB9F0  4B 58 C1 2C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ABB9F4  2C 03 FF FF */	cmpwi r3, -1
/* 80ABB9F8  41 82 00 FC */	beq lbl_80ABBAF4
/* 80ABB9FC  80 7E 03 40 */	lwz r3, 0x340(r30)
/* 80ABBA00  80 1E 03 44 */	lwz r0, 0x344(r30)
/* 80ABBA04  90 61 00 08 */	stw r3, 8(r1)
/* 80ABBA08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ABBA0C  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 80ABBA10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABBA14  38 00 00 03 */	li r0, 3
/* 80ABBA18  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABBA1C  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABBA20  4B 8A 65 F8 */	b __ptmf_test
/* 80ABBA24  2C 03 00 00 */	cmpwi r3, 0
/* 80ABBA28  41 82 00 18 */	beq lbl_80ABBA40
/* 80ABBA2C  7F A3 EB 78 */	mr r3, r29
/* 80ABBA30  38 80 00 00 */	li r4, 0
/* 80ABBA34  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABBA38  4B 8A 66 4C */	b __ptmf_scall
/* 80ABBA3C  60 00 00 00 */	nop 
lbl_80ABBA40:
/* 80ABBA40  38 00 00 00 */	li r0, 0
/* 80ABBA44  B0 1D 0E 10 */	sth r0, 0xe10(r29)
/* 80ABBA48  80 61 00 08 */	lwz r3, 8(r1)
/* 80ABBA4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ABBA50  90 7D 0D E0 */	stw r3, 0xde0(r29)
/* 80ABBA54  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80ABBA58  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ABBA5C  90 1D 0D E8 */	stw r0, 0xde8(r29)
/* 80ABBA60  38 7D 0D E0 */	addi r3, r29, 0xde0
/* 80ABBA64  4B 8A 65 B4 */	b __ptmf_test
/* 80ABBA68  2C 03 00 00 */	cmpwi r3, 0
/* 80ABBA6C  41 82 00 88 */	beq lbl_80ABBAF4
/* 80ABBA70  7F A3 EB 78 */	mr r3, r29
/* 80ABBA74  38 80 00 00 */	li r4, 0
/* 80ABBA78  39 9D 0D E0 */	addi r12, r29, 0xde0
/* 80ABBA7C  4B 8A 66 08 */	b __ptmf_scall
/* 80ABBA80  60 00 00 00 */	nop 
/* 80ABBA84  48 00 00 70 */	b lbl_80ABBAF4
lbl_80ABBA88:
/* 80ABBA88  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ABBA8C  28 00 00 00 */	cmplwi r0, 0
/* 80ABBA90  41 82 00 0C */	beq lbl_80ABBA9C
/* 80ABBA94  80 1E 02 18 */	lwz r0, 0x218(r30)
/* 80ABBA98  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80ABBA9C:
/* 80ABBA9C  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ABBAA0  28 00 00 00 */	cmplwi r0, 0
/* 80ABBAA4  41 82 00 14 */	beq lbl_80ABBAB8
/* 80ABBAA8  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80ABBAAC  38 7E 02 28 */	addi r3, r30, 0x228
/* 80ABBAB0  7C A3 00 2E */	lwzx r5, r3, r0
/* 80ABBAB4  48 00 00 08 */	b lbl_80ABBABC
lbl_80ABBAB8:
/* 80ABBAB8  38 A0 00 00 */	li r5, 0
lbl_80ABBABC:
/* 80ABBABC  7F A3 EB 78 */	mr r3, r29
/* 80ABBAC0  88 9D 0E 16 */	lbz r4, 0xe16(r29)
/* 80ABBAC4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ABBAC8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ABBACC  38 E0 00 28 */	li r7, 0x28
/* 80ABBAD0  39 00 00 FF */	li r8, 0xff
/* 80ABBAD4  39 20 00 01 */	li r9, 1
/* 80ABBAD8  4B 69 7D A4 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
/* 80ABBADC  88 1D 0E 15 */	lbz r0, 0xe15(r29)
/* 80ABBAE0  28 00 00 00 */	cmplwi r0, 0
/* 80ABBAE4  41 82 00 10 */	beq lbl_80ABBAF4
/* 80ABBAE8  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80ABBAEC  60 00 00 20 */	ori r0, r0, 0x20
/* 80ABBAF0  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_80ABBAF4:
/* 80ABBAF4  38 60 00 01 */	li r3, 1
lbl_80ABBAF8:
/* 80ABBAF8  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABBAFC  4B 8A 67 24 */	b _restgpr_27
/* 80ABBB00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ABBB04  7C 08 03 A6 */	mtlr r0
/* 80ABBB08  38 21 00 60 */	addi r1, r1, 0x60
/* 80ABBB0C  4E 80 00 20 */	blr 
