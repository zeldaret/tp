lbl_8052B928:
/* 8052B928  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8052B92C  7C 08 02 A6 */	mflr r0
/* 8052B930  90 01 00 74 */	stw r0, 0x74(r1)
/* 8052B934  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8052B938  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8052B93C  7C 7E 1B 78 */	mr r30, r3
/* 8052B940  7C 9F 23 78 */	mr r31, r4
/* 8052B944  38 61 00 14 */	addi r3, r1, 0x14
/* 8052B948  4B B4 BE 68 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8052B94C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8052B950  D0 01 00 08 */	stfs f0, 8(r1)
/* 8052B954  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8052B958  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052B95C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8052B960  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052B964  3C 60 80 53 */	lis r3, lit_4538@ha
/* 8052B968  C0 03 61 DC */	lfs f0, lit_4538@l(r3)
/* 8052B96C  EC 01 00 2A */	fadds f0, f1, f0
/* 8052B970  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8052B974  38 61 00 14 */	addi r3, r1, 0x14
/* 8052B978  38 81 00 08 */	addi r4, r1, 8
/* 8052B97C  4B D3 C3 AC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8052B980  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8052B984  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8052B988  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8052B98C  38 81 00 14 */	addi r4, r1, 0x14
/* 8052B990  4B B4 8B 10 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8052B994  3C 60 80 53 */	lis r3, lit_4539@ha
/* 8052B998  C0 03 61 E0 */	lfs f0, lit_4539@l(r3)
/* 8052B99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052B9A0  41 80 00 08 */	blt lbl_8052B9A8
/* 8052B9A4  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
lbl_8052B9A8:
/* 8052B9A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8052B9AC  38 80 FF FF */	li r4, -1
/* 8052B9B0  4B B4 BE 98 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8052B9B4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8052B9B8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8052B9BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8052B9C0  7C 08 03 A6 */	mtlr r0
/* 8052B9C4  38 21 00 70 */	addi r1, r1, 0x70
/* 8052B9C8  4E 80 00 20 */	blr 
