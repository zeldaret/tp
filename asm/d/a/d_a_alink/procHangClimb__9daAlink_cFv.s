lbl_800FBCD4:
/* 800FBCD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FBCD8  7C 08 02 A6 */	mflr r0
/* 800FBCDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FBCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FBCE4  93 C1 00 08 */	stw r30, 8(r1)
/* 800FBCE8  7C 7E 1B 78 */	mr r30, r3
/* 800FBCEC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FBCF0  4B FF E9 F5 */	bl setHangGroundY__9daAlink_cFv
/* 800FBCF4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FBCF8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800FBCFC  41 82 00 2C */	beq lbl_800FBD28
/* 800FBD00  C0 5E 33 D8 */	lfs f2, 0x33d8(r30)
/* 800FBD04  C0 3E 38 38 */	lfs f1, 0x3838(r30)
/* 800FBD08  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800FBD0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FBD10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FBD14  40 81 00 14 */	ble lbl_800FBD28
/* 800FBD18  7F C3 F3 78 */	mr r3, r30
/* 800FBD1C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FBD20  4B FC B1 F9 */	bl procLandInit__9daAlink_cFf
/* 800FBD24  48 00 00 C8 */	b lbl_800FBDEC
lbl_800FBD28:
/* 800FBD28  A0 7E 2F DC */	lhz r3, 0x2fdc(r30)
/* 800FBD2C  48 06 2E 65 */	bl checkBowItem__9daPy_py_cFi
/* 800FBD30  2C 03 00 00 */	cmpwi r3, 0
/* 800FBD34  41 82 00 0C */	beq lbl_800FBD40
/* 800FBD38  C0 1E 1F E0 */	lfs f0, 0x1fe0(r30)
/* 800FBD3C  D0 1E 33 DC */	stfs f0, 0x33dc(r30)
lbl_800FBD40:
/* 800FBD40  7F E3 FB 78 */	mr r3, r31
/* 800FBD44  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 800FBD48  48 22 C6 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 800FBD4C  2C 03 00 00 */	cmpwi r3, 0
/* 800FBD50  41 82 00 28 */	beq lbl_800FBD78
/* 800FBD54  38 9E 2A 4C */	addi r4, r30, 0x2a4c
/* 800FBD58  38 60 00 00 */	li r3, 0
/* 800FBD5C  38 00 00 02 */	li r0, 2
/* 800FBD60  7C 09 03 A6 */	mtctr r0
lbl_800FBD64:
/* 800FBD64  B0 64 00 06 */	sth r3, 6(r4)
/* 800FBD68  B0 64 00 04 */	sth r3, 4(r4)
/* 800FBD6C  B0 64 00 02 */	sth r3, 2(r4)
/* 800FBD70  38 84 00 A4 */	addi r4, r4, 0xa4
/* 800FBD74  42 00 FF F0 */	bdnz lbl_800FBD64
lbl_800FBD78:
/* 800FBD78  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FBD7C  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800FBD80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBD84  4C 41 13 82 */	cror 2, 1, 2
/* 800FBD88  40 82 00 10 */	bne lbl_800FBD98
/* 800FBD8C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FBD90  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800FBD94  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_800FBD98:
/* 800FBD98  7F E3 FB 78 */	mr r3, r31
/* 800FBD9C  48 06 27 31 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FBDA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBDA4  41 82 00 14 */	beq lbl_800FBDB8
/* 800FBDA8  7F C3 F3 78 */	mr r3, r30
/* 800FBDAC  38 80 00 00 */	li r4, 0
/* 800FBDB0  4B FB E3 21 */	bl checkNextAction__9daAlink_cFi
/* 800FBDB4  48 00 00 34 */	b lbl_800FBDE8
lbl_800FBDB8:
/* 800FBDB8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800FBDBC  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FBDC0  38 63 E1 64 */	addi r3, r3, m__23daAlinkHIO_wallCatch_c0@l
/* 800FBDC4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800FBDC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBDCC  40 81 00 1C */	ble lbl_800FBDE8
/* 800FBDD0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FBDD4  60 00 00 04 */	ori r0, r0, 4
/* 800FBDD8  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800FBDDC  7F C3 F3 78 */	mr r3, r30
/* 800FBDE0  38 80 00 01 */	li r4, 1
/* 800FBDE4  4B FB E2 ED */	bl checkNextAction__9daAlink_cFi
lbl_800FBDE8:
/* 800FBDE8  38 60 00 01 */	li r3, 1
lbl_800FBDEC:
/* 800FBDEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FBDF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FBDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FBDF8  7C 08 03 A6 */	mtlr r0
/* 800FBDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800FBE00  4E 80 00 20 */	blr 
