lbl_8019B4E4:
/* 8019B4E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019B4E8  7C 08 02 A6 */	mflr r0
/* 8019B4EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019B4F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019B4F4  7C 7F 1B 78 */	mr r31, r3
/* 8019B4F8  A8 63 01 14 */	lha r3, 0x114(r3)
/* 8019B4FC  38 03 FF FF */	addi r0, r3, -1
/* 8019B500  B0 1F 01 14 */	sth r0, 0x114(r31)
/* 8019B504  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8019B508  A8 1F 01 14 */	lha r0, 0x114(r31)
/* 8019B50C  7C 00 01 D6 */	mullw r0, r0, r0
/* 8019B510  C8 22 A1 98 */	lfd f1, lit_4071(r2)
/* 8019B514  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019B518  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019B51C  3C 00 43 30 */	lis r0, 0x4330
/* 8019B520  90 01 00 08 */	stw r0, 8(r1)
/* 8019B524  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019B528  EC 20 08 28 */	fsubs f1, f0, f1
/* 8019B52C  C0 02 A1 94 */	lfs f0, lit_4069(r2)
/* 8019B530  EC 21 00 24 */	fdivs f1, f1, f0
/* 8019B534  48 00 07 7D */	bl setBackAlpha__24dDlst_GameOverScrnDraw_cFf
/* 8019B538  A8 1F 01 14 */	lha r0, 0x114(r31)
/* 8019B53C  2C 00 00 00 */	cmpwi r0, 0
/* 8019B540  41 81 00 0C */	bgt lbl_8019B54C
/* 8019B544  38 00 00 08 */	li r0, 8
/* 8019B548  98 1F 01 18 */	stb r0, 0x118(r31)
lbl_8019B54C:
/* 8019B54C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019B550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019B554  7C 08 03 A6 */	mtlr r0
/* 8019B558  38 21 00 20 */	addi r1, r1, 0x20
/* 8019B55C  4E 80 00 20 */	blr 
