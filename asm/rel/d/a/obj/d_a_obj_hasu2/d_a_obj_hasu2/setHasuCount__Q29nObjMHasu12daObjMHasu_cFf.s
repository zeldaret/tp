lbl_80C188A0:
/* 80C188A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C188A4  7C 08 02 A6 */	mflr r0
/* 80C188A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C188AC  3C 80 80 C2 */	lis r4, l_cull_box@ha /* 0x80C18A58@ha */
/* 80C188B0  38 84 8A 58 */	addi r4, r4, l_cull_box@l /* 0x80C18A58@l */
/* 80C188B4  88 03 06 0C */	lbz r0, 0x60c(r3)
/* 80C188B8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80C188BC  40 82 00 10 */	bne lbl_80C188CC
/* 80C188C0  38 00 00 2D */	li r0, 0x2d
/* 80C188C4  98 03 06 30 */	stb r0, 0x630(r3)
/* 80C188C8  48 00 00 48 */	b lbl_80C18910
lbl_80C188CC:
/* 80C188CC  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80C188D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C188D4  40 81 00 3C */	ble lbl_80C18910
/* 80C188D8  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C188DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C188E0  40 80 00 10 */	bge lbl_80C188F0
/* 80C188E4  38 80 00 19 */	li r4, 0x19
/* 80C188E8  4B FF FF A1 */	bl updateCount__Q29nObjMHasu12daObjMHasu_cFUc
/* 80C188EC  48 00 00 24 */	b lbl_80C18910
lbl_80C188F0:
/* 80C188F0  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80C188F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C188F8  40 80 00 10 */	bge lbl_80C18908
/* 80C188FC  38 80 00 28 */	li r4, 0x28
/* 80C18900  4B FF FF 89 */	bl updateCount__Q29nObjMHasu12daObjMHasu_cFUc
/* 80C18904  48 00 00 0C */	b lbl_80C18910
lbl_80C18908:
/* 80C18908  38 80 00 3C */	li r4, 0x3c
/* 80C1890C  4B FF FF 7D */	bl updateCount__Q29nObjMHasu12daObjMHasu_cFUc
lbl_80C18910:
/* 80C18910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18914  7C 08 03 A6 */	mtlr r0
/* 80C18918  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1891C  4E 80 00 20 */	blr 
