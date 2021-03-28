lbl_8025CF04:
/* 8025CF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025CF08  7C 08 02 A6 */	mflr r0
/* 8025CF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025CF10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025CF14  93 C1 00 08 */	stw r30, 8(r1)
/* 8025CF18  7C 7F 1B 78 */	mr r31, r3
/* 8025CF1C  80 03 01 54 */	lwz r0, 0x154(r3)
/* 8025CF20  2C 00 00 06 */	cmpwi r0, 6
/* 8025CF24  40 82 00 1C */	bne lbl_8025CF40
/* 8025CF28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025CF2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8025CF30  A0 04 00 02 */	lhz r0, 2(r4)
/* 8025CF34  28 00 00 00 */	cmplwi r0, 0
/* 8025CF38  40 82 00 08 */	bne lbl_8025CF40
/* 8025CF3C  4B DC 2B 11 */	bl fopMsgM_Delete__FPv
lbl_8025CF40:
/* 8025CF40  88 1F 01 6A */	lbz r0, 0x16a(r31)
/* 8025CF44  28 00 00 01 */	cmplwi r0, 1
/* 8025CF48  41 82 02 20 */	beq lbl_8025D168
/* 8025CF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025CF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025CF54  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8025CF58  28 00 00 00 */	cmplwi r0, 0
/* 8025CF5C  40 82 00 20 */	bne lbl_8025CF7C
/* 8025CF60  4B FD B2 CD */	bl getStatus__12dMsgObject_cFv
/* 8025CF64  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8025CF68  20 60 00 01 */	subfic r3, r0, 1
/* 8025CF6C  30 03 FF FF */	addic r0, r3, -1
/* 8025CF70  7C 00 19 10 */	subfe r0, r0, r3
/* 8025CF74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8025CF78  41 82 00 10 */	beq lbl_8025CF88
lbl_8025CF7C:
/* 8025CF7C  7F E3 FB 78 */	mr r3, r31
/* 8025CF80  38 80 00 02 */	li r4, 2
/* 8025CF84  48 00 08 65 */	bl stop__8dTimer_cFUc
lbl_8025CF88:
/* 8025CF88  7F E3 FB 78 */	mr r3, r31
/* 8025CF8C  48 00 0B 11 */	bl getRestTimeMs__8dTimer_cFv
/* 8025CF90  90 7F 01 50 */	stw r3, 0x150(r31)
/* 8025CF94  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025CF98  2C 00 00 04 */	cmpwi r0, 4
/* 8025CF9C  41 82 00 CC */	beq lbl_8025D068
/* 8025CFA0  40 80 00 18 */	bge lbl_8025CFB8
/* 8025CFA4  2C 00 00 02 */	cmpwi r0, 2
/* 8025CFA8  40 80 00 7C */	bge lbl_8025D024
/* 8025CFAC  2C 00 00 00 */	cmpwi r0, 0
/* 8025CFB0  40 80 00 10 */	bge lbl_8025CFC0
/* 8025CFB4  48 00 01 A0 */	b lbl_8025D154
lbl_8025CFB8:
/* 8025CFB8  2C 00 00 06 */	cmpwi r0, 6
/* 8025CFBC  40 80 01 98 */	bge lbl_8025D154
lbl_8025CFC0:
/* 8025CFC0  38 00 00 00 */	li r0, 0
/* 8025CFC4  90 1F 01 14 */	stw r0, 0x114(r31)
/* 8025CFC8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8025CFCC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8025CFD0  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8025CFD4  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025CFD8  28 00 00 01 */	cmplwi r0, 1
/* 8025CFDC  41 82 00 0C */	beq lbl_8025CFE8
/* 8025CFE0  28 00 00 05 */	cmplwi r0, 5
/* 8025CFE4  40 82 02 40 */	bne lbl_8025D224
lbl_8025CFE8:
/* 8025CFE8  A8 7F 01 68 */	lha r3, 0x168(r31)
/* 8025CFEC  38 03 FF FF */	addi r0, r3, -1
/* 8025CFF0  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 8025CFF4  7C 00 07 35 */	extsh. r0, r0
/* 8025CFF8  41 81 02 2C */	bgt lbl_8025D224
/* 8025CFFC  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D000  28 00 00 05 */	cmplwi r0, 5
/* 8025D004  40 82 00 10 */	bne lbl_8025D014
/* 8025D008  7F E3 FB 78 */	mr r3, r31
/* 8025D00C  48 00 06 FD */	bl stock_start__8dTimer_cFv
/* 8025D010  48 00 02 14 */	b lbl_8025D224
lbl_8025D014:
/* 8025D014  7F E3 FB 78 */	mr r3, r31
/* 8025D018  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8025D01C  48 00 05 1D */	bl start__8dTimer_cFi
/* 8025D020  48 00 02 04 */	b lbl_8025D224
lbl_8025D024:
/* 8025D024  A8 7F 01 68 */	lha r3, 0x168(r31)
/* 8025D028  38 03 FF FF */	addi r0, r3, -1
/* 8025D02C  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 8025D030  7C 00 07 35 */	extsh. r0, r0
/* 8025D034  41 81 00 0C */	bgt lbl_8025D040
/* 8025D038  38 00 00 04 */	li r0, 4
/* 8025D03C  98 1F 01 6C */	stb r0, 0x16c(r31)
lbl_8025D040:
/* 8025D040  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D044  28 00 00 02 */	cmplwi r0, 2
/* 8025D048  40 82 01 DC */	bne lbl_8025D224
/* 8025D04C  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D050  48 00 3A 59 */	bl checkStartAnimeEnd__21dDlst_TimerScrnDraw_cFv
/* 8025D054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025D058  41 82 01 CC */	beq lbl_8025D224
/* 8025D05C  38 00 00 03 */	li r0, 3
/* 8025D060  98 1F 01 6C */	stb r0, 0x16c(r31)
/* 8025D064  48 00 01 C0 */	b lbl_8025D224
lbl_8025D068:
/* 8025D068  4B DD 57 9D */	bl getTime__11dLib_time_cFv
/* 8025D06C  90 9F 01 1C */	stw r4, 0x11c(r31)
/* 8025D070  90 7F 01 18 */	stw r3, 0x118(r31)
/* 8025D074  7F E3 FB 78 */	mr r3, r31
/* 8025D078  48 00 09 79 */	bl getTimeMs__8dTimer_cFv
/* 8025D07C  7C 64 1B 78 */	mr r4, r3
/* 8025D080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025D084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025D088  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8025D08C  7F C3 F3 78 */	mr r3, r30
/* 8025D090  4B DC FB 05 */	bl setTimerNowTimeMs__14dComIfG_play_cFi
/* 8025D094  7F E3 FB 78 */	mr r3, r31
/* 8025D098  48 00 09 BD */	bl getLimitTimeMs__8dTimer_cFv
/* 8025D09C  7C 64 1B 78 */	mr r4, r3
/* 8025D0A0  7F C3 F3 78 */	mr r3, r30
/* 8025D0A4  4B DC FB 01 */	bl setTimerLimitTimeMs__14dComIfG_play_cFi
/* 8025D0A8  7F E3 FB 78 */	mr r3, r31
/* 8025D0AC  48 00 09 F1 */	bl getRestTimeMs__8dTimer_cFv
/* 8025D0B0  2C 03 00 00 */	cmpwi r3, 0
/* 8025D0B4  41 81 00 44 */	bgt lbl_8025D0F8
/* 8025D0B8  80 9F 01 40 */	lwz r4, 0x140(r31)
/* 8025D0BC  80 BF 01 44 */	lwz r5, 0x144(r31)
/* 8025D0C0  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 8025D0C4  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 8025D0C8  7C 65 18 14 */	addc r3, r5, r3
/* 8025D0CC  7C 04 01 14 */	adde r0, r4, r0
/* 8025D0D0  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8025D0D4  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8025D0D8  38 00 00 00 */	li r0, 0
/* 8025D0DC  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 8025D0E0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8025D0E4  7F E3 FB 78 */	mr r3, r31
/* 8025D0E8  48 00 09 09 */	bl getTimeMs__8dTimer_cFv
/* 8025D0EC  7C 64 1B 78 */	mr r4, r3
/* 8025D0F0  7F C3 F3 78 */	mr r3, r30
/* 8025D0F4  4B DC FA A1 */	bl setTimerNowTimeMs__14dComIfG_play_cFi
lbl_8025D0F8:
/* 8025D0F8  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025D0FC  2C 00 00 03 */	cmpwi r0, 3
/* 8025D100  41 82 00 1C */	beq lbl_8025D11C
/* 8025D104  2C 00 00 04 */	cmpwi r0, 4
/* 8025D108  41 82 00 14 */	beq lbl_8025D11C
/* 8025D10C  2C 00 00 06 */	cmpwi r0, 6
/* 8025D110  41 82 00 0C */	beq lbl_8025D11C
/* 8025D114  2C 00 00 05 */	cmpwi r0, 5
/* 8025D118  40 82 01 0C */	bne lbl_8025D224
lbl_8025D11C:
/* 8025D11C  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D120  C0 43 03 C4 */	lfs f2, 0x3c4(r3)
/* 8025D124  C0 22 B5 44 */	lfs f1, lit_3920(r2)
/* 8025D128  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8025D12C  40 80 00 F8 */	bge lbl_8025D224
/* 8025D130  C0 02 B5 48 */	lfs f0, lit_4050(r2)
/* 8025D134  EC 42 00 2A */	fadds f2, f2, f0
/* 8025D138  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8025D13C  40 81 00 08 */	ble lbl_8025D144
/* 8025D140  FC 40 08 90 */	fmr f2, f1
lbl_8025D144:
/* 8025D144  C0 02 B5 40 */	lfs f0, lit_3919(r2)
/* 8025D148  D0 03 03 C0 */	stfs f0, 0x3c0(r3)
/* 8025D14C  D0 43 03 C4 */	stfs f2, 0x3c4(r3)
/* 8025D150  48 00 00 D4 */	b lbl_8025D224
lbl_8025D154:
/* 8025D154  80 1F 01 20 */	lwz r0, 0x120(r31)
/* 8025D158  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 8025D15C  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8025D160  90 1F 01 18 */	stw r0, 0x118(r31)
/* 8025D164  48 00 00 C0 */	b lbl_8025D224
lbl_8025D168:
/* 8025D168  88 1F 01 6B */	lbz r0, 0x16b(r31)
/* 8025D16C  28 00 00 02 */	cmplwi r0, 2
/* 8025D170  40 82 00 40 */	bne lbl_8025D1B0
/* 8025D174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025D178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025D17C  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8025D180  28 00 00 00 */	cmplwi r0, 0
/* 8025D184  40 82 00 2C */	bne lbl_8025D1B0
/* 8025D188  4B FD B0 A5 */	bl getStatus__12dMsgObject_cFv
/* 8025D18C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8025D190  20 60 00 01 */	subfic r3, r0, 1
/* 8025D194  30 03 FF FF */	addic r0, r3, -1
/* 8025D198  7C 00 19 10 */	subfe r0, r0, r3
/* 8025D19C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8025D1A0  40 82 00 10 */	bne lbl_8025D1B0
/* 8025D1A4  7F E3 FB 78 */	mr r3, r31
/* 8025D1A8  38 80 00 02 */	li r4, 2
/* 8025D1AC  48 00 06 C1 */	bl restart__8dTimer_cFUc
lbl_8025D1B0:
/* 8025D1B0  88 1F 01 6B */	lbz r0, 0x16b(r31)
/* 8025D1B4  28 00 00 03 */	cmplwi r0, 3
/* 8025D1B8  40 82 00 6C */	bne lbl_8025D224
/* 8025D1BC  A8 7F 01 68 */	lha r3, 0x168(r31)
/* 8025D1C0  38 03 FF FF */	addi r0, r3, -1
/* 8025D1C4  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 8025D1C8  A8 9F 01 68 */	lha r4, 0x168(r31)
/* 8025D1CC  7C 80 07 35 */	extsh. r0, r4
/* 8025D1D0  41 81 00 1C */	bgt lbl_8025D1EC
/* 8025D1D4  38 00 00 00 */	li r0, 0
/* 8025D1D8  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 8025D1DC  7F E3 FB 78 */	mr r3, r31
/* 8025D1E0  38 80 00 03 */	li r4, 3
/* 8025D1E4  48 00 06 89 */	bl restart__8dTimer_cFUc
/* 8025D1E8  48 00 00 3C */	b lbl_8025D224
lbl_8025D1EC:
/* 8025D1EC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8025D1F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8025D1F4  A8 03 0B EA */	lha r0, 0xbea(r3)
/* 8025D1F8  7C 04 00 00 */	cmpw r4, r0
/* 8025D1FC  40 82 00 28 */	bne lbl_8025D224
/* 8025D200  38 00 00 00 */	li r0, 0
/* 8025D204  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D208  98 03 03 DC */	stb r0, 0x3dc(r3)
/* 8025D20C  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025D210  2C 00 00 03 */	cmpwi r0, 3
/* 8025D214  41 82 00 10 */	beq lbl_8025D224
/* 8025D218  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D21C  38 80 05 2D */	li r4, 0x52d
/* 8025D220  48 00 33 55 */	bl createStart__21dDlst_TimerScrnDraw_cFUs
lbl_8025D224:
/* 8025D224  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D228  48 00 09 B9 */	bl setHIO__21dDlst_TimerScrnDraw_cFv
/* 8025D22C  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D230  28 00 00 08 */	cmplwi r0, 8
/* 8025D234  40 82 00 24 */	bne lbl_8025D258
/* 8025D238  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D23C  48 00 2D 5D */	bl closeAnime__21dDlst_TimerScrnDraw_cFv
/* 8025D240  2C 03 00 00 */	cmpwi r3, 0
/* 8025D244  41 82 00 30 */	beq lbl_8025D274
/* 8025D248  7F E3 FB 78 */	mr r3, r31
/* 8025D24C  4B DC 28 01 */	bl fopMsgM_Delete__FPv
/* 8025D250  38 60 00 01 */	li r3, 1
/* 8025D254  48 00 00 D0 */	b lbl_8025D324
lbl_8025D258:
/* 8025D258  28 00 00 06 */	cmplwi r0, 6
/* 8025D25C  40 82 00 18 */	bne lbl_8025D274
/* 8025D260  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 8025D264  2C 03 00 00 */	cmpwi r3, 0
/* 8025D268  40 81 00 0C */	ble lbl_8025D274
/* 8025D26C  38 03 FF FF */	addi r0, r3, -1
/* 8025D270  90 1F 01 58 */	stw r0, 0x158(r31)
lbl_8025D274:
/* 8025D274  88 1F 01 6C */	lbz r0, 0x16c(r31)
/* 8025D278  28 00 00 00 */	cmplwi r0, 0
/* 8025D27C  41 82 00 2C */	beq lbl_8025D2A8
/* 8025D280  28 00 00 02 */	cmplwi r0, 2
/* 8025D284  41 82 00 24 */	beq lbl_8025D2A8
/* 8025D288  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 8025D28C  2C 03 00 05 */	cmpwi r3, 5
/* 8025D290  40 81 00 10 */	ble lbl_8025D2A0
/* 8025D294  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D298  48 00 28 DD */	bl anime__21dDlst_TimerScrnDraw_cFv
/* 8025D29C  48 00 00 0C */	b lbl_8025D2A8
lbl_8025D2A0:
/* 8025D2A0  38 03 00 01 */	addi r0, r3, 1
/* 8025D2A4  90 1F 01 5C */	stw r0, 0x15c(r31)
lbl_8025D2A8:
/* 8025D2A8  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 8025D2AC  2C 00 00 02 */	cmpwi r0, 2
/* 8025D2B0  41 82 00 2C */	beq lbl_8025D2DC
/* 8025D2B4  2C 00 00 07 */	cmpwi r0, 7
/* 8025D2B8  41 82 00 24 */	beq lbl_8025D2DC
/* 8025D2BC  2C 00 00 03 */	cmpwi r0, 3
/* 8025D2C0  41 82 00 1C */	beq lbl_8025D2DC
/* 8025D2C4  2C 00 00 04 */	cmpwi r0, 4
/* 8025D2C8  41 82 00 14 */	beq lbl_8025D2DC
/* 8025D2CC  2C 00 00 05 */	cmpwi r0, 5
/* 8025D2D0  41 82 00 0C */	beq lbl_8025D2DC
/* 8025D2D4  2C 00 00 00 */	cmpwi r0, 0
/* 8025D2D8  40 82 00 1C */	bne lbl_8025D2F4
lbl_8025D2DC:
/* 8025D2DC  7F E3 FB 78 */	mr r3, r31
/* 8025D2E0  48 00 07 11 */	bl getTimeMs__8dTimer_cFv
/* 8025D2E4  7C 64 1B 78 */	mr r4, r3
/* 8025D2E8  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D2EC  48 00 1C 05 */	bl setTimer__21dDlst_TimerScrnDraw_cFi
/* 8025D2F0  48 00 00 18 */	b lbl_8025D308
lbl_8025D2F4:
/* 8025D2F4  7F E3 FB 78 */	mr r3, r31
/* 8025D2F8  48 00 07 A5 */	bl getRestTimeMs__8dTimer_cFv
/* 8025D2FC  7C 64 1B 78 */	mr r4, r3
/* 8025D300  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D304  48 00 1B ED */	bl setTimer__21dDlst_TimerScrnDraw_cFi
lbl_8025D308:
/* 8025D308  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 8025D30C  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 8025D310  38 A4 01 88 */	addi r5, r4, g_meter2_info@l
/* 8025D314  88 85 00 BC */	lbz r4, 0xbc(r5)
/* 8025D318  88 A5 00 BB */	lbz r5, 0xbb(r5)
/* 8025D31C  48 00 1E 65 */	bl setCounter__21dDlst_TimerScrnDraw_cFUcUc
/* 8025D320  38 60 00 01 */	li r3, 1
lbl_8025D324:
/* 8025D324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025D328  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025D32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025D330  7C 08 03 A6 */	mtlr r0
/* 8025D334  38 21 00 10 */	addi r1, r1, 0x10
/* 8025D338  4E 80 00 20 */	blr 
