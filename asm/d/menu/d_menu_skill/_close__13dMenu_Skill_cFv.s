lbl_801F7C1C:
/* 801F7C1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F7C20  7C 08 02 A6 */	mflr r0
/* 801F7C24  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F7C28  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801F7C2C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801F7C30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F7C34  7C 7F 1B 78 */	mr r31, r3
/* 801F7C38  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801F7C3C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801F7C40  A8 A3 0A 68 */	lha r5, 0xa68(r3)
/* 801F7C44  38 60 00 00 */	li r3, 0
/* 801F7C48  B0 7F 02 00 */	sth r3, 0x200(r31)
/* 801F7C4C  A8 9F 02 00 */	lha r4, 0x200(r31)
/* 801F7C50  7C 80 07 35 */	extsh. r0, r4
/* 801F7C54  41 81 00 64 */	bgt lbl_801F7CB8
/* 801F7C58  B0 7F 02 00 */	sth r3, 0x200(r31)
/* 801F7C5C  98 7F 02 04 */	stb r3, 0x204(r31)
/* 801F7C60  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7C64  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7C68  C0 02 AA 88 */	lfs f0, lit_3808(r2)
/* 801F7C6C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F7C70  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F7C74  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7C78  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F7C7C  7D 89 03 A6 */	mtctr r12
/* 801F7C80  4E 80 04 21 */	bctrl 
/* 801F7C84  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7C88  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7C8C  48 05 DB 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F7C90  7F E3 FB 78 */	mr r3, r31
/* 801F7C94  48 00 12 09 */	bl setCursorPos__13dMenu_Skill_cFv
/* 801F7C98  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7C9C  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7CA0  4B F9 D6 01 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F7CA4  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7CA8  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7CAC  4B F9 D5 1D */	bl setScale__16dSelect_cursor_cFf
/* 801F7CB0  38 60 00 01 */	li r3, 1
/* 801F7CB4  48 00 00 88 */	b lbl_801F7D3C
lbl_801F7CB8:
/* 801F7CB8  C8 42 AA B0 */	lfd f2, lit_4016(r2)
/* 801F7CBC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801F7CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F7CC4  3C 60 43 30 */	lis r3, 0x4330
/* 801F7CC8  90 61 00 08 */	stw r3, 8(r1)
/* 801F7CCC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F7CD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801F7CD4  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801F7CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7CDC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801F7CE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F7CE4  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F7CE8  EF E1 00 24 */	fdivs f31, f1, f0
/* 801F7CEC  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7CF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7CF4  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801F7CF8  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801F7CFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7D00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F7D04  7D 89 03 A6 */	mtctr r12
/* 801F7D08  4E 80 04 21 */	bctrl 
/* 801F7D0C  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7D10  FC 20 F8 90 */	fmr f1, f31
/* 801F7D14  48 05 DA BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F7D18  7F E3 FB 78 */	mr r3, r31
/* 801F7D1C  48 00 11 81 */	bl setCursorPos__13dMenu_Skill_cFv
/* 801F7D20  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7D24  FC 20 F8 90 */	fmr f1, f31
/* 801F7D28  4B F9 D5 79 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F7D2C  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7D30  FC 20 F8 90 */	fmr f1, f31
/* 801F7D34  4B F9 D4 95 */	bl setScale__16dSelect_cursor_cFf
/* 801F7D38  38 60 00 00 */	li r3, 0
lbl_801F7D3C:
/* 801F7D3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801F7D40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801F7D44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F7D48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F7D4C  7C 08 03 A6 */	mtlr r0
/* 801F7D50  38 21 00 30 */	addi r1, r1, 0x30
/* 801F7D54  4E 80 00 20 */	blr 
