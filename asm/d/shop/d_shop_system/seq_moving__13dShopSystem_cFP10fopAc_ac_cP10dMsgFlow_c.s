lbl_80199A18:
/* 80199A18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80199A1C  7C 08 02 A6 */	mflr r0
/* 80199A20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80199A24  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80199A28  7C 7F 1B 78 */	mr r31, r3
/* 80199A2C  A8 63 0F 68 */	lha r3, 0xf68(r3)
/* 80199A30  38 03 00 01 */	addi r0, r3, 1
/* 80199A34  B0 1F 0F 68 */	sth r0, 0xf68(r31)
/* 80199A38  38 61 00 14 */	addi r3, r1, 0x14
/* 80199A3C  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80199A40  88 BF 0F 6E */	lbz r5, 0xf6e(r31)
/* 80199A44  38 A5 FF FF */	addi r5, r5, -1
/* 80199A48  4B FF CF 59 */	bl getCurrentPos__15dShopItemCtrl_cFi
/* 80199A4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80199A50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80199A54  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80199A58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80199A5C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80199A60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80199A64  38 61 00 38 */	addi r3, r1, 0x38
/* 80199A68  38 81 00 20 */	addi r4, r1, 0x20
/* 80199A6C  4B E7 B8 A5 */	bl mDoLib_project__FP3VecP3Vec
/* 80199A70  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80199A74  28 00 00 07 */	cmplwi r0, 7
/* 80199A78  40 82 00 30 */	bne lbl_80199AA8
/* 80199A7C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80199A80  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199A84  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80199A88  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80199A8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80199A90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80199A94  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80199A98  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80199A9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80199AA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80199AA4  48 00 00 1C */	b lbl_80199AC0
lbl_80199AA8:
/* 80199AA8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80199AAC  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199AB0  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80199AB4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80199AB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80199ABC  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80199AC0:
/* 80199AC0  88 BF 0F 6F */	lbz r5, 0xf6f(r31)
/* 80199AC4  28 05 00 00 */	cmplwi r5, 0
/* 80199AC8  41 82 00 EC */	beq lbl_80199BB4
/* 80199ACC  38 61 00 08 */	addi r3, r1, 8
/* 80199AD0  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80199AD4  38 A5 FF FF */	addi r5, r5, -1
/* 80199AD8  4B FF CE C9 */	bl getCurrentPos__15dShopItemCtrl_cFi
/* 80199ADC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80199AE0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80199AE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80199AE8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80199AEC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80199AF0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80199AF4  38 61 00 44 */	addi r3, r1, 0x44
/* 80199AF8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80199AFC  4B E7 B8 15 */	bl mDoLib_project__FP3VecP3Vec
/* 80199B00  88 1F 0F 6F */	lbz r0, 0xf6f(r31)
/* 80199B04  28 00 00 07 */	cmplwi r0, 7
/* 80199B08  40 82 00 30 */	bne lbl_80199B38
/* 80199B0C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80199B10  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199B14  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80199B18  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80199B1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80199B20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80199B24  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80199B28  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80199B2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80199B30  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80199B34  48 00 00 1C */	b lbl_80199B50
lbl_80199B38:
/* 80199B38  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80199B3C  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199B40  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80199B44  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80199B48  EC 01 00 2A */	fadds f0, f1, f0
/* 80199B4C  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80199B50:
/* 80199B50  A8 1F 0F 68 */	lha r0, 0xf68(r31)
/* 80199B54  7C 00 01 D6 */	mullw r0, r0, r0
/* 80199B58  C8 22 A1 50 */	lfd f1, lit_5298(r2)
/* 80199B5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80199B60  90 01 00 54 */	stw r0, 0x54(r1)
/* 80199B64  3C 00 43 30 */	lis r0, 0x4330
/* 80199B68  90 01 00 50 */	stw r0, 0x50(r1)
/* 80199B6C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80199B70  EC 20 08 28 */	fsubs f1, f0, f1
/* 80199B74  C0 02 A1 48 */	lfs f0, lit_5296(r2)
/* 80199B78  EC 61 00 24 */	fdivs f3, f1, f0
/* 80199B7C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80199B80  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80199B84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80199B88  EC 03 00 32 */	fmuls f0, f3, f0
/* 80199B8C  EC 21 00 2A */	fadds f1, f1, f0
/* 80199B90  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80199B94  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80199B98  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80199B9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80199BA0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80199BA4  EC 02 00 2A */	fadds f0, f2, f0
/* 80199BA8  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80199BAC  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 80199BB0  48 00 00 18 */	b lbl_80199BC8
lbl_80199BB4:
/* 80199BB4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80199BB8  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80199BBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80199BC0  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80199BC4  D0 23 00 5C */	stfs f1, 0x5c(r3)
lbl_80199BC8:
/* 80199BC8  A8 1F 0F 68 */	lha r0, 0xf68(r31)
/* 80199BCC  2C 00 00 03 */	cmpwi r0, 3
/* 80199BD0  41 80 00 10 */	blt lbl_80199BE0
/* 80199BD4  7F E3 FB 78 */	mr r3, r31
/* 80199BD8  38 80 00 04 */	li r4, 4
/* 80199BDC  48 00 07 69 */	bl setSeq__13dShopSystem_cFUc
lbl_80199BE0:
/* 80199BE0  38 60 00 00 */	li r3, 0
/* 80199BE4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80199BE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80199BEC  7C 08 03 A6 */	mtlr r0
/* 80199BF0  38 21 00 60 */	addi r1, r1, 0x60
/* 80199BF4  4E 80 00 20 */	blr 
