lbl_801F7A40:
/* 801F7A40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F7A44  7C 08 02 A6 */	mflr r0
/* 801F7A48  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F7A4C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801F7A50  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801F7A54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F7A58  7C 7F 1B 78 */	mr r31, r3
/* 801F7A5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801F7A60  28 00 00 00 */	cmplwi r0, 0
/* 801F7A64  40 82 00 1C */	bne lbl_801F7A80
/* 801F7A68  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha
/* 801F7A6C  38 63 7D B8 */	addi r3, r3, d_menu_d_menu_skill__stringBase0@l
/* 801F7A70  38 80 00 00 */	li r4, 0
/* 801F7A74  38 A0 00 00 */	li r5, 0
/* 801F7A78  4B E1 E3 9D */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801F7A7C  90 7F 00 14 */	stw r3, 0x14(r31)
lbl_801F7A80:
/* 801F7A80  80 7F 00 08 */	lwz r3, 8(r31)
/* 801F7A84  28 03 00 00 */	cmplwi r3, 0
/* 801F7A88  40 82 00 60 */	bne lbl_801F7AE8
/* 801F7A8C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801F7A90  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801F7A94  2C 00 00 00 */	cmpwi r0, 0
/* 801F7A98  41 82 00 48 */	beq lbl_801F7AE0
/* 801F7A9C  28 03 00 00 */	cmplwi r3, 0
/* 801F7AA0  40 82 00 48 */	bne lbl_801F7AE8
/* 801F7AA4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801F7AA8  90 1F 00 08 */	stw r0, 8(r31)
/* 801F7AAC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801F7AB0  28 03 00 00 */	cmplwi r3, 0
/* 801F7AB4  41 82 00 18 */	beq lbl_801F7ACC
/* 801F7AB8  38 80 00 01 */	li r4, 1
/* 801F7ABC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801F7AC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F7AC4  7D 89 03 A6 */	mtctr r12
/* 801F7AC8  4E 80 04 21 */	bctrl 
lbl_801F7ACC:
/* 801F7ACC  38 00 00 00 */	li r0, 0
/* 801F7AD0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801F7AD4  7F E3 FB 78 */	mr r3, r31
/* 801F7AD8  4B FF FB 65 */	bl _create__13dMenu_Skill_cFv
/* 801F7ADC  48 00 00 0C */	b lbl_801F7AE8
lbl_801F7AE0:
/* 801F7AE0  38 60 00 00 */	li r3, 0
/* 801F7AE4  48 00 01 1C */	b lbl_801F7C00
lbl_801F7AE8:
/* 801F7AE8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801F7AEC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801F7AF0  A8 83 0A 64 */	lha r4, 0xa64(r3)
/* 801F7AF4  A8 63 0A 68 */	lha r3, 0xa68(r3)
/* 801F7AF8  B0 9F 02 00 */	sth r4, 0x200(r31)
/* 801F7AFC  A8 1F 02 00 */	lha r0, 0x200(r31)
/* 801F7B00  7C 00 20 00 */	cmpw r0, r4
/* 801F7B04  41 80 00 78 */	blt lbl_801F7B7C
/* 801F7B08  B0 7F 02 00 */	sth r3, 0x200(r31)
/* 801F7B0C  38 00 00 02 */	li r0, 2
/* 801F7B10  98 1F 02 04 */	stb r0, 0x204(r31)
/* 801F7B14  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7B18  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7B1C  C0 02 AA 8C */	lfs f0, lit_3809(r2)
/* 801F7B20  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F7B24  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F7B28  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7B2C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F7B30  7D 89 03 A6 */	mtctr r12
/* 801F7B34  4E 80 04 21 */	bctrl 
/* 801F7B38  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7B3C  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7B40  48 05 DC 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F7B44  7F E3 FB 78 */	mr r3, r31
/* 801F7B48  48 00 13 55 */	bl setCursorPos__13dMenu_Skill_cFv
/* 801F7B4C  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7B50  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7B54  4B F9 D7 4D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F7B58  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7B5C  C0 22 AA 8C */	lfs f1, lit_3809(r2)
/* 801F7B60  4B F9 D6 69 */	bl setScale__16dSelect_cursor_cFf
/* 801F7B64  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7B68  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801F7B6C  60 00 00 01 */	ori r0, r0, 1
/* 801F7B70  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801F7B74  38 60 00 01 */	li r3, 1
/* 801F7B78  48 00 00 88 */	b lbl_801F7C00
lbl_801F7B7C:
/* 801F7B7C  C8 42 AA B0 */	lfd f2, lit_4016(r2)
/* 801F7B80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F7B84  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F7B88  3C 60 43 30 */	lis r3, 0x4330
/* 801F7B8C  90 61 00 08 */	stw r3, 8(r1)
/* 801F7B90  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F7B94  EC 20 10 28 */	fsubs f1, f0, f2
/* 801F7B98  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801F7B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7BA0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801F7BA4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801F7BA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F7BAC  EF E1 00 24 */	fdivs f31, f1, f0
/* 801F7BB0  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7BB4  80 63 00 04 */	lwz r3, 4(r3)
/* 801F7BB8  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 801F7BBC  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801F7BC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7BC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F7BC8  7D 89 03 A6 */	mtctr r12
/* 801F7BCC  4E 80 04 21 */	bctrl 
/* 801F7BD0  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 801F7BD4  FC 20 F8 90 */	fmr f1, f31
/* 801F7BD8  48 05 DB F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F7BDC  7F E3 FB 78 */	mr r3, r31
/* 801F7BE0  48 00 12 BD */	bl setCursorPos__13dMenu_Skill_cFv
/* 801F7BE4  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7BE8  FC 20 F8 90 */	fmr f1, f31
/* 801F7BEC  4B F9 D6 B5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F7BF0  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F7BF4  FC 20 F8 90 */	fmr f1, f31
/* 801F7BF8  4B F9 D5 D1 */	bl setScale__16dSelect_cursor_cFf
/* 801F7BFC  38 60 00 00 */	li r3, 0
lbl_801F7C00:
/* 801F7C00  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801F7C04  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801F7C08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F7C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F7C10  7C 08 03 A6 */	mtlr r0
/* 801F7C14  38 21 00 30 */	addi r1, r1, 0x30
/* 801F7C18  4E 80 00 20 */	blr 
