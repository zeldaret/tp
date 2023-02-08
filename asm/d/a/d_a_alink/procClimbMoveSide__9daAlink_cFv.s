lbl_800FFF4C:
/* 800FFF4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FFF50  7C 08 02 A6 */	mflr r0
/* 800FFF54  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FFF58  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800FFF5C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800FFF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FFF64  93 C1 00 08 */	stw r30, 8(r1)
/* 800FFF68  7C 7E 1B 78 */	mr r30, r3
/* 800FFF6C  C3 E3 04 D4 */	lfs f31, 0x4d4(r3)
/* 800FFF70  4B FF E8 F9 */	bl setMoveBGClimbCorrect__9daAlink_cFv
/* 800FFF74  2C 03 00 00 */	cmpwi r3, 0
/* 800FFF78  41 82 00 0C */	beq lbl_800FFF84
/* 800FFF7C  38 60 00 01 */	li r3, 1
/* 800FFF80  48 00 01 58 */	b lbl_801000D8
lbl_800FFF84:
/* 800FFF84  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800FFF88  2C 00 00 00 */	cmpwi r0, 0
/* 800FFF8C  40 82 00 1C */	bne lbl_800FFFA8
/* 800FFF90  C0 3E 34 7C */	lfs f1, 0x347c(r30)
/* 800FFF94  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FFF98  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800FFF9C  EC 01 00 2A */	fadds f0, f1, f0
/* 800FFFA0  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800FFFA4  48 00 00 14 */	b lbl_800FFFB8
lbl_800FFFA8:
/* 800FFFA8  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800FFFAC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FFFB0  EC 01 00 2A */	fadds f0, f1, f0
/* 800FFFB4  D0 1E 34 7C */	stfs f0, 0x347c(r30)
lbl_800FFFB8:
/* 800FFFB8  38 00 00 03 */	li r0, 3
/* 800FFFBC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FFFC0  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FFFC4  7F C3 F3 78 */	mr r3, r30
/* 800FFFC8  4B FF D6 1D */	bl checkLadderFall__9daAlink_cFv
/* 800FFFCC  2C 03 00 00 */	cmpwi r3, 0
/* 800FFFD0  40 82 01 04 */	bne lbl_801000D4
/* 800FFFD4  7F E3 FB 78 */	mr r3, r31
/* 800FFFD8  48 05 E4 F5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FFFDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FFFE0  41 82 00 40 */	beq lbl_80100020
/* 800FFFE4  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800FFFE8  2C 04 00 00 */	cmpwi r4, 0
/* 800FFFEC  40 82 00 10 */	bne lbl_800FFFFC
/* 800FFFF0  7F C3 F3 78 */	mr r3, r30
/* 800FFFF4  4B FF E4 45 */	bl changeClimbMoveProc__9daAlink_cFi
/* 800FFFF8  48 00 00 DC */	b lbl_801000D4
lbl_800FFFFC:
/* 800FFFFC  7F C3 F3 78 */	mr r3, r30
/* 80100000  4B FF E0 35 */	bl getClimbMoveSideAnmSpeed__9daAlink_cFv
/* 80100004  7F C3 F3 78 */	mr r3, r30
/* 80100008  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 8010000C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 80100010  4B FA CF D1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80100014  38 00 00 00 */	li r0, 0
/* 80100018  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 8010001C  48 00 00 B8 */	b lbl_801000D4
lbl_80100020:
/* 80100020  7F C3 F3 78 */	mr r3, r30
/* 80100024  88 9E 2F 98 */	lbz r4, 0x2f98(r30)
/* 80100028  4B FF E6 C1 */	bl checkClimbMoveSideProc__9daAlink_cFi
/* 8010002C  2C 03 00 00 */	cmpwi r3, 0
/* 80100030  40 82 00 28 */	bne lbl_80100058
/* 80100034  C0 3E 34 7C */	lfs f1, 0x347c(r30)
/* 80100038  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 8010003C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80100040  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80100044  7F C3 F3 78 */	mr r3, r30
/* 80100048  38 80 00 01 */	li r4, 1
/* 8010004C  38 A0 00 00 */	li r5, 0
/* 80100050  48 00 00 A9 */	bl procClimbWaitInit__9daAlink_cFii
/* 80100054  48 00 00 80 */	b lbl_801000D4
lbl_80100058:
/* 80100058  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8010005C  FC 00 02 10 */	fabs f0, f0
/* 80100060  FC 20 00 18 */	frsp f1, f0
/* 80100064  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80100068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010006C  40 81 00 68 */	ble lbl_801000D4
/* 80100070  7F C3 F3 78 */	mr r3, r30
/* 80100074  4B FF DF C1 */	bl getClimbMoveSideAnmSpeed__9daAlink_cFv
/* 80100078  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8010007C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100080  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80100084  40 80 00 0C */	bge lbl_80100090
/* 80100088  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 8010008C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_80100090:
/* 80100090  7F C3 F3 78 */	mr r3, r30
/* 80100094  7F E4 FB 78 */	mr r4, r31
/* 80100098  48 00 1C 5D */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 8010009C  7F C3 F3 78 */	mr r3, r30
/* 801000A0  38 80 00 04 */	li r4, 4
/* 801000A4  4B FF EE 1D */	bl checkBgClimbMove__9daAlink_cFi
/* 801000A8  2C 03 00 00 */	cmpwi r3, 0
/* 801000AC  40 82 00 28 */	bne lbl_801000D4
/* 801000B0  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 801000B4  2C 00 00 00 */	cmpwi r0, 0
/* 801000B8  41 82 00 14 */	beq lbl_801000CC
/* 801000BC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801000C0  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 801000C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801000C8  40 80 00 0C */	bge lbl_801000D4
lbl_801000CC:
/* 801000CC  7F C3 F3 78 */	mr r3, r30
/* 801000D0  4B FF E0 A5 */	bl setClimbShapeOffset__9daAlink_cFv
lbl_801000D4:
/* 801000D4  38 60 00 01 */	li r3, 1
lbl_801000D8:
/* 801000D8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801000DC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801000E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801000E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801000E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801000EC  7C 08 03 A6 */	mtlr r0
/* 801000F0  38 21 00 20 */	addi r1, r1, 0x20
/* 801000F4  4E 80 00 20 */	blr 
