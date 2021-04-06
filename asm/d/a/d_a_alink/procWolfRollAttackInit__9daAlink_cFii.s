lbl_8013B2A0:
/* 8013B2A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013B2A4  7C 08 02 A6 */	mflr r0
/* 8013B2A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013B2AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8013B2B0  48 22 6F 2D */	bl _savegpr_29
/* 8013B2B4  7C 7F 1B 78 */	mr r31, r3
/* 8013B2B8  7C 9E 23 78 */	mr r30, r4
/* 8013B2BC  7C BD 2B 78 */	mr r29, r5
/* 8013B2C0  38 80 01 21 */	li r4, 0x121
/* 8013B2C4  4B F8 6C A9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013B2C8  2C 1E 00 02 */	cmpwi r30, 2
/* 8013B2CC  40 82 00 10 */	bne lbl_8013B2DC
/* 8013B2D0  7F E3 FB 78 */	mr r3, r31
/* 8013B2D4  4B F9 61 51 */	bl getCutTurnDirection__9daAlink_cCFv
/* 8013B2D8  7C 7E 1B 78 */	mr r30, r3
lbl_8013B2DC:
/* 8013B2DC  2C 1E 00 01 */	cmpwi r30, 1
/* 8013B2E0  40 82 00 20 */	bne lbl_8013B300
/* 8013B2E4  3B C0 00 5B */	li r30, 0x5b
/* 8013B2E8  38 00 00 01 */	li r0, 1
/* 8013B2EC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013B2F0  7F E3 FB 78 */	mr r3, r31
/* 8013B2F4  38 80 00 34 */	li r4, 0x34
/* 8013B2F8  4B F9 62 35 */	bl setCutType__9daAlink_cFUc
/* 8013B2FC  48 00 00 1C */	b lbl_8013B318
lbl_8013B300:
/* 8013B300  3B C0 00 5A */	li r30, 0x5a
/* 8013B304  38 00 00 00 */	li r0, 0
/* 8013B308  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013B30C  7F E3 FB 78 */	mr r3, r31
/* 8013B310  38 80 00 33 */	li r4, 0x33
/* 8013B314  4B F9 62 19 */	bl setCutType__9daAlink_cFUc
lbl_8013B318:
/* 8013B318  7F E3 FB 78 */	mr r3, r31
/* 8013B31C  7F C4 F3 78 */	mr r4, r30
/* 8013B320  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlAtRoll_c0@ha /* 0x8038F558@ha */
/* 8013B324  38 A5 F5 58 */	addi r5, r5, m__22daAlinkHIO_wlAtRoll_c0@l /* 0x8038F558@l */
/* 8013B328  4B FE E5 21 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013B32C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtRoll_c0@ha /* 0x8038F558@ha */
/* 8013B330  38 63 F5 58 */	addi r3, r3, m__22daAlinkHIO_wlAtRoll_c0@l /* 0x8038F558@l */
/* 8013B334  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8013B338  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013B33C  7F E3 FB 78 */	mr r3, r31
/* 8013B340  3C 80 40 00 */	lis r4, 0x4000
/* 8013B344  38 A0 00 01 */	li r5, 1
/* 8013B348  38 C0 00 03 */	li r6, 3
/* 8013B34C  38 E0 00 04 */	li r7, 4
/* 8013B350  39 00 00 03 */	li r8, 3
/* 8013B354  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8013B358  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 8013B35C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8013B360  C0 42 97 B0 */	lfs f2, lit_51575(r2)
/* 8013B364  4B F9 61 DD */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 8013B368  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013B36C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013B370  B3 BF 30 0E */	sth r29, 0x300e(r31)
/* 8013B374  2C 1D 00 00 */	cmpwi r29, 0
/* 8013B378  41 82 00 48 */	beq lbl_8013B3C0
/* 8013B37C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtRoll_c0@ha /* 0x8038F558@ha */
/* 8013B380  38 63 F5 58 */	addi r3, r3, m__22daAlinkHIO_wlAtRoll_c0@l /* 0x8038F558@l */
/* 8013B384  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8013B388  FC 00 00 1E */	fctiwz f0, f0
/* 8013B38C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8013B390  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8013B394  B0 1F 1F D6 */	sth r0, 0x1fd6(r31)
/* 8013B398  7C 00 07 34 */	extsh r0, r0
/* 8013B39C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8013B3A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013B3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013B3A8  3C 00 43 30 */	lis r0, 0x4330
/* 8013B3AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8013B3B0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8013B3B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8013B3B8  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 8013B3BC  48 00 00 3C */	b lbl_8013B3F8
lbl_8013B3C0:
/* 8013B3C0  7F E3 FB 78 */	mr r3, r31
/* 8013B3C4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000A@ha */
/* 8013B3C8  38 84 00 0A */	addi r4, r4, 0x000A /* 0x0002000A@l */
/* 8013B3CC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013B3D0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013B3D4  7D 89 03 A6 */	mtctr r12
/* 8013B3D8  4E 80 04 21 */	bctrl 
/* 8013B3DC  7F E3 FB 78 */	mr r3, r31
/* 8013B3E0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001003A@ha */
/* 8013B3E4  38 84 00 3A */	addi r4, r4, 0x003A /* 0x0001003A@l */
/* 8013B3E8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013B3EC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013B3F0  7D 89 03 A6 */	mtctr r12
/* 8013B3F4  4E 80 04 21 */	bctrl 
lbl_8013B3F8:
/* 8013B3F8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013B3FC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013B400  38 00 00 00 */	li r0, 0
/* 8013B404  90 1F 31 80 */	stw r0, 0x3180(r31)
/* 8013B408  38 60 00 01 */	li r3, 1
/* 8013B40C  39 61 00 30 */	addi r11, r1, 0x30
/* 8013B410  48 22 6E 19 */	bl _restgpr_29
/* 8013B414  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013B418  7C 08 03 A6 */	mtlr r0
/* 8013B41C  38 21 00 30 */	addi r1, r1, 0x30
/* 8013B420  4E 80 00 20 */	blr 
