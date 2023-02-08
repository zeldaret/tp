lbl_8012E83C:
/* 8012E83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012E840  7C 08 02 A6 */	mflr r0
/* 8012E844  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012E848  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012E84C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012E850  7C 7E 1B 78 */	mr r30, r3
/* 8012E854  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8012E858  7F E3 FB 78 */	mr r3, r31
/* 8012E85C  48 02 FC 71 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012E860  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012E864  41 82 00 30 */	beq lbl_8012E894
/* 8012E868  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 8012E86C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8012E870  41 82 00 14 */	beq lbl_8012E884
/* 8012E874  7F C3 F3 78 */	mr r3, r30
/* 8012E878  A8 9E 30 0E */	lha r4, 0x300e(r30)
/* 8012E87C  4B FF FE D9 */	bl procWolfHowlInit__9daAlink_cFi
/* 8012E880  48 00 01 2C */	b lbl_8012E9AC
lbl_8012E884:
/* 8012E884  7F C3 F3 78 */	mr r3, r30
/* 8012E888  38 80 00 00 */	li r4, 0
/* 8012E88C  4B FF B2 B9 */	bl checkNextActionWolf__9daAlink_cFi
/* 8012E890  48 00 01 1C */	b lbl_8012E9AC
lbl_8012E894:
/* 8012E894  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8012E898  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 8012E89C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012E8A0  40 81 00 30 */	ble lbl_8012E8D0
/* 8012E8A4  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 8012E8A8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8012E8AC  41 82 00 14 */	beq lbl_8012E8C0
/* 8012E8B0  7F C3 F3 78 */	mr r3, r30
/* 8012E8B4  A8 9E 30 0E */	lha r4, 0x300e(r30)
/* 8012E8B8  4B FF FE 9D */	bl procWolfHowlInit__9daAlink_cFi
/* 8012E8BC  48 00 00 F0 */	b lbl_8012E9AC
lbl_8012E8C0:
/* 8012E8C0  7F C3 F3 78 */	mr r3, r30
/* 8012E8C4  38 80 00 01 */	li r4, 1
/* 8012E8C8  4B FF B2 7D */	bl checkNextActionWolf__9daAlink_cFi
/* 8012E8CC  48 00 00 E0 */	b lbl_8012E9AC
lbl_8012E8D0:
/* 8012E8D0  88 1E 2F 8E */	lbz r0, 0x2f8e(r30)
/* 8012E8D4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8012E8D8  41 82 00 10 */	beq lbl_8012E8E8
/* 8012E8DC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8012E8E0  2C 00 00 00 */	cmpwi r0, 0
/* 8012E8E4  41 82 00 30 */	beq lbl_8012E914
lbl_8012E8E8:
/* 8012E8E8  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8012E8EC  28 00 00 15 */	cmplwi r0, 0x15
/* 8012E8F0  41 82 00 24 */	beq lbl_8012E914
/* 8012E8F4  28 00 00 16 */	cmplwi r0, 0x16
/* 8012E8F8  41 82 00 1C */	beq lbl_8012E914
/* 8012E8FC  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 8012E900  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012E904  41 80 00 2C */	blt lbl_8012E930
/* 8012E908  38 00 00 01 */	li r0, 1
/* 8012E90C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8012E910  48 00 00 20 */	b lbl_8012E930
lbl_8012E914:
/* 8012E914  C0 02 97 64 */	lfs f0, lit_46462(r2)
/* 8012E918  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012E91C  40 81 00 14 */	ble lbl_8012E930
/* 8012E920  C0 22 93 94 */	lfs f1, lit_8785(r2)
/* 8012E924  EC 02 00 28 */	fsubs f0, f2, f0
/* 8012E928  EC 01 00 2A */	fadds f0, f1, f0
/* 8012E92C  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8012E930:
/* 8012E930  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8012E934  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 8012E938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012E93C  4C 41 13 82 */	cror 2, 1, 2
/* 8012E940  40 82 00 6C */	bne lbl_8012E9AC
/* 8012E944  C0 02 97 64 */	lfs f0, lit_46462(r2)
/* 8012E948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012E94C  4C 40 13 82 */	cror 2, 0, 2
/* 8012E950  40 82 00 5C */	bne lbl_8012E9AC
/* 8012E954  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 8012E958  64 00 40 00 */	oris r0, r0, 0x4000
/* 8012E95C  90 1E 05 80 */	stw r0, 0x580(r30)
/* 8012E960  7F C3 F3 78 */	mr r3, r30
/* 8012E964  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010035@ha */
/* 8012E968  38 84 00 35 */	addi r4, r4, 0x0035 /* 0x00010035@l */
/* 8012E96C  4B F9 07 4D */	bl voiceStartLevel__9daAlink_cFUl
/* 8012E970  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8012E974  D0 01 00 08 */	stfs f0, 8(r1)
/* 8012E978  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8012E97C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012E980  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8012E984  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012E988  38 61 00 08 */	addi r3, r1, 8
/* 8012E98C  38 80 00 64 */	li r4, 0x64
/* 8012E990  28 1E 00 00 */	cmplwi r30, 0
/* 8012E994  41 82 00 0C */	beq lbl_8012E9A0
/* 8012E998  80 BE 00 04 */	lwz r5, 4(r30)
/* 8012E99C  48 00 00 08 */	b lbl_8012E9A4
lbl_8012E9A0:
/* 8012E9A0  38 A0 FF FF */	li r5, -1
lbl_8012E9A4:
/* 8012E9A4  38 C0 00 01 */	li r6, 1
/* 8012E9A8  48 07 98 19 */	bl dKy_Sound_set__F4cXyziUii
lbl_8012E9AC:
/* 8012E9AC  38 60 00 01 */	li r3, 1
/* 8012E9B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012E9B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012E9B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012E9BC  7C 08 03 A6 */	mtlr r0
/* 8012E9C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8012E9C4  4E 80 00 20 */	blr 
