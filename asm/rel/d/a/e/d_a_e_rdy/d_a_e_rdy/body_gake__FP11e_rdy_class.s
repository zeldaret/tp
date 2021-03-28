lbl_807710DC:
/* 807710DC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807710E0  7C 08 02 A6 */	mflr r0
/* 807710E4  90 01 00 94 */	stw r0, 0x94(r1)
/* 807710E8  39 61 00 90 */	addi r11, r1, 0x90
/* 807710EC  4B BF 10 E4 */	b _savegpr_26
/* 807710F0  7C 7B 1B 78 */	mr r27, r3
/* 807710F4  3C 60 80 78 */	lis r3, lit_4018@ha
/* 807710F8  3B E3 9D FC */	addi r31, r3, lit_4018@l
/* 807710FC  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 80771100  80 63 00 04 */	lwz r3, 4(r3)
/* 80771104  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80771108  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077110C  38 63 02 10 */	addi r3, r3, 0x210
/* 80771110  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80771114  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80771118  80 84 00 00 */	lwz r4, 0(r4)
/* 8077111C  4B BD 53 94 */	b PSMTXCopy
/* 80771120  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80771124  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80771128  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077112C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80771130  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80771134  38 61 00 14 */	addi r3, r1, 0x14
/* 80771138  38 81 00 08 */	addi r4, r1, 8
/* 8077113C  4B AF FD B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80771140  3B 41 00 20 */	addi r26, r1, 0x20
/* 80771144  7F 43 D3 78 */	mr r3, r26
/* 80771148  4B 90 64 34 */	b __ct__11dBgS_GndChkFv
/* 8077114C  3C 60 80 78 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80771150  38 63 A7 EC */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80771154  90 61 00 30 */	stw r3, 0x30(r1)
/* 80771158  3B C3 00 0C */	addi r30, r3, 0xc
/* 8077115C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80771160  3B A3 00 18 */	addi r29, r3, 0x18
/* 80771164  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80771168  3B 83 00 24 */	addi r28, r3, 0x24
/* 8077116C  93 81 00 6C */	stw r28, 0x6c(r1)
/* 80771170  38 7A 00 3C */	addi r3, r26, 0x3c
/* 80771174  4B 90 7C F4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80771178  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8077117C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80771180  EC 01 00 2A */	fadds f0, f1, f0
/* 80771184  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80771188  7F 43 D3 78 */	mr r3, r26
/* 8077118C  38 81 00 08 */	addi r4, r1, 8
/* 80771190  4B AF 6B 98 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80771194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80771198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077119C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807711A0  7F 44 D3 78 */	mr r4, r26
/* 807711A4  4B 90 32 FC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807711A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807711AC  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 807711B0  FC 00 08 18 */	frsp f0, f1
/* 807711B4  EC 22 00 28 */	fsubs f1, f2, f0
/* 807711B8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 807711BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807711C0  40 81 00 30 */	ble lbl_807711F0
/* 807711C4  3C 60 80 78 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807711C8  38 03 A7 EC */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807711CC  90 01 00 30 */	stw r0, 0x30(r1)
/* 807711D0  93 C1 00 40 */	stw r30, 0x40(r1)
/* 807711D4  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 807711D8  93 81 00 6C */	stw r28, 0x6c(r1)
/* 807711DC  7F 43 D3 78 */	mr r3, r26
/* 807711E0  38 80 00 00 */	li r4, 0
/* 807711E4  4B 90 64 0C */	b __dt__11dBgS_GndChkFv
/* 807711E8  38 60 00 01 */	li r3, 1
/* 807711EC  48 00 00 2C */	b lbl_80771218
lbl_807711F0:
/* 807711F0  3C 60 80 78 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807711F4  38 03 A7 EC */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807711F8  90 01 00 30 */	stw r0, 0x30(r1)
/* 807711FC  93 C1 00 40 */	stw r30, 0x40(r1)
/* 80771200  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80771204  93 81 00 6C */	stw r28, 0x6c(r1)
/* 80771208  7F 43 D3 78 */	mr r3, r26
/* 8077120C  38 80 00 00 */	li r4, 0
/* 80771210  4B 90 63 E0 */	b __dt__11dBgS_GndChkFv
/* 80771214  38 60 00 00 */	li r3, 0
lbl_80771218:
/* 80771218  39 61 00 90 */	addi r11, r1, 0x90
/* 8077121C  4B BF 10 00 */	b _restgpr_26
/* 80771220  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80771224  7C 08 03 A6 */	mtlr r0
/* 80771228  38 21 00 90 */	addi r1, r1, 0x90
/* 8077122C  4E 80 00 20 */	blr 
