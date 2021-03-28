lbl_806EEE10:
/* 806EEE10  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806EEE14  7C 08 02 A6 */	mflr r0
/* 806EEE18  90 01 00 74 */	stw r0, 0x74(r1)
/* 806EEE1C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806EEE20  93 C1 00 68 */	stw r30, 0x68(r1)
/* 806EEE24  7C 7E 1B 78 */	mr r30, r3
/* 806EEE28  3C 60 80 6F */	lis r3, lit_3966@ha
/* 806EEE2C  3B E3 08 60 */	addi r31, r3, lit_3966@l
/* 806EEE30  38 61 00 14 */	addi r3, r1, 0x14
/* 806EEE34  4B 98 89 7C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806EEE38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806EEE3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806EEE40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806EEE44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806EEE48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806EEE4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EEE50  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806EEE54  EC 01 00 2A */	fadds f0, f1, f0
/* 806EEE58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EEE5C  38 61 00 14 */	addi r3, r1, 0x14
/* 806EEE60  38 81 00 08 */	addi r4, r1, 8
/* 806EEE64  4B B7 8E A8 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806EEE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EEE6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EEE70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EEE74  38 81 00 14 */	addi r4, r1, 0x14
/* 806EEE78  4B 98 56 28 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806EEE7C  D0 3E 06 AC */	stfs f1, 0x6ac(r30)
/* 806EEE80  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806EEE84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806EEE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EEE8C  40 80 00 30 */	bge lbl_806EEEBC
/* 806EEE90  C0 5E 06 AC */	lfs f2, 0x6ac(r30)
/* 806EEE94  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806EEE98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806EEE9C  EC 01 00 2A */	fadds f0, f1, f0
/* 806EEEA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806EEEA4  40 81 00 18 */	ble lbl_806EEEBC
/* 806EEEA8  38 61 00 14 */	addi r3, r1, 0x14
/* 806EEEAC  38 80 FF FF */	li r4, -1
/* 806EEEB0  4B 98 89 98 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 806EEEB4  38 60 00 01 */	li r3, 1
/* 806EEEB8  48 00 00 14 */	b lbl_806EEECC
lbl_806EEEBC:
/* 806EEEBC  38 61 00 14 */	addi r3, r1, 0x14
/* 806EEEC0  38 80 FF FF */	li r4, -1
/* 806EEEC4  4B 98 89 84 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 806EEEC8  38 60 00 00 */	li r3, 0
lbl_806EEECC:
/* 806EEECC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806EEED0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 806EEED4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806EEED8  7C 08 03 A6 */	mtlr r0
/* 806EEEDC  38 21 00 70 */	addi r1, r1, 0x70
/* 806EEEE0  4E 80 00 20 */	blr 
