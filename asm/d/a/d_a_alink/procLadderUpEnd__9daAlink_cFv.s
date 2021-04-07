lbl_800FD8E8:
/* 800FD8E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FD8EC  7C 08 02 A6 */	mflr r0
/* 800FD8F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FD8F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FD8F8  93 C1 00 08 */	stw r30, 8(r1)
/* 800FD8FC  7C 7E 1B 78 */	mr r30, r3
/* 800FD900  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FD904  4B FF FB A5 */	bl setMoveBGLadderCorrect__9daAlink_cFv
/* 800FD908  2C 03 00 00 */	cmpwi r3, 0
/* 800FD90C  41 82 00 0C */	beq lbl_800FD918
/* 800FD910  38 60 00 01 */	li r3, 1
/* 800FD914  48 00 00 A0 */	b lbl_800FD9B4
lbl_800FD918:
/* 800FD918  7F E3 FB 78 */	mr r3, r31
/* 800FD91C  48 06 0B B1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FD920  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FD924  41 82 00 14 */	beq lbl_800FD938
/* 800FD928  7F C3 F3 78 */	mr r3, r30
/* 800FD92C  38 80 00 00 */	li r4, 0
/* 800FD930  4B FB C7 A1 */	bl checkNextAction__9daAlink_cFi
/* 800FD934  48 00 00 7C */	b lbl_800FD9B0
lbl_800FD938:
/* 800FD938  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FD93C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_ladder_c0@ha /* 0x8038EB8C@ha */
/* 800FD940  38 63 EB 8C */	addi r3, r3, m__20daAlinkHIO_ladder_c0@l /* 0x8038EB8C@l */
/* 800FD944  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 800FD948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD94C  40 81 00 18 */	ble lbl_800FD964
/* 800FD950  7F C3 F3 78 */	mr r3, r30
/* 800FD954  38 80 00 01 */	li r4, 1
/* 800FD958  4B FB C7 79 */	bl checkNextAction__9daAlink_cFi
/* 800FD95C  2C 03 00 00 */	cmpwi r3, 0
/* 800FD960  40 82 00 50 */	bne lbl_800FD9B0
lbl_800FD964:
/* 800FD964  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FD968  C0 02 94 74 */	lfs f0, lit_15341(r2)
/* 800FD96C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD970  4C 41 13 82 */	cror 2, 1, 2
/* 800FD974  40 82 00 14 */	bne lbl_800FD988
/* 800FD978  38 00 00 00 */	li r0, 0
/* 800FD97C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FD980  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FD984  48 00 00 24 */	b lbl_800FD9A8
lbl_800FD988:
/* 800FD988  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800FD98C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FD990  4C 41 13 82 */	cror 2, 1, 2
/* 800FD994  40 82 00 14 */	bne lbl_800FD9A8
/* 800FD998  38 00 00 00 */	li r0, 0
/* 800FD99C  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800FD9A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FD9A4  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
lbl_800FD9A8:
/* 800FD9A8  38 00 00 06 */	li r0, 6
/* 800FD9AC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800FD9B0:
/* 800FD9B0  38 60 00 01 */	li r3, 1
lbl_800FD9B4:
/* 800FD9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FD9B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FD9BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FD9C0  7C 08 03 A6 */	mtlr r0
/* 800FD9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FD9C8  4E 80 00 20 */	blr 
