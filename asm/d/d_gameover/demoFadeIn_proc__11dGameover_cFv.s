lbl_8019B484:
/* 8019B484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019B488  7C 08 02 A6 */	mflr r0
/* 8019B48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019B490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019B494  7C 7F 1B 78 */	mr r31, r3
/* 8019B498  A8 63 01 14 */	lha r3, 0x114(r3)
/* 8019B49C  38 03 00 01 */	addi r0, r3, 1
/* 8019B4A0  B0 1F 01 14 */	sth r0, 0x114(r31)
/* 8019B4A4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 8019B4A8  C0 22 A1 84 */	lfs f1, lit_3869(r2)
/* 8019B4AC  48 00 08 05 */	bl setBackAlpha__24dDlst_GameOverScrnDraw_cFf
/* 8019B4B0  A8 1F 01 14 */	lha r0, 0x114(r31)
/* 8019B4B4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8019B4B8  41 80 00 0C */	blt lbl_8019B4C4
/* 8019B4BC  38 00 00 05 */	li r0, 5
/* 8019B4C0  98 1F 01 18 */	stb r0, 0x118(r31)
lbl_8019B4C4:
/* 8019B4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019B4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019B4CC  7C 08 03 A6 */	mtlr r0
/* 8019B4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8019B4D4  4E 80 00 20 */	blr 
