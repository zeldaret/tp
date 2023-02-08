lbl_8050B3E8:
/* 8050B3E8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8050B3EC  7C 08 02 A6 */	mflr r0
/* 8050B3F0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8050B3F4  39 61 00 90 */	addi r11, r1, 0x90
/* 8050B3F8  4B E5 6D D9 */	bl _savegpr_26
/* 8050B3FC  7C 7B 1B 78 */	mr r27, r3
/* 8050B400  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050B404  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8050B408  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 8050B40C  80 63 00 04 */	lwz r3, 4(r3)
/* 8050B410  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8050B414  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8050B418  38 63 02 10 */	addi r3, r3, 0x210
/* 8050B41C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8050B420  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8050B424  80 84 00 00 */	lwz r4, 0(r4)
/* 8050B428  4B E3 B0 89 */	bl PSMTXCopy
/* 8050B42C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050B430  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050B434  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050B438  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050B43C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050B440  38 61 00 14 */	addi r3, r1, 0x14
/* 8050B444  38 81 00 08 */	addi r4, r1, 8
/* 8050B448  4B D6 5A A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050B44C  3B 41 00 20 */	addi r26, r1, 0x20
/* 8050B450  7F 43 D3 78 */	mr r3, r26
/* 8050B454  4B B6 C1 29 */	bl __ct__11dBgS_GndChkFv
/* 8050B458  3C 60 80 52 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 8050B45C  38 63 90 F8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 8050B460  90 61 00 30 */	stw r3, 0x30(r1)
/* 8050B464  3B C3 00 0C */	addi r30, r3, 0xc
/* 8050B468  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8050B46C  3B A3 00 18 */	addi r29, r3, 0x18
/* 8050B470  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8050B474  3B 83 00 24 */	addi r28, r3, 0x24
/* 8050B478  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8050B47C  38 7A 00 3C */	addi r3, r26, 0x3c
/* 8050B480  4B B6 D9 E9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8050B484  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8050B488  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050B48C  EC 01 00 2A */	fadds f0, f1, f0
/* 8050B490  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8050B494  7F 43 D3 78 */	mr r3, r26
/* 8050B498  38 81 00 08 */	addi r4, r1, 8
/* 8050B49C  4B D5 C8 8D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8050B4A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050B4A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050B4A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8050B4AC  7F 44 D3 78 */	mr r4, r26
/* 8050B4B0  4B B6 8F F1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8050B4B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8050B4B8  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8050B4BC  FC 00 08 18 */	frsp f0, f1
/* 8050B4C0  EC 22 00 28 */	fsubs f1, f2, f0
/* 8050B4C4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8050B4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B4CC  40 81 00 30 */	ble lbl_8050B4FC
/* 8050B4D0  3C 60 80 52 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 8050B4D4  38 03 90 F8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 8050B4D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8050B4DC  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8050B4E0  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8050B4E4  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8050B4E8  7F 43 D3 78 */	mr r3, r26
/* 8050B4EC  38 80 00 00 */	li r4, 0
/* 8050B4F0  4B B6 C1 01 */	bl __dt__11dBgS_GndChkFv
/* 8050B4F4  38 60 00 01 */	li r3, 1
/* 8050B4F8  48 00 00 2C */	b lbl_8050B524
lbl_8050B4FC:
/* 8050B4FC  3C 60 80 52 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 8050B500  38 03 90 F8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 8050B504  90 01 00 30 */	stw r0, 0x30(r1)
/* 8050B508  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8050B50C  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8050B510  93 81 00 6C */	stw r28, 0x6c(r1)
/* 8050B514  7F 43 D3 78 */	mr r3, r26
/* 8050B518  38 80 00 00 */	li r4, 0
/* 8050B51C  4B B6 C0 D5 */	bl __dt__11dBgS_GndChkFv
/* 8050B520  38 60 00 00 */	li r3, 0
lbl_8050B524:
/* 8050B524  39 61 00 90 */	addi r11, r1, 0x90
/* 8050B528  4B E5 6C F5 */	bl _restgpr_26
/* 8050B52C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8050B530  7C 08 03 A6 */	mtlr r0
/* 8050B534  38 21 00 90 */	addi r1, r1, 0x90
/* 8050B538  4E 80 00 20 */	blr 
