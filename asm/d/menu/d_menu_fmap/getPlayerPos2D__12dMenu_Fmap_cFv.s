lbl_801CD95C:
/* 801CD95C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801CD960  7C 08 02 A6 */	mflr r0
/* 801CD964  90 01 00 34 */	stw r0, 0x34(r1)
/* 801CD968  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801CD96C  7C 7F 1B 78 */	mr r31, r3
/* 801CD970  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801CD974  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801CD978  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 801CD97C  28 00 00 00 */	cmplwi r0, 0
/* 801CD980  41 82 00 3C */	beq lbl_801CD9BC
/* 801CD984  38 61 00 10 */	addi r3, r1, 0x10
/* 801CD988  4B E7 14 D5 */	bl getMapPlayerPos__10dMapInfo_nFv
/* 801CD98C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801CD990  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CD994  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801CD998  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CD99C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801CD9A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CD9A4  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 801CD9A8  4B FF 8C 85 */	bl dMenuFmap_getStartStageName__FPv
/* 801CD9AC  7C 64 1B 78 */	mr r4, r3
/* 801CD9B0  38 61 00 08 */	addi r3, r1, 8
/* 801CD9B4  48 19 B1 79 */	bl strcpy
/* 801CD9B8  48 00 00 28 */	b lbl_801CD9E0
lbl_801CD9BC:
/* 801CD9BC  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801CD9C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CD9C4  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801CD9C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801CD9CC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 801CD9D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801CD9D4  38 83 00 72 */	addi r4, r3, 0x72
/* 801CD9D8  38 61 00 08 */	addi r3, r1, 8
/* 801CD9DC  48 19 B1 51 */	bl strcpy
lbl_801CD9E0:
/* 801CD9E0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CD9E4  C0 43 0F CC */	lfs f2, 0xfcc(r3)
/* 801CD9E8  C0 23 0F C8 */	lfs f1, 0xfc8(r3)
/* 801CD9EC  38 81 00 08 */	addi r4, r1, 8
/* 801CD9F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801CD9F4  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CD9F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801CD9FC  EC 40 10 28 */	fsubs f2, f0, f2
/* 801CDA00  38 BF 01 10 */	addi r5, r31, 0x110
/* 801CDA04  38 DF 01 14 */	addi r6, r31, 0x114
/* 801CDA08  48 00 33 49 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFPCcffPfPf
/* 801CDA0C  C0 02 A7 28 */	lfs f0, lit_4158(r2)
/* 801CDA10  D0 1F 01 18 */	stfs f0, 0x118(r31)
/* 801CDA14  38 7F 01 10 */	addi r3, r31, 0x110
/* 801CDA18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801CDA1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801CDA20  7C 08 03 A6 */	mtlr r0
/* 801CDA24  38 21 00 30 */	addi r1, r1, 0x30
/* 801CDA28  4E 80 00 20 */	blr 
