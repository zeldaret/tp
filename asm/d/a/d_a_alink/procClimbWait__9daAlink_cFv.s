lbl_80100258:
/* 80100258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010025C  7C 08 02 A6 */	mflr r0
/* 80100260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80100264  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80100268  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010026C  7C 7E 1B 78 */	mr r30, r3
/* 80100270  4B FF E5 F9 */	bl setMoveBGClimbCorrect__9daAlink_cFv
/* 80100274  2C 03 00 00 */	cmpwi r3, 0
/* 80100278  41 82 00 0C */	beq lbl_80100284
/* 8010027C  38 60 00 01 */	li r3, 1
/* 80100280  48 00 01 4C */	b lbl_801003CC
lbl_80100284:
/* 80100284  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80100288  38 00 00 02 */	li r0, 2
/* 8010028C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80100290  7F C3 F3 78 */	mr r3, r30
/* 80100294  4B FF D3 51 */	bl checkLadderFall__9daAlink_cFv
/* 80100298  2C 03 00 00 */	cmpwi r3, 0
/* 8010029C  40 82 01 2C */	bne lbl_801003C8
/* 801002A0  7F E3 FB 78 */	mr r3, r31
/* 801002A4  48 05 E2 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801002A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801002AC  41 82 00 BC */	beq lbl_80100368
/* 801002B0  7F C3 F3 78 */	mr r3, r30
/* 801002B4  38 80 00 01 */	li r4, 1
/* 801002B8  4B FF E1 81 */	bl changeClimbMoveProc__9daAlink_cFi
/* 801002BC  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 801002C0  28 00 00 84 */	cmplwi r0, 0x84
/* 801002C4  40 82 01 04 */	bne lbl_801003C8
/* 801002C8  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 801002CC  2C 03 00 00 */	cmpwi r3, 0
/* 801002D0  41 82 00 10 */	beq lbl_801002E0
/* 801002D4  38 03 FF FF */	addi r0, r3, -1
/* 801002D8  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 801002DC  48 00 00 EC */	b lbl_801003C8
lbl_801002E0:
/* 801002E0  38 7E 30 A0 */	addi r3, r30, 0x30a0
/* 801002E4  38 80 00 00 */	li r4, 0
/* 801002E8  38 A0 00 03 */	li r5, 3
/* 801002EC  38 C0 08 00 */	li r6, 0x800
/* 801002F0  38 E0 01 00 */	li r7, 0x100
/* 801002F4  48 05 F6 89 */	bl daPy_addCalcShort__FPsssss
/* 801002F8  38 7E 30 A2 */	addi r3, r30, 0x30a2
/* 801002FC  38 80 00 00 */	li r4, 0
/* 80100300  38 A0 00 03 */	li r5, 3
/* 80100304  38 C0 08 00 */	li r6, 0x800
/* 80100308  38 E0 01 00 */	li r7, 0x100
/* 8010030C  48 05 F6 71 */	bl daPy_addCalcShort__FPsssss
/* 80100310  C0 22 95 9C */	lfs f1, lit_25873(r2)
/* 80100314  A8 1E 30 A2 */	lha r0, 0x30a2(r30)
/* 80100318  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 8010031C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80100320  90 01 00 0C */	stw r0, 0xc(r1)
/* 80100324  3C 60 43 30 */	lis r3, 0x4330
/* 80100328  90 61 00 08 */	stw r3, 8(r1)
/* 8010032C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80100330  EC 00 10 28 */	fsubs f0, f0, f2
/* 80100334  EC 01 00 32 */	fmuls f0, f1, f0
/* 80100338  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 8010033C  C0 22 95 A0 */	lfs f1, lit_25874(r2)
/* 80100340  A8 1E 30 A0 */	lha r0, 0x30a0(r30)
/* 80100344  7C 00 00 D0 */	neg r0, r0
/* 80100348  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010034C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80100350  90 61 00 10 */	stw r3, 0x10(r1)
/* 80100354  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80100358  EC 00 10 28 */	fsubs f0, f0, f2
/* 8010035C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80100360  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
/* 80100364  48 00 00 64 */	b lbl_801003C8
lbl_80100368:
/* 80100368  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8010036C  FC 00 02 10 */	fabs f0, f0
/* 80100370  FC 20 00 18 */	frsp f1, f0
/* 80100374  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 80100378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010037C  40 81 00 4C */	ble lbl_801003C8
/* 80100380  7F C3 F3 78 */	mr r3, r30
/* 80100384  4B FF DC 8D */	bl getClimbMoveUpDownAnmSpeed__9daAlink_cFv
/* 80100388  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8010038C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80100390  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80100394  40 80 00 0C */	bge lbl_801003A0
/* 80100398  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 8010039C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_801003A0:
/* 801003A0  7F C3 F3 78 */	mr r3, r30
/* 801003A4  7F E4 FB 78 */	mr r4, r31
/* 801003A8  48 00 19 4D */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 801003AC  7F C3 F3 78 */	mr r3, r30
/* 801003B0  38 80 00 04 */	li r4, 4
/* 801003B4  4B FF EB 0D */	bl checkBgClimbMove__9daAlink_cFi
/* 801003B8  2C 03 00 00 */	cmpwi r3, 0
/* 801003BC  40 82 00 0C */	bne lbl_801003C8
/* 801003C0  7F C3 F3 78 */	mr r3, r30
/* 801003C4  4B FF DD B1 */	bl setClimbShapeOffset__9daAlink_cFv
lbl_801003C8:
/* 801003C8  38 60 00 01 */	li r3, 1
lbl_801003CC:
/* 801003CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801003D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801003D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801003D8  7C 08 03 A6 */	mtlr r0
/* 801003DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801003E0  4E 80 00 20 */	blr 
