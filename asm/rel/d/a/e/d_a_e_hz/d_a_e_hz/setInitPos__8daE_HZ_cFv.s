lbl_806EFB54:
/* 806EFB54  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806EFB58  7C 08 02 A6 */	mflr r0
/* 806EFB5C  90 01 00 74 */	stw r0, 0x74(r1)
/* 806EFB60  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806EFB64  7C 7F 1B 78 */	mr r31, r3
/* 806EFB68  38 61 00 14 */	addi r3, r1, 0x14
/* 806EFB6C  4B 98 7A 11 */	bl __ct__11dBgS_GndChkFv
/* 806EFB70  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806EFB74  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EFB78  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 806EFB7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806EFB80  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806EFB84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EFB88  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EFB8C  C0 03 08 60 */	lfs f0, lit_3966@l(r3)  /* 0x806F0860@l */
/* 806EFB90  EC 01 00 2A */	fadds f0, f1, f0
/* 806EFB94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EFB98  38 61 00 14 */	addi r3, r1, 0x14
/* 806EFB9C  38 81 00 08 */	addi r4, r1, 8
/* 806EFBA0  4B B7 81 89 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806EFBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EFBA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EFBAC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EFBB0  38 81 00 14 */	addi r4, r1, 0x14
/* 806EFBB4  4B 98 48 ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806EFBB8  3C 60 80 6F */	lis r3, lit_4378@ha /* 0x806F08D0@ha */
/* 806EFBBC  C0 03 08 D0 */	lfs f0, lit_4378@l(r3)  /* 0x806F08D0@l */
/* 806EFBC0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806EFBC4  41 82 00 10 */	beq lbl_806EFBD4
/* 806EFBC8  D0 3F 04 AC */	stfs f1, 0x4ac(r31)
/* 806EFBCC  D0 3F 04 C0 */	stfs f1, 0x4c0(r31)
/* 806EFBD0  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_806EFBD4:
/* 806EFBD4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 806EFBD8  38 03 20 00 */	addi r0, r3, 0x2000
/* 806EFBDC  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EFBE0  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 806EFBE4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806EFBE8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806EFBEC  7F E3 FB 78 */	mr r3, r31
/* 806EFBF0  38 80 00 01 */	li r4, 1
/* 806EFBF4  4B FF AE E9 */	bl setActionMode__8daE_HZ_cFi
/* 806EFBF8  38 61 00 14 */	addi r3, r1, 0x14
/* 806EFBFC  38 80 FF FF */	li r4, -1
/* 806EFC00  4B 98 79 F1 */	bl __dt__11dBgS_GndChkFv
/* 806EFC04  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806EFC08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806EFC0C  7C 08 03 A6 */	mtlr r0
/* 806EFC10  38 21 00 70 */	addi r1, r1, 0x70
/* 806EFC14  4E 80 00 20 */	blr 
