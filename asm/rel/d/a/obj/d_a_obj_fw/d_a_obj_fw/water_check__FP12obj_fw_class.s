lbl_80BF2200:
/* 80BF2200  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BF2204  7C 08 02 A6 */	mflr r0
/* 80BF2208  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BF220C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80BF2210  7C 7F 1B 78 */	mr r31, r3
/* 80BF2214  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF2218  4B 48 55 98 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80BF221C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BF2220  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BF2224  3C 60 80 BF */	lis r3, lit_3694@ha
/* 80BF2228  C0 23 2B 58 */	lfs f1, lit_3694@l(r3)
/* 80BF222C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BF2230  EC 01 00 2A */	fadds f0, f1, f0
/* 80BF2234  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF2238  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BF223C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BF2240  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF2244  38 81 00 08 */	addi r4, r1, 8
/* 80BF2248  4B 67 5A C4 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80BF224C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF2250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF2254  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF2258  38 81 00 14 */	addi r4, r1, 0x14
/* 80BF225C  4B 48 22 44 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80BF2260  D0 3F 05 84 */	stfs f1, 0x584(r31)
/* 80BF2264  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 80BF2268  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BF226C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF2270  40 81 00 18 */	ble lbl_80BF2288
/* 80BF2274  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF2278  38 80 FF FF */	li r4, -1
/* 80BF227C  4B 48 55 CC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80BF2280  38 60 00 01 */	li r3, 1
/* 80BF2284  48 00 00 14 */	b lbl_80BF2298
lbl_80BF2288:
/* 80BF2288  38 61 00 14 */	addi r3, r1, 0x14
/* 80BF228C  38 80 FF FF */	li r4, -1
/* 80BF2290  4B 48 55 B8 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80BF2294  38 60 00 00 */	li r3, 0
lbl_80BF2298:
/* 80BF2298  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80BF229C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BF22A0  7C 08 03 A6 */	mtlr r0
/* 80BF22A4  38 21 00 70 */	addi r1, r1, 0x70
/* 80BF22A8  4E 80 00 20 */	blr 
