lbl_802B5F7C:
/* 802B5F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B5F80  7C 08 02 A6 */	mflr r0
/* 802B5F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B5F88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802B5F8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802B5F90  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 802B5F94  28 00 00 00 */	cmplwi r0, 0
/* 802B5F98  40 82 01 24 */	bne lbl_802B60BC
/* 802B5F9C  88 83 00 2D */	lbz r4, 0x2d(r3)
/* 802B5FA0  28 04 00 00 */	cmplwi r4, 0
/* 802B5FA4  41 82 01 18 */	beq lbl_802B60BC
/* 802B5FA8  88 0D 8B A4 */	lbz r0, struct_80451124+0x0(r13)
/* 802B5FAC  7C 00 07 75 */	extsb. r0, r0
/* 802B5FB0  40 82 00 0C */	bne lbl_802B5FBC
/* 802B5FB4  38 04 FF FF */	addi r0, r4, -1
/* 802B5FB8  98 03 00 2D */	stb r0, 0x2d(r3)
lbl_802B5FBC:
/* 802B5FBC  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B5FC0  28 03 00 00 */	cmplwi r3, 0
/* 802B5FC4  41 82 00 F8 */	beq lbl_802B60BC
/* 802B5FC8  88 83 00 C3 */	lbz r4, 0xc3(r3)
/* 802B5FCC  28 04 00 00 */	cmplwi r4, 0
/* 802B5FD0  41 82 00 EC */	beq lbl_802B60BC
/* 802B5FD4  80 AD 86 04 */	lwz r5, data_80450B84(r13)
/* 802B5FD8  38 60 00 00 */	li r3, 0
/* 802B5FDC  80 05 00 08 */	lwz r0, 8(r5)
/* 802B5FE0  28 00 00 00 */	cmplwi r0, 0
/* 802B5FE4  40 82 00 10 */	bne lbl_802B5FF4
/* 802B5FE8  88 05 00 BA */	lbz r0, 0xba(r5)
/* 802B5FEC  28 00 00 00 */	cmplwi r0, 0
/* 802B5FF0  41 82 00 08 */	beq lbl_802B5FF8
lbl_802B5FF4:
/* 802B5FF4  38 60 00 01 */	li r3, 1
lbl_802B5FF8:
/* 802B5FF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B5FFC  40 82 00 C0 */	bne lbl_802B60BC
/* 802B6000  28 04 00 02 */	cmplwi r4, 2
/* 802B6004  41 81 00 3C */	bgt lbl_802B6040
/* 802B6008  38 00 00 36 */	li r0, 0x36
/* 802B600C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B6010  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6014  38 81 00 10 */	addi r4, r1, 0x10
/* 802B6018  38 A0 00 00 */	li r5, 0
/* 802B601C  38 C0 00 00 */	li r6, 0
/* 802B6020  38 E0 00 00 */	li r7, 0
/* 802B6024  C0 22 C0 20 */	lfs f1, lit_3467(r2)
/* 802B6028  FC 40 08 90 */	fmr f2, f1
/* 802B602C  C0 62 C0 24 */	lfs f3, lit_3468(r2)
/* 802B6030  FC 80 18 90 */	fmr f4, f3
/* 802B6034  39 00 00 00 */	li r8, 0
/* 802B6038  4B FF 64 D5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802B603C  48 00 00 80 */	b lbl_802B60BC
lbl_802B6040:
/* 802B6040  28 04 00 04 */	cmplwi r4, 4
/* 802B6044  41 81 00 3C */	bgt lbl_802B6080
/* 802B6048  38 00 00 35 */	li r0, 0x35
/* 802B604C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B6050  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6054  38 81 00 0C */	addi r4, r1, 0xc
/* 802B6058  38 A0 00 00 */	li r5, 0
/* 802B605C  38 C0 00 00 */	li r6, 0
/* 802B6060  38 E0 00 00 */	li r7, 0
/* 802B6064  C0 22 C0 20 */	lfs f1, lit_3467(r2)
/* 802B6068  FC 40 08 90 */	fmr f2, f1
/* 802B606C  C0 62 C0 24 */	lfs f3, lit_3468(r2)
/* 802B6070  FC 80 18 90 */	fmr f4, f3
/* 802B6074  39 00 00 00 */	li r8, 0
/* 802B6078  4B FF 64 95 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802B607C  48 00 00 40 */	b lbl_802B60BC
lbl_802B6080:
/* 802B6080  28 04 00 06 */	cmplwi r4, 6
/* 802B6084  41 81 00 38 */	bgt lbl_802B60BC
/* 802B6088  38 00 00 34 */	li r0, 0x34
/* 802B608C  90 01 00 08 */	stw r0, 8(r1)
/* 802B6090  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6094  38 81 00 08 */	addi r4, r1, 8
/* 802B6098  38 A0 00 00 */	li r5, 0
/* 802B609C  38 C0 00 00 */	li r6, 0
/* 802B60A0  38 E0 00 00 */	li r7, 0
/* 802B60A4  C0 22 C0 20 */	lfs f1, lit_3467(r2)
/* 802B60A8  FC 40 08 90 */	fmr f2, f1
/* 802B60AC  C0 62 C0 24 */	lfs f3, lit_3468(r2)
/* 802B60B0  FC 80 18 90 */	fmr f4, f3
/* 802B60B4  39 00 00 00 */	li r8, 0
/* 802B60B8  4B FF 64 55 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_802B60BC:
/* 802B60BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B60C0  7C 08 03 A6 */	mtlr r0
/* 802B60C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B60C8  4E 80 00 20 */	blr 
