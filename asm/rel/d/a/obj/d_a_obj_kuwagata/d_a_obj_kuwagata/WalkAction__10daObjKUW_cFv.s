lbl_80C4B1A0:
/* 80C4B1A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C4B1A4  7C 08 02 A6 */	mflr r0
/* 80C4B1A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C4B1AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C4B1B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C4B1B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C4B1B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C4B1BC  7C 7E 1B 78 */	mr r30, r3
/* 80C4B1C0  3C 60 80 C5 */	lis r3, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4B1C4  3B E3 D4 90 */	addi r31, r3, lit_3775@l /* 0x80C4D490@l */
/* 80C4B1C8  38 60 00 00 */	li r3, 0
/* 80C4B1CC  7C 64 1B 78 */	mr r4, r3
/* 80C4B1D0  38 00 00 03 */	li r0, 3
/* 80C4B1D4  7C 09 03 A6 */	mtctr r0
lbl_80C4B1D8:
/* 80C4B1D8  38 C3 09 82 */	addi r6, r3, 0x982
/* 80C4B1DC  7C BE 32 AE */	lhax r5, r30, r6
/* 80C4B1E0  38 05 FF FF */	addi r0, r5, -1
/* 80C4B1E4  7C 1E 33 2E */	sthx r0, r30, r6
/* 80C4B1E8  7C 1E 32 AE */	lhax r0, r30, r6
/* 80C4B1EC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B1F0  41 81 00 08 */	bgt lbl_80C4B1F8
/* 80C4B1F4  7C 9E 33 2E */	sthx r4, r30, r6
lbl_80C4B1F8:
/* 80C4B1F8  38 63 00 02 */	addi r3, r3, 2
/* 80C4B1FC  42 00 FF DC */	bdnz lbl_80C4B1D8
/* 80C4B200  88 1E 09 81 */	lbz r0, 0x981(r30)
/* 80C4B204  2C 00 00 01 */	cmpwi r0, 1
/* 80C4B208  41 82 00 9C */	beq lbl_80C4B2A4
/* 80C4B20C  40 80 01 6C */	bge lbl_80C4B378
/* 80C4B210  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B214  40 80 00 08 */	bge lbl_80C4B21C
/* 80C4B218  48 00 01 60 */	b lbl_80C4B378
lbl_80C4B21C:
/* 80C4B21C  3C 60 80 C5 */	lis r3, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4B220  38 63 D5 8C */	addi r3, r3, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4B224  38 80 00 07 */	li r4, 7
/* 80C4B228  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4B22C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4B230  3C A5 00 02 */	addis r5, r5, 2
/* 80C4B234  38 C0 00 80 */	li r6, 0x80
/* 80C4B238  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4B23C  4B 3F 10 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4B240  7C 64 1B 78 */	mr r4, r3
/* 80C4B244  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80C4B248  38 A0 00 02 */	li r5, 2
/* 80C4B24C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4B250  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80C4B254  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4B258  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80C4B25C  4B 3C 5C 15 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C4B260  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C4B264  D0 1E 09 88 */	stfs f0, 0x988(r30)
/* 80C4B268  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B26C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C4B270  D0 1E 09 8C */	stfs f0, 0x98c(r30)
/* 80C4B274  88 7E 09 81 */	lbz r3, 0x981(r30)
/* 80C4B278  38 03 00 01 */	addi r0, r3, 1
/* 80C4B27C  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4B280  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4B284  4B 61 C6 D1 */	bl cM_rndF__Ff
/* 80C4B288  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4B28C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B290  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B294  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C4B298  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C4B29C  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 80C4B2A0  48 00 00 D8 */	b lbl_80C4B378
lbl_80C4B2A4:
/* 80C4B2A4  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80C4B2A8  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B2AC  40 82 00 58 */	bne lbl_80C4B304
/* 80C4B2B0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C4B2B4  4B 61 C6 D9 */	bl cM_rndFX__Ff
/* 80C4B2B8  FF E0 08 90 */	fmr f31, f1
/* 80C4B2BC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C4B2C0  4B 61 C6 CD */	bl cM_rndFX__Ff
/* 80C4B2C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4B2C8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C4B2CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4B2D0  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80C4B2D4  FC 20 08 18 */	frsp f1, f1
/* 80C4B2D8  FC 40 F8 18 */	frsp f2, f31
/* 80C4B2DC  4B 61 C3 99 */	bl cM_atan2s__Fff
/* 80C4B2E0  B0 7E 09 90 */	sth r3, 0x990(r30)
/* 80C4B2E4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4B2E8  4B 61 C6 6D */	bl cM_rndF__Ff
/* 80C4B2EC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4B2F0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B2F4  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B2F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C4B2FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C4B300  B0 1E 09 82 */	sth r0, 0x982(r30)
lbl_80C4B304:
/* 80C4B304  A8 1E 09 84 */	lha r0, 0x984(r30)
/* 80C4B308  2C 00 00 00 */	cmpwi r0, 0
/* 80C4B30C  40 82 00 6C */	bne lbl_80C4B378
/* 80C4B310  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C4B314  4B 61 C6 41 */	bl cM_rndF__Ff
/* 80C4B318  FC 00 08 1E */	fctiwz f0, f1
/* 80C4B31C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C4B320  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C4B324  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80C4B328  40 80 00 18 */	bge lbl_80C4B340
/* 80C4B32C  38 00 00 01 */	li r0, 1
/* 80C4B330  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4B334  38 00 00 00 */	li r0, 0
/* 80C4B338  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4B33C  48 00 00 3C */	b lbl_80C4B378
lbl_80C4B340:
/* 80C4B340  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80C4B344  40 80 00 14 */	bge lbl_80C4B358
/* 80C4B348  38 00 00 00 */	li r0, 0
/* 80C4B34C  98 1E 09 80 */	stb r0, 0x980(r30)
/* 80C4B350  98 1E 09 81 */	stb r0, 0x981(r30)
/* 80C4B354  48 00 00 24 */	b lbl_80C4B378
lbl_80C4B358:
/* 80C4B358  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C4B35C  4B 61 C5 F9 */	bl cM_rndF__Ff
/* 80C4B360  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C4B364  EC 00 08 2A */	fadds f0, f0, f1
/* 80C4B368  FC 00 00 1E */	fctiwz f0, f0
/* 80C4B36C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C4B370  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C4B374  B0 1E 09 84 */	sth r0, 0x984(r30)
lbl_80C4B378:
/* 80C4B378  7F C3 F3 78 */	mr r3, r30
/* 80C4B37C  4B FF F9 D5 */	bl WallWalk__10daObjKUW_cFv
/* 80C4B380  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C4B384  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C4B388  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C4B38C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C4B390  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C4B394  7C 08 03 A6 */	mtlr r0
/* 80C4B398  38 21 00 40 */	addi r1, r1, 0x40
/* 80C4B39C  4E 80 00 20 */	blr 
