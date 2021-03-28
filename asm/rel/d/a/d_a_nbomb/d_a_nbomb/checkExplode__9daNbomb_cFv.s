lbl_804C82D8:
/* 804C82D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C82DC  7C 08 02 A6 */	mflr r0
/* 804C82E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C82E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C82E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C82EC  7C 7F 1B 78 */	mr r31, r3
/* 804C82F0  80 03 0B 4C */	lwz r0, 0xb4c(r3)
/* 804C82F4  70 00 0A 00 */	andi. r0, r0, 0xa00
/* 804C82F8  41 82 00 0C */	beq lbl_804C8304
/* 804C82FC  38 60 00 00 */	li r3, 0
/* 804C8300  48 00 01 18 */	b lbl_804C8418
lbl_804C8304:
/* 804C8304  A8 1F 0B 58 */	lha r0, 0xb58(r31)
/* 804C8308  2C 00 00 00 */	cmpwi r0, 0
/* 804C830C  40 81 00 FC */	ble lbl_804C8408
/* 804C8310  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804C8314  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804C8318  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 804C831C  28 00 00 00 */	cmplwi r0, 0
/* 804C8320  40 82 00 94 */	bne lbl_804C83B4
/* 804C8324  4B FF FF 71 */	bl checkTimerStop__9daNbomb_cFv
/* 804C8328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804C832C  40 82 00 88 */	bne lbl_804C83B4
/* 804C8330  A8 7F 0B 58 */	lha r3, 0xb58(r31)
/* 804C8334  38 03 FF FF */	addi r0, r3, -1
/* 804C8338  B0 1F 0B 58 */	sth r0, 0xb58(r31)
/* 804C833C  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804C8340  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804C8344  41 82 00 70 */	beq lbl_804C83B4
/* 804C8348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C834C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C8350  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 804C8354  7F C3 F3 78 */	mr r3, r30
/* 804C8358  4B C1 B4 08 */	b getBombExplodeTime__9daAlink_cCFv
/* 804C835C  7C 63 07 34 */	extsh r3, r3
/* 804C8360  A8 1F 0B 58 */	lha r0, 0xb58(r31)
/* 804C8364  7C 00 18 00 */	cmpw r0, r3
/* 804C8368  40 80 00 4C */	bge lbl_804C83B4
/* 804C836C  7F C3 F3 78 */	mr r3, r30
/* 804C8370  4B C1 B3 F0 */	b getBombExplodeTime__9daAlink_cCFv
/* 804C8374  7C 60 07 34 */	extsh r0, r3
/* 804C8378  3C 60 80 4D */	lis r3, lit_4689@ha
/* 804C837C  C8 23 C3 D8 */	lfd f1, lit_4689@l(r3)
/* 804C8380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804C8384  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8388  3C 00 43 30 */	lis r0, 0x4330
/* 804C838C  90 01 00 08 */	stw r0, 8(r1)
/* 804C8390  C8 01 00 08 */	lfd f0, 8(r1)
/* 804C8394  EC 20 08 28 */	fsubs f1, f0, f1
/* 804C8398  3C 60 80 4D */	lis r3, lit_5021@ha
/* 804C839C  C0 03 C3 E0 */	lfs f0, lit_5021@l(r3)
/* 804C83A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804C83A4  FC 00 00 1E */	fctiwz f0, f0
/* 804C83A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804C83AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C83B0  B0 1F 0B 58 */	sth r0, 0xb58(r31)
lbl_804C83B4:
/* 804C83B4  A8 1F 0B 58 */	lha r0, 0xb58(r31)
/* 804C83B8  2C 00 00 00 */	cmpwi r0, 0
/* 804C83BC  41 82 00 40 */	beq lbl_804C83FC
/* 804C83C0  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804C83C4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C83C8  40 82 00 34 */	bne lbl_804C83FC
/* 804C83CC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804C83D0  28 00 00 05 */	cmplwi r0, 5
/* 804C83D4  41 82 00 0C */	beq lbl_804C83E0
/* 804C83D8  28 00 00 06 */	cmplwi r0, 6
/* 804C83DC  40 82 00 2C */	bne lbl_804C8408
lbl_804C83E0:
/* 804C83E0  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804C83E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804C83E8  41 82 00 20 */	beq lbl_804C8408
/* 804C83EC  38 7F 07 50 */	addi r3, r31, 0x750
/* 804C83F0  4B C0 F3 78 */	b checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 804C83F4  2C 03 00 00 */	cmpwi r3, 0
/* 804C83F8  40 82 00 10 */	bne lbl_804C8408
lbl_804C83FC:
/* 804C83FC  7F E3 FB 78 */	mr r3, r31
/* 804C8400  48 00 08 F9 */	bl procExplodeInit__9daNbomb_cFv
/* 804C8404  48 00 00 14 */	b lbl_804C8418
lbl_804C8408:
/* 804C8408  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804C840C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804C8410  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804C8414  38 60 00 00 */	li r3, 0
lbl_804C8418:
/* 804C8418  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C841C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C8420  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C8424  7C 08 03 A6 */	mtlr r0
/* 804C8428  38 21 00 20 */	addi r1, r1, 0x20
/* 804C842C  4E 80 00 20 */	blr 
