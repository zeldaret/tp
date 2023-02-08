lbl_800FDCCC:
/* 800FDCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FDCD0  7C 08 02 A6 */	mflr r0
/* 800FDCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FDCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FDCDC  93 C1 00 08 */	stw r30, 8(r1)
/* 800FDCE0  7C 7E 1B 78 */	mr r30, r3
/* 800FDCE4  4B FF F7 C5 */	bl setMoveBGLadderCorrect__9daAlink_cFv
/* 800FDCE8  2C 03 00 00 */	cmpwi r3, 0
/* 800FDCEC  41 82 00 0C */	beq lbl_800FDCF8
/* 800FDCF0  38 60 00 01 */	li r3, 1
/* 800FDCF4  48 00 00 84 */	b lbl_800FDD78
lbl_800FDCF8:
/* 800FDCF8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FDCFC  7F E3 FB 78 */	mr r3, r31
/* 800FDD00  48 06 07 CD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FDD04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FDD08  41 82 00 14 */	beq lbl_800FDD1C
/* 800FDD0C  7F C3 F3 78 */	mr r3, r30
/* 800FDD10  38 80 00 00 */	li r4, 0
/* 800FDD14  4B FB C3 BD */	bl checkNextAction__9daAlink_cFi
/* 800FDD18  48 00 00 5C */	b lbl_800FDD74
lbl_800FDD1C:
/* 800FDD1C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FDD20  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FDD24  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FDD28  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 800FDD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FDD30  40 81 00 18 */	ble lbl_800FDD48
/* 800FDD34  7F C3 F3 78 */	mr r3, r30
/* 800FDD38  38 80 00 01 */	li r4, 1
/* 800FDD3C  4B FB C3 95 */	bl checkNextAction__9daAlink_cFi
/* 800FDD40  2C 03 00 00 */	cmpwi r3, 0
/* 800FDD44  40 82 00 30 */	bne lbl_800FDD74
lbl_800FDD48:
/* 800FDD48  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FDD4C  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800FDD50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FDD54  4C 41 13 82 */	cror 2, 1, 2
/* 800FDD58  40 82 00 14 */	bne lbl_800FDD6C
/* 800FDD5C  38 00 00 00 */	li r0, 0
/* 800FDD60  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800FDD64  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FDD68  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
lbl_800FDD6C:
/* 800FDD6C  38 00 00 06 */	li r0, 6
/* 800FDD70  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800FDD74:
/* 800FDD74  38 60 00 01 */	li r3, 1
lbl_800FDD78:
/* 800FDD78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FDD7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FDD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FDD84  7C 08 03 A6 */	mtlr r0
/* 800FDD88  38 21 00 10 */	addi r1, r1, 0x10
/* 800FDD8C  4E 80 00 20 */	blr 
