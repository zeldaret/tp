lbl_80D3F570:
/* 80D3F570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3F574  7C 08 02 A6 */	mflr r0
/* 80D3F578  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3F57C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3F580  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3F584  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3F588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3F58C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3F590  80 03 5D B4 */	lwz r0, 0x5db4(r3)
/* 80D3F594  41 82 00 B0 */	beq lbl_80D3F644
/* 80D3F598  7C 05 00 40 */	cmplw r5, r0
/* 80D3F59C  40 82 00 A8 */	bne lbl_80D3F644
/* 80D3F5A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D3F5A4  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 80D3F5A8  3C 60 80 D4 */	lis r3, l_open_speed@ha /* 0x80D40274@ha */
/* 80D3F5AC  38 63 02 74 */	addi r3, r3, l_open_speed@l /* 0x80D40274@l */
/* 80D3F5B0  7F C3 02 AE */	lhax r30, r3, r0
/* 80D3F5B4  80 66 00 10 */	lwz r3, 0x10(r6)
/* 80D3F5B8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80D3F5BC  40 82 00 0C */	bne lbl_80D3F5C8
/* 80D3F5C0  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 80D3F5C4  41 82 00 80 */	beq lbl_80D3F644
lbl_80D3F5C8:
/* 80D3F5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3F5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3F5D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D3F5D4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80D3F5D8  28 00 00 08 */	cmplwi r0, 8
/* 80D3F5DC  41 82 00 0C */	beq lbl_80D3F5E8
/* 80D3F5E0  28 00 00 09 */	cmplwi r0, 9
/* 80D3F5E4  40 82 00 40 */	bne lbl_80D3F624
lbl_80D3F5E8:
/* 80D3F5E8  7F C0 07 34 */	extsh r0, r30
/* 80D3F5EC  3C 60 80 D4 */	lis r3, lit_3714@ha /* 0x80D4028C@ha */
/* 80D3F5F0  C8 23 02 8C */	lfd f1, lit_3714@l(r3)  /* 0x80D4028C@l */
/* 80D3F5F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D3F5F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3F5FC  3C 00 43 30 */	lis r0, 0x4330
/* 80D3F600  90 01 00 08 */	stw r0, 8(r1)
/* 80D3F604  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D3F608  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D3F60C  3C 60 80 D4 */	lis r3, lit_3712@ha /* 0x80D40284@ha */
/* 80D3F610  C0 03 02 84 */	lfs f0, lit_3712@l(r3)  /* 0x80D40284@l */
/* 80D3F614  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3F618  FC 00 00 1E */	fctiwz f0, f0
/* 80D3F61C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D3F620  83 C1 00 14 */	lwz r30, 0x14(r1)
lbl_80D3F624:
/* 80D3F624  7F E3 FB 78 */	mr r3, r31
/* 80D3F628  4B FF FE 11 */	bl checkPlayerPos__FP9daZdoor_c
/* 80D3F62C  2C 03 00 00 */	cmpwi r3, 0
/* 80D3F630  41 82 00 10 */	beq lbl_80D3F640
/* 80D3F634  7C 1E 00 D0 */	neg r0, r30
/* 80D3F638  B0 1F 0E 2C */	sth r0, 0xe2c(r31)
/* 80D3F63C  48 00 00 08 */	b lbl_80D3F644
lbl_80D3F640:
/* 80D3F640  B3 DF 0E 2C */	sth r30, 0xe2c(r31)
lbl_80D3F644:
/* 80D3F644  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3F648  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D3F64C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3F650  7C 08 03 A6 */	mtlr r0
/* 80D3F654  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3F658  4E 80 00 20 */	blr 
