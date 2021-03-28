lbl_80582894:
/* 80582894  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80582898  7C 08 02 A6 */	mflr r0
/* 8058289C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805828A0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805828A4  7C 7F 1B 78 */	mr r31, r3
/* 805828A8  38 61 00 14 */	addi r3, r1, 0x14
/* 805828AC  4B AF 4F 04 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 805828B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805828B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805828B8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805828BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805828C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805828C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805828C8  3C 60 80 58 */	lis r3, lit_4421@ha
/* 805828CC  C0 03 56 74 */	lfs f0, lit_4421@l(r3)
/* 805828D0  EC 01 00 2A */	fadds f0, f1, f0
/* 805828D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805828D8  38 61 00 14 */	addi r3, r1, 0x14
/* 805828DC  38 81 00 08 */	addi r4, r1, 8
/* 805828E0  4B CE 54 2C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 805828E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805828E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805828EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805828F0  38 81 00 14 */	addi r4, r1, 0x14
/* 805828F4  4B AF 1B AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805828F8  D0 3F 06 04 */	stfs f1, 0x604(r31)
/* 805828FC  C0 3F 06 04 */	lfs f1, 0x604(r31)
/* 80582900  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80582904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80582908  40 81 00 18 */	ble lbl_80582920
/* 8058290C  38 61 00 14 */	addi r3, r1, 0x14
/* 80582910  38 80 FF FF */	li r4, -1
/* 80582914  4B AF 4F 34 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80582918  38 60 00 01 */	li r3, 1
/* 8058291C  48 00 00 14 */	b lbl_80582930
lbl_80582920:
/* 80582920  38 61 00 14 */	addi r3, r1, 0x14
/* 80582924  38 80 FF FF */	li r4, -1
/* 80582928  4B AF 4F 20 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8058292C  38 60 00 00 */	li r3, 0
lbl_80582930:
/* 80582930  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80582934  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80582938  7C 08 03 A6 */	mtlr r0
/* 8058293C  38 21 00 70 */	addi r1, r1, 0x70
/* 80582940  4E 80 00 20 */	blr 
