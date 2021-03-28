lbl_80292E9C:
/* 80292E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80292EA0  7C 08 02 A6 */	mflr r0
/* 80292EA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80292EA8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80292EAC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80292EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80292EB4  7C 7F 1B 78 */	mr r31, r3
/* 80292EB8  88 03 02 16 */	lbz r0, 0x216(r3)
/* 80292EBC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80292EC0  41 82 00 5C */	beq lbl_80292F1C
/* 80292EC4  38 80 00 01 */	li r4, 1
/* 80292EC8  C0 22 BB A4 */	lfs f1, lit_679(r2)
/* 80292ECC  4B FF F6 B5 */	bl updateSeq__8JASTrackFbf
/* 80292ED0  7F E3 FB 78 */	mr r3, r31
/* 80292ED4  4B FF EB F5 */	bl close__8JASTrackFv
/* 80292ED8  38 60 FF FF */	li r3, -1
/* 80292EDC  48 00 00 74 */	b lbl_80292F50
lbl_80292EE0:
/* 80292EE0  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80292EE4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80292EE8  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 80292EEC  7F E3 FB 78 */	mr r3, r31
/* 80292EF0  4B FF FE B1 */	bl tickProc__8JASTrackFv
/* 80292EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80292EF8  40 80 00 28 */	bge lbl_80292F20
/* 80292EFC  7F E3 FB 78 */	mr r3, r31
/* 80292F00  38 80 00 00 */	li r4, 0
/* 80292F04  C0 22 BB A4 */	lfs f1, lit_679(r2)
/* 80292F08  4B FF F6 79 */	bl updateSeq__8JASTrackFbf
/* 80292F0C  7F E3 FB 78 */	mr r3, r31
/* 80292F10  4B FF EB B9 */	bl close__8JASTrackFv
/* 80292F14  38 60 FF FF */	li r3, -1
/* 80292F18  48 00 00 38 */	b lbl_80292F50
lbl_80292F1C:
/* 80292F1C  C3 E2 BB A4 */	lfs f31, lit_679(r2)
lbl_80292F20:
/* 80292F20  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80292F24  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80292F28  4C 41 13 82 */	cror 2, 1, 2
/* 80292F2C  41 82 FF B4 */	beq lbl_80292EE0
/* 80292F30  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80292F34  EC 01 00 2A */	fadds f0, f1, f0
/* 80292F38  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
/* 80292F3C  7F E3 FB 78 */	mr r3, r31
/* 80292F40  38 80 00 00 */	li r4, 0
/* 80292F44  FC 20 F8 90 */	fmr f1, f31
/* 80292F48  4B FF F6 39 */	bl updateSeq__8JASTrackFbf
/* 80292F4C  38 60 00 00 */	li r3, 0
lbl_80292F50:
/* 80292F50  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80292F54  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80292F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80292F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292F60  7C 08 03 A6 */	mtlr r0
/* 80292F64  38 21 00 20 */	addi r1, r1, 0x20
/* 80292F68  4E 80 00 20 */	blr 
