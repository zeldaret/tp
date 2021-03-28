lbl_80AD9F00:
/* 80AD9F00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AD9F04  7C 08 02 A6 */	mflr r0
/* 80AD9F08  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AD9F0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80AD9F10  4B 88 82 BC */	b _savegpr_25
/* 80AD9F14  7C 7B 1B 78 */	mr r27, r3
/* 80AD9F18  3C 80 80 AE */	lis r4, cNullVec__6Z2Calc@ha
/* 80AD9F1C  3B A4 26 20 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80AD9F20  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha
/* 80AD9F24  3B C4 1F DC */	addi r30, r4, m__17daNpcShad_Param_c@l
/* 80AD9F28  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80AD9F2C  2C 00 00 02 */	cmpwi r0, 2
/* 80AD9F30  41 82 00 6C */	beq lbl_80AD9F9C
/* 80AD9F34  40 80 06 E0 */	bge lbl_80ADA614
/* 80AD9F38  2C 00 00 00 */	cmpwi r0, 0
/* 80AD9F3C  41 82 00 0C */	beq lbl_80AD9F48
/* 80AD9F40  48 00 06 D4 */	b lbl_80ADA614
/* 80AD9F44  48 00 06 D0 */	b lbl_80ADA614
lbl_80AD9F48:
/* 80AD9F48  38 80 00 0C */	li r4, 0xc
/* 80AD9F4C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80AD9F50  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AD9F54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AD9F58  7D 89 03 A6 */	mtctr r12
/* 80AD9F5C  4E 80 04 21 */	bctrl 
/* 80AD9F60  7F 63 DB 78 */	mr r3, r27
/* 80AD9F64  38 80 00 04 */	li r4, 4
/* 80AD9F68  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80AD9F6C  38 A0 00 00 */	li r5, 0
/* 80AD9F70  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AD9F74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AD9F78  7D 89 03 A6 */	mtctr r12
/* 80AD9F7C  4E 80 04 21 */	bctrl 
/* 80AD9F80  38 00 00 00 */	li r0, 0
/* 80AD9F84  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80AD9F88  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80AD9F8C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80AD9F90  38 00 00 02 */	li r0, 2
/* 80AD9F94  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80AD9F98  48 00 06 7C */	b lbl_80ADA614
lbl_80AD9F9C:
/* 80AD9F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD9FA0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80AD9FA4  3B 9F 4E 00 */	addi r28, r31, 0x4e00
/* 80AD9FA8  7F 83 E3 78 */	mr r3, r28
/* 80AD9FAC  3C 80 80 AE */	lis r4, struct_80AE24C4+0x0@ha
/* 80AD9FB0  38 84 24 C4 */	addi r4, r4, struct_80AE24C4+0x0@l
/* 80AD9FB4  38 84 01 1B */	addi r4, r4, 0x11b
/* 80AD9FB8  4B 88 E9 DC */	b strcmp
/* 80AD9FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD9FC0  40 82 00 30 */	bne lbl_80AD9FF0
/* 80AD9FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD9FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD9FCC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80AD9FD0  2C 00 00 05 */	cmpwi r0, 5
/* 80AD9FD4  40 82 00 1C */	bne lbl_80AD9FF0
/* 80AD9FD8  38 60 00 00 */	li r3, 0
/* 80AD9FDC  4B 55 29 A0 */	b getLayerNo__14dComIfG_play_cFi
/* 80AD9FE0  2C 03 00 02 */	cmpwi r3, 2
/* 80AD9FE4  40 82 00 0C */	bne lbl_80AD9FF0
/* 80AD9FE8  38 00 00 01 */	li r0, 1
/* 80AD9FEC  48 00 00 08 */	b lbl_80AD9FF4
lbl_80AD9FF0:
/* 80AD9FF0  38 00 00 00 */	li r0, 0
lbl_80AD9FF4:
/* 80AD9FF4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AD9FF8  41 82 00 2C */	beq lbl_80ADA024
/* 80AD9FFC  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80ADA000  2C 00 00 00 */	cmpwi r0, 0
/* 80ADA004  40 82 00 10 */	bne lbl_80ADA014
/* 80ADA008  80 1B 0C A8 */	lwz r0, 0xca8(r27)
/* 80ADA00C  28 00 00 00 */	cmplwi r0, 0
/* 80ADA010  41 82 03 94 */	beq lbl_80ADA3A4
lbl_80ADA014:
/* 80ADA014  38 00 00 00 */	li r0, 0
/* 80ADA018  B0 1B 0E 18 */	sth r0, 0xe18(r27)
/* 80ADA01C  90 1B 0C A8 */	stw r0, 0xca8(r27)
/* 80ADA020  48 00 03 84 */	b lbl_80ADA3A4
lbl_80ADA024:
/* 80ADA024  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA028  4B 67 66 C4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADA02C  28 03 00 00 */	cmplwi r3, 0
/* 80ADA030  41 82 00 C4 */	beq lbl_80ADA0F4
/* 80ADA034  88 1B 0E 20 */	lbz r0, 0xe20(r27)
/* 80ADA038  28 00 00 00 */	cmplwi r0, 0
/* 80ADA03C  40 82 00 0C */	bne lbl_80ADA048
/* 80ADA040  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 80ADA044  48 00 00 0C */	b lbl_80ADA050
lbl_80ADA048:
/* 80ADA048  38 7E 00 00 */	addi r3, r30, 0
/* 80ADA04C  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ADA050:
/* 80ADA050  7F 63 DB 78 */	mr r3, r27
/* 80ADA054  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADA058  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 80ADA05C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA060  4B 67 99 90 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ADA064  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA068  40 82 00 14 */	bne lbl_80ADA07C
/* 80ADA06C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA070  4B 67 66 70 */	b remove__18daNpcF_ActorMngr_cFv
/* 80ADA074  3B 20 00 00 */	li r25, 0
/* 80ADA078  48 00 00 68 */	b lbl_80ADA0E0
lbl_80ADA07C:
/* 80ADA07C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA080  4B 67 66 6C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADA084  28 03 00 00 */	cmplwi r3, 0
/* 80ADA088  40 82 00 20 */	bne lbl_80ADA0A8
/* 80ADA08C  7F 63 DB 78 */	mr r3, r27
/* 80ADA090  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA094  7F 65 DB 78 */	mr r5, r27
/* 80ADA098  88 DB 05 47 */	lbz r6, 0x547(r27)
/* 80ADA09C  4B 67 9B 40 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADA0A0  7C 79 1B 78 */	mr r25, r3
/* 80ADA0A4  48 00 00 1C */	b lbl_80ADA0C0
lbl_80ADA0A8:
/* 80ADA0A8  7F 63 DB 78 */	mr r3, r27
/* 80ADA0AC  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA0B0  7F 65 DB 78 */	mr r5, r27
/* 80ADA0B4  88 DB 05 45 */	lbz r6, 0x545(r27)
/* 80ADA0B8  4B 67 9B 24 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADA0BC  7C 79 1B 78 */	mr r25, r3
lbl_80ADA0C0:
/* 80ADA0C0  2C 19 00 00 */	cmpwi r25, 0
/* 80ADA0C4  41 82 00 14 */	beq lbl_80ADA0D8
/* 80ADA0C8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA0CC  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA0D0  4B 67 65 EC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADA0D4  48 00 00 0C */	b lbl_80ADA0E0
lbl_80ADA0D8:
/* 80ADA0D8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA0DC  4B 67 66 04 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ADA0E0:
/* 80ADA0E0  2C 19 00 00 */	cmpwi r25, 0
/* 80ADA0E4  40 82 00 CC */	bne lbl_80ADA1B0
/* 80ADA0E8  38 00 00 00 */	li r0, 0
/* 80ADA0EC  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADA0F0  48 00 00 C0 */	b lbl_80ADA1B0
lbl_80ADA0F4:
/* 80ADA0F4  88 1B 0E 20 */	lbz r0, 0xe20(r27)
/* 80ADA0F8  28 00 00 00 */	cmplwi r0, 0
/* 80ADA0FC  40 82 00 0C */	bne lbl_80ADA108
/* 80ADA100  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 80ADA104  48 00 00 0C */	b lbl_80ADA110
lbl_80ADA108:
/* 80ADA108  38 7E 00 00 */	addi r3, r30, 0
/* 80ADA10C  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ADA110:
/* 80ADA110  7F 63 DB 78 */	mr r3, r27
/* 80ADA114  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADA118  3B 44 61 C0 */	addi r26, r4, g_dComIfG_gameInfo@l
/* 80ADA11C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA120  4B 67 98 D0 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ADA124  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA128  40 82 00 14 */	bne lbl_80ADA13C
/* 80ADA12C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA130  4B 67 65 B0 */	b remove__18daNpcF_ActorMngr_cFv
/* 80ADA134  3B 20 00 00 */	li r25, 0
/* 80ADA138  48 00 00 68 */	b lbl_80ADA1A0
lbl_80ADA13C:
/* 80ADA13C  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA140  4B 67 65 AC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADA144  28 03 00 00 */	cmplwi r3, 0
/* 80ADA148  40 82 00 20 */	bne lbl_80ADA168
/* 80ADA14C  7F 63 DB 78 */	mr r3, r27
/* 80ADA150  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA154  7F 65 DB 78 */	mr r5, r27
/* 80ADA158  88 DB 05 47 */	lbz r6, 0x547(r27)
/* 80ADA15C  4B 67 9A 80 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADA160  7C 79 1B 78 */	mr r25, r3
/* 80ADA164  48 00 00 1C */	b lbl_80ADA180
lbl_80ADA168:
/* 80ADA168  7F 63 DB 78 */	mr r3, r27
/* 80ADA16C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA170  7F 65 DB 78 */	mr r5, r27
/* 80ADA174  88 DB 05 45 */	lbz r6, 0x545(r27)
/* 80ADA178  4B 67 9A 64 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADA17C  7C 79 1B 78 */	mr r25, r3
lbl_80ADA180:
/* 80ADA180  2C 19 00 00 */	cmpwi r25, 0
/* 80ADA184  41 82 00 14 */	beq lbl_80ADA198
/* 80ADA188  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA18C  80 9A 5D AC */	lwz r4, 0x5dac(r26)
/* 80ADA190  4B 67 65 2C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADA194  48 00 00 0C */	b lbl_80ADA1A0
lbl_80ADA198:
/* 80ADA198  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA19C  4B 67 65 44 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ADA1A0:
/* 80ADA1A0  2C 19 00 00 */	cmpwi r25, 0
/* 80ADA1A4  41 82 00 0C */	beq lbl_80ADA1B0
/* 80ADA1A8  38 00 00 00 */	li r0, 0
/* 80ADA1AC  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80ADA1B0:
/* 80ADA1B0  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80ADA1B4  4B 67 65 38 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADA1B8  28 03 00 00 */	cmplwi r3, 0
/* 80ADA1BC  41 82 00 30 */	beq lbl_80ADA1EC
/* 80ADA1C0  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80ADA1C4  2C 00 00 02 */	cmpwi r0, 2
/* 80ADA1C8  40 82 00 10 */	bne lbl_80ADA1D8
/* 80ADA1CC  80 1B 0C A8 */	lwz r0, 0xca8(r27)
/* 80ADA1D0  28 00 00 00 */	cmplwi r0, 0
/* 80ADA1D4  41 82 01 D0 */	beq lbl_80ADA3A4
lbl_80ADA1D8:
/* 80ADA1D8  38 00 00 02 */	li r0, 2
/* 80ADA1DC  B0 1B 0E 18 */	sth r0, 0xe18(r27)
/* 80ADA1E0  38 00 00 00 */	li r0, 0
/* 80ADA1E4  90 1B 0C A8 */	stw r0, 0xca8(r27)
/* 80ADA1E8  48 00 01 BC */	b lbl_80ADA3A4
lbl_80ADA1EC:
/* 80ADA1EC  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80ADA1F0  2C 00 00 00 */	cmpwi r0, 0
/* 80ADA1F4  40 82 00 10 */	bne lbl_80ADA204
/* 80ADA1F8  80 1B 0C A8 */	lwz r0, 0xca8(r27)
/* 80ADA1FC  28 00 00 00 */	cmplwi r0, 0
/* 80ADA200  41 82 00 10 */	beq lbl_80ADA210
lbl_80ADA204:
/* 80ADA204  38 00 00 00 */	li r0, 0
/* 80ADA208  B0 1B 0E 18 */	sth r0, 0xe18(r27)
/* 80ADA20C  90 1B 0C A8 */	stw r0, 0xca8(r27)
lbl_80ADA210:
/* 80ADA210  AB 3B 04 B6 */	lha r25, 0x4b6(r27)
/* 80ADA214  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80ADA218  7C 19 00 00 */	cmpw r25, r0
/* 80ADA21C  41 82 01 88 */	beq lbl_80ADA3A4
/* 80ADA220  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADA224  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA228  40 82 00 D0 */	bne lbl_80ADA2F8
/* 80ADA22C  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 80ADA230  7C 00 C8 50 */	subf r0, r0, r25
/* 80ADA234  7C 00 07 34 */	extsh r0, r0
/* 80ADA238  C8 3E 04 50 */	lfd f1, 0x450(r30)
/* 80ADA23C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADA240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADA244  3C 00 43 30 */	lis r0, 0x4330
/* 80ADA248  90 01 00 20 */	stw r0, 0x20(r1)
/* 80ADA24C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80ADA250  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADA254  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADA258  FC 00 02 10 */	fabs f0, f0
/* 80ADA25C  FC 00 00 18 */	frsp f0, f0
/* 80ADA260  FC 00 00 1E */	fctiwz f0, f0
/* 80ADA264  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80ADA268  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80ADA26C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADA270  40 81 00 40 */	ble lbl_80ADA2B0
/* 80ADA274  7F 63 DB 78 */	mr r3, r27
/* 80ADA278  38 80 00 0C */	li r4, 0xc
/* 80ADA27C  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADA280  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADA284  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA288  7D 89 03 A6 */	mtctr r12
/* 80ADA28C  4E 80 04 21 */	bctrl 
/* 80ADA290  7F 63 DB 78 */	mr r3, r27
/* 80ADA294  38 80 00 15 */	li r4, 0x15
/* 80ADA298  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADA29C  38 A0 00 00 */	li r5, 0
/* 80ADA2A0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADA2A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA2A8  7D 89 03 A6 */	mtctr r12
/* 80ADA2AC  4E 80 04 21 */	bctrl 
lbl_80ADA2B0:
/* 80ADA2B0  B3 3B 09 96 */	sth r25, 0x996(r27)
/* 80ADA2B4  38 00 00 00 */	li r0, 0
/* 80ADA2B8  90 1B 09 68 */	stw r0, 0x968(r27)
/* 80ADA2BC  A8 7B 08 F2 */	lha r3, 0x8f2(r27)
/* 80ADA2C0  A8 1B 09 96 */	lha r0, 0x996(r27)
/* 80ADA2C4  7C 03 00 00 */	cmpw r3, r0
/* 80ADA2C8  40 82 00 10 */	bne lbl_80ADA2D8
/* 80ADA2CC  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADA2D0  38 03 00 01 */	addi r0, r3, 1
/* 80ADA2D4  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80ADA2D8:
/* 80ADA2D8  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80ADA2DC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 80ADA2E0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA2E4  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADA2E8  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADA2EC  38 03 00 01 */	addi r0, r3, 1
/* 80ADA2F0  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADA2F4  48 00 00 60 */	b lbl_80ADA354
lbl_80ADA2F8:
/* 80ADA2F8  2C 03 00 01 */	cmpwi r3, 1
/* 80ADA2FC  40 82 00 58 */	bne lbl_80ADA354
/* 80ADA300  7F 63 DB 78 */	mr r3, r27
/* 80ADA304  A8 9B 09 96 */	lha r4, 0x996(r27)
/* 80ADA308  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 80ADA30C  38 A0 00 00 */	li r5, 0
/* 80ADA310  4B 67 9B E4 */	b turn__8daNpcF_cFsfi
/* 80ADA314  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA318  41 82 00 2C */	beq lbl_80ADA344
/* 80ADA31C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA320  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADA324  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA328  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80ADA32C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA330  B0 1B 08 F8 */	sth r0, 0x8f8(r27)
/* 80ADA334  80 7B 09 6C */	lwz r3, 0x96c(r27)
/* 80ADA338  38 03 00 01 */	addi r0, r3, 1
/* 80ADA33C  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80ADA340  48 00 00 14 */	b lbl_80ADA354
lbl_80ADA344:
/* 80ADA344  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA348  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80ADA34C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80ADA350  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
lbl_80ADA354:
/* 80ADA354  80 1B 09 6C */	lwz r0, 0x96c(r27)
/* 80ADA358  2C 00 00 01 */	cmpwi r0, 1
/* 80ADA35C  40 81 00 48 */	ble lbl_80ADA3A4
/* 80ADA360  7F 63 DB 78 */	mr r3, r27
/* 80ADA364  38 80 00 0C */	li r4, 0xc
/* 80ADA368  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADA36C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADA370  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA374  7D 89 03 A6 */	mtctr r12
/* 80ADA378  4E 80 04 21 */	bctrl 
/* 80ADA37C  7F 63 DB 78 */	mr r3, r27
/* 80ADA380  38 80 00 04 */	li r4, 4
/* 80ADA384  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 80ADA388  38 A0 00 00 */	li r5, 0
/* 80ADA38C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80ADA390  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA394  7D 89 03 A6 */	mtctr r12
/* 80ADA398  4E 80 04 21 */	bctrl 
/* 80ADA39C  38 00 00 00 */	li r0, 0
/* 80ADA3A0  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80ADA3A4:
/* 80ADA3A4  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80ADA3A8  28 00 00 00 */	cmplwi r0, 0
/* 80ADA3AC  41 82 02 0C */	beq lbl_80ADA5B8
/* 80ADA3B0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80ADA3B4  28 00 00 01 */	cmplwi r0, 1
/* 80ADA3B8  40 82 01 58 */	bne lbl_80ADA510
/* 80ADA3BC  38 00 00 00 */	li r0, 0
/* 80ADA3C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADA3C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADA3C8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80ADA3CC  28 03 00 01 */	cmplwi r3, 1
/* 80ADA3D0  41 82 00 0C */	beq lbl_80ADA3DC
/* 80ADA3D4  28 03 00 02 */	cmplwi r3, 2
/* 80ADA3D8  40 82 00 08 */	bne lbl_80ADA3E0
lbl_80ADA3DC:
/* 80ADA3DC  38 00 00 01 */	li r0, 1
lbl_80ADA3E0:
/* 80ADA3E0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADA3E4  41 82 00 14 */	beq lbl_80ADA3F8
/* 80ADA3E8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80ADA3EC  4B 56 E4 04 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80ADA3F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA3F4  41 82 02 20 */	beq lbl_80ADA614
lbl_80ADA3F8:
/* 80ADA3F8  7F 83 E3 78 */	mr r3, r28
/* 80ADA3FC  3C 80 80 AE */	lis r4, struct_80AE24C4+0x0@ha
/* 80ADA400  38 84 24 C4 */	addi r4, r4, struct_80AE24C4+0x0@l
/* 80ADA404  38 84 01 1B */	addi r4, r4, 0x11b
/* 80ADA408  4B 88 E5 8C */	b strcmp
/* 80ADA40C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA410  40 82 00 30 */	bne lbl_80ADA440
/* 80ADA414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADA418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADA41C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80ADA420  2C 00 00 05 */	cmpwi r0, 5
/* 80ADA424  40 82 00 1C */	bne lbl_80ADA440
/* 80ADA428  38 60 00 00 */	li r3, 0
/* 80ADA42C  4B 55 25 50 */	b getLayerNo__14dComIfG_play_cFi
/* 80ADA430  2C 03 00 02 */	cmpwi r3, 2
/* 80ADA434  40 82 00 0C */	bne lbl_80ADA440
/* 80ADA438  38 00 00 01 */	li r0, 1
/* 80ADA43C  48 00 00 08 */	b lbl_80ADA444
lbl_80ADA440:
/* 80ADA440  38 00 00 00 */	li r0, 0
lbl_80ADA444:
/* 80ADA444  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADA448  41 82 00 3C */	beq lbl_80ADA484
/* 80ADA44C  38 00 00 0C */	li r0, 0xc
/* 80ADA450  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80ADA454  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80ADA458  54 00 10 3A */	slwi r0, r0, 2
/* 80ADA45C  7F 63 DB 78 */	mr r3, r27
/* 80ADA460  38 9D 03 08 */	addi r4, r29, 0x308
/* 80ADA464  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADA468  38 BD 02 D0 */	addi r5, r29, 0x2d0
/* 80ADA46C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADA470  38 C0 00 01 */	li r6, 1
/* 80ADA474  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADA478  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADA47C  4B 67 94 D8 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80ADA480  48 00 01 94 */	b lbl_80ADA614
lbl_80ADA484:
/* 80ADA484  80 7D 04 E0 */	lwz r3, 0x4e0(r29)
/* 80ADA488  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80ADA48C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ADA490  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADA494  80 1D 04 E8 */	lwz r0, 0x4e8(r29)
/* 80ADA498  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADA49C  38 00 00 03 */	li r0, 3
/* 80ADA4A0  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADA4A4  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADA4A8  4B 88 7B 70 */	b __ptmf_test
/* 80ADA4AC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA4B0  41 82 00 18 */	beq lbl_80ADA4C8
/* 80ADA4B4  7F 63 DB 78 */	mr r3, r27
/* 80ADA4B8  38 80 00 00 */	li r4, 0
/* 80ADA4BC  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADA4C0  4B 88 7B C4 */	b __ptmf_scall
/* 80ADA4C4  60 00 00 00 */	nop 
lbl_80ADA4C8:
/* 80ADA4C8  38 00 00 00 */	li r0, 0
/* 80ADA4CC  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADA4D0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ADA4D4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ADA4D8  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADA4DC  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADA4E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ADA4E4  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADA4E8  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADA4EC  4B 88 7B 2C */	b __ptmf_test
/* 80ADA4F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA4F4  41 82 01 20 */	beq lbl_80ADA614
/* 80ADA4F8  7F 63 DB 78 */	mr r3, r27
/* 80ADA4FC  38 80 00 00 */	li r4, 0
/* 80ADA500  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADA504  4B 88 7B 80 */	b __ptmf_scall
/* 80ADA508  60 00 00 00 */	nop 
/* 80ADA50C  48 00 01 08 */	b lbl_80ADA614
lbl_80ADA510:
/* 80ADA510  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80ADA514  80 9D 03 40 */	lwz r4, 0x340(r29)
/* 80ADA518  38 A0 00 00 */	li r5, 0
/* 80ADA51C  38 C0 00 00 */	li r6, 0
/* 80ADA520  4B 56 D5 FC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ADA524  2C 03 FF FF */	cmpwi r3, -1
/* 80ADA528  41 82 00 EC */	beq lbl_80ADA614
/* 80ADA52C  80 7D 04 EC */	lwz r3, 0x4ec(r29)
/* 80ADA530  80 1D 04 F0 */	lwz r0, 0x4f0(r29)
/* 80ADA534  90 61 00 08 */	stw r3, 8(r1)
/* 80ADA538  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ADA53C  80 1D 04 F4 */	lwz r0, 0x4f4(r29)
/* 80ADA540  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADA544  38 00 00 03 */	li r0, 3
/* 80ADA548  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADA54C  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADA550  4B 88 7A C8 */	b __ptmf_test
/* 80ADA554  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA558  41 82 00 18 */	beq lbl_80ADA570
/* 80ADA55C  7F 63 DB 78 */	mr r3, r27
/* 80ADA560  38 80 00 00 */	li r4, 0
/* 80ADA564  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADA568  4B 88 7B 1C */	b __ptmf_scall
/* 80ADA56C  60 00 00 00 */	nop 
lbl_80ADA570:
/* 80ADA570  38 00 00 00 */	li r0, 0
/* 80ADA574  B0 1B 0E 1A */	sth r0, 0xe1a(r27)
/* 80ADA578  80 61 00 08 */	lwz r3, 8(r1)
/* 80ADA57C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ADA580  90 7B 0D EC */	stw r3, 0xdec(r27)
/* 80ADA584  90 1B 0D F0 */	stw r0, 0xdf0(r27)
/* 80ADA588  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ADA58C  90 1B 0D F4 */	stw r0, 0xdf4(r27)
/* 80ADA590  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80ADA594  4B 88 7A 84 */	b __ptmf_test
/* 80ADA598  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA59C  41 82 00 78 */	beq lbl_80ADA614
/* 80ADA5A0  7F 63 DB 78 */	mr r3, r27
/* 80ADA5A4  38 80 00 00 */	li r4, 0
/* 80ADA5A8  39 9B 0D EC */	addi r12, r27, 0xdec
/* 80ADA5AC  4B 88 7A D8 */	b __ptmf_scall
/* 80ADA5B0  60 00 00 00 */	nop 
/* 80ADA5B4  48 00 00 60 */	b lbl_80ADA614
lbl_80ADA5B8:
/* 80ADA5B8  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80ADA5BC  28 00 00 00 */	cmplwi r0, 0
/* 80ADA5C0  41 82 00 14 */	beq lbl_80ADA5D4
/* 80ADA5C4  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80ADA5C8  38 7D 03 08 */	addi r3, r29, 0x308
/* 80ADA5CC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80ADA5D0  90 1B 01 00 */	stw r0, 0x100(r27)
lbl_80ADA5D4:
/* 80ADA5D4  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80ADA5D8  28 00 00 00 */	cmplwi r0, 0
/* 80ADA5DC  41 82 00 14 */	beq lbl_80ADA5F0
/* 80ADA5E0  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80ADA5E4  38 7D 02 D0 */	addi r3, r29, 0x2d0
/* 80ADA5E8  7C A3 00 2E */	lwzx r5, r3, r0
/* 80ADA5EC  48 00 00 08 */	b lbl_80ADA5F4
lbl_80ADA5F0:
/* 80ADA5F0  38 A0 00 00 */	li r5, 0
lbl_80ADA5F4:
/* 80ADA5F4  7F 63 DB 78 */	mr r3, r27
/* 80ADA5F8  88 9B 09 E9 */	lbz r4, 0x9e9(r27)
/* 80ADA5FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ADA600  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ADA604  38 E0 00 28 */	li r7, 0x28
/* 80ADA608  39 00 00 FF */	li r8, 0xff
/* 80ADA60C  39 20 00 01 */	li r9, 1
/* 80ADA610  4B 67 92 6C */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80ADA614:
/* 80ADA614  38 60 00 01 */	li r3, 1
/* 80ADA618  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADA61C  4B 88 7B FC */	b _restgpr_25
/* 80ADA620  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80ADA624  7C 08 03 A6 */	mtlr r0
/* 80ADA628  38 21 00 50 */	addi r1, r1, 0x50
/* 80ADA62C  4E 80 00 20 */	blr 
