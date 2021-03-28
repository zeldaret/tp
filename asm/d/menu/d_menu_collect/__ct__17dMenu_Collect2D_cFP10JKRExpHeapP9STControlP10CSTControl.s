lbl_801AFD48:
/* 801AFD48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AFD4C  7C 08 02 A6 */	mflr r0
/* 801AFD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AFD54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AFD58  7C 7F 1B 78 */	mr r31, r3
/* 801AFD5C  3C 60 80 3A */	lis r3, __vt__12dDlst_base_c@ha
/* 801AFD60  38 03 6F 88 */	addi r0, r3, __vt__12dDlst_base_c@l
/* 801AFD64  90 1F 00 00 */	stw r0, 0(r31)
/* 801AFD68  3C 60 80 3C */	lis r3, __vt__17dMenu_Collect2D_c@ha
/* 801AFD6C  38 03 C7 C4 */	addi r0, r3, __vt__17dMenu_Collect2D_c@l
/* 801AFD70  90 1F 00 00 */	stw r0, 0(r31)
/* 801AFD74  90 9F 00 04 */	stw r4, 4(r31)
/* 801AFD78  90 BF 00 10 */	stw r5, 0x10(r31)
/* 801AFD7C  90 DF 00 14 */	stw r6, 0x14(r31)
/* 801AFD80  38 80 00 00 */	li r4, 0
/* 801AFD84  90 9F 00 0C */	stw r4, 0xc(r31)
/* 801AFD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AFD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AFD90  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801AFD94  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801AFD98  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 801AFD9C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801AFDA0  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801AFDA4  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 801AFDA8  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 801AFDAC  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 801AFDB0  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801AFDB4  38 00 00 02 */	li r0, 2
/* 801AFDB8  7C 09 03 A6 */	mtctr r0
lbl_801AFDBC:
/* 801AFDBC  38 04 00 44 */	addi r0, r4, 0x44
/* 801AFDC0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801AFDC4  38 04 00 4C */	addi r0, r4, 0x4c
/* 801AFDC8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801AFDCC  38 84 00 04 */	addi r4, r4, 4
/* 801AFDD0  42 00 FF EC */	bdnz lbl_801AFDBC
/* 801AFDD4  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801AFDD8  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 801AFDDC  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 801AFDE0  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801AFDE4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 801AFDE8  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 801AFDEC  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 801AFDF0  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 801AFDF4  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 801AFDF8  D0 3F 00 70 */	stfs f1, 0x70(r31)
/* 801AFDFC  D0 3F 00 74 */	stfs f1, 0x74(r31)
/* 801AFE00  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 801AFE04  3C 60 00 04 */	lis r3, 0x0004 /* 0x00046000@ha */
/* 801AFE08  38 63 60 00 */	addi r3, r3, 0x6000 /* 0x00046000@l */
/* 801AFE0C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801AFE10  38 A0 00 00 */	li r5, 0
/* 801AFE14  48 11 F0 19 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 801AFE18  90 7F 00 08 */	stw r3, 8(r31)
/* 801AFE1C  7F E3 FB 78 */	mr r3, r31
/* 801AFE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AFE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AFE28  7C 08 03 A6 */	mtlr r0
/* 801AFE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AFE30  4E 80 00 20 */	blr 
