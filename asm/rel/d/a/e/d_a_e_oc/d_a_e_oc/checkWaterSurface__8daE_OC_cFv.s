lbl_80733E48:
/* 80733E48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80733E4C  7C 08 02 A6 */	mflr r0
/* 80733E50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80733E54  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80733E58  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80733E5C  7C 7E 1B 78 */	mr r30, r3
/* 80733E60  3C 60 80 73 */	lis r3, lit_3911@ha
/* 80733E64  3B E3 5B 28 */	addi r31, r3, lit_3911@l
/* 80733E68  38 61 00 14 */	addi r3, r1, 0x14
/* 80733E6C  4B 94 39 44 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80733E70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80733E74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80733E78  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80733E7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80733E80  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80733E84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80733E88  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80733E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80733E90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80733E94  38 61 00 14 */	addi r3, r1, 0x14
/* 80733E98  38 81 00 08 */	addi r4, r1, 8
/* 80733E9C  4B B3 3E 70 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80733EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80733EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80733EA8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80733EAC  38 81 00 14 */	addi r4, r1, 0x14
/* 80733EB0  4B 94 05 F0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80733EB4  D0 3E 06 98 */	stfs f1, 0x698(r30)
/* 80733EB8  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 80733EBC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80733EC0  41 82 00 0C */	beq lbl_80733ECC
/* 80733EC4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80733EC8  D0 1E 06 98 */	stfs f0, 0x698(r30)
lbl_80733ECC:
/* 80733ECC  C0 5E 06 98 */	lfs f2, 0x698(r30)
/* 80733ED0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80733ED4  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80733ED8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80733EDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80733EE0  40 81 00 18 */	ble lbl_80733EF8
/* 80733EE4  38 61 00 14 */	addi r3, r1, 0x14
/* 80733EE8  38 80 FF FF */	li r4, -1
/* 80733EEC  4B 94 39 5C */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80733EF0  38 60 00 01 */	li r3, 1
/* 80733EF4  48 00 00 14 */	b lbl_80733F08
lbl_80733EF8:
/* 80733EF8  38 61 00 14 */	addi r3, r1, 0x14
/* 80733EFC  38 80 FF FF */	li r4, -1
/* 80733F00  4B 94 39 48 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80733F04  38 60 00 00 */	li r3, 0
lbl_80733F08:
/* 80733F08  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80733F0C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80733F10  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80733F14  7C 08 03 A6 */	mtlr r0
/* 80733F18  38 21 00 70 */	addi r1, r1, 0x70
/* 80733F1C  4E 80 00 20 */	blr 
