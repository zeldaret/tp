lbl_804DC330:
/* 804DC330  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DC334  7C 08 02 A6 */	mflr r0
/* 804DC338  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DC33C  39 61 00 50 */	addi r11, r1, 0x50
/* 804DC340  4B E8 5E 99 */	bl _savegpr_28
/* 804DC344  7C 7C 1B 78 */	mr r28, r3
/* 804DC348  3C 60 80 4E */	lis r3, lit_1109@ha /* 0x804DD7F8@ha */
/* 804DC34C  3B C3 D7 F8 */	addi r30, r3, lit_1109@l /* 0x804DD7F8@l */
/* 804DC350  3C 60 80 4E */	lis r3, lit_3766@ha /* 0x804DD5DC@ha */
/* 804DC354  3B E3 D5 DC */	addi r31, r3, lit_3766@l /* 0x804DD5DC@l */
/* 804DC358  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 804DC35C  7C 00 07 75 */	extsb. r0, r0
/* 804DC360  40 82 00 30 */	bne lbl_804DC390
/* 804DC364  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 804DC368  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 804DC36C  38 7E 00 50 */	addi r3, r30, 0x50
/* 804DC370  D0 03 00 04 */	stfs f0, 4(r3)
/* 804DC374  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DC378  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha /* 0x804DA5B8@ha */
/* 804DC37C  38 84 A5 B8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804DA5B8@l */
/* 804DC380  38 BE 00 40 */	addi r5, r30, 0x40
/* 804DC384  4B FF E1 55 */	bl __register_global_object
/* 804DC388  38 00 00 01 */	li r0, 1
/* 804DC38C  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_804DC390:
/* 804DC390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DC394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DC398  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804DC39C  7F A3 EB 78 */	mr r3, r29
/* 804DC3A0  7F 84 E3 78 */	mr r4, r28
/* 804DC3A4  4B C1 7B 15 */	bl checkCanoePaddleGrab__9daAlink_cCFP10fopAc_ac_c
/* 804DC3A8  2C 03 00 00 */	cmpwi r3, 0
/* 804DC3AC  41 82 01 88 */	beq lbl_804DC534
/* 804DC3B0  88 1C 14 40 */	lbz r0, 0x1440(r28)
/* 804DC3B4  28 00 00 04 */	cmplwi r0, 4
/* 804DC3B8  40 82 00 10 */	bne lbl_804DC3C8
/* 804DC3BC  38 00 00 01 */	li r0, 1
/* 804DC3C0  98 1C 14 40 */	stb r0, 0x1440(r28)
/* 804DC3C4  48 00 01 78 */	b lbl_804DC53C
lbl_804DC3C8:
/* 804DC3C8  28 00 00 00 */	cmplwi r0, 0
/* 804DC3CC  40 82 00 10 */	bne lbl_804DC3DC
/* 804DC3D0  38 00 00 02 */	li r0, 2
/* 804DC3D4  98 1C 14 40 */	stb r0, 0x1440(r28)
/* 804DC3D8  48 00 01 64 */	b lbl_804DC53C
lbl_804DC3DC:
/* 804DC3DC  4B C1 78 F1 */	bl getCanoeLocalPaddleTop__9daAlink_cFv
/* 804DC3E0  7C 64 1B 78 */	mr r4, r3
/* 804DC3E4  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 804DC3E8  38 63 00 24 */	addi r3, r3, 0x24
/* 804DC3EC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804DC3F0  4B E6 A9 7D */	bl PSMTXMultVec
/* 804DC3F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 804DC3F8  4B B4 19 8D */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 804DC3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DC400  41 82 01 28 */	beq lbl_804DC528
/* 804DC404  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804DC408  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 804DC40C  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 804DC410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC414  40 80 01 14 */	bge lbl_804DC528
/* 804DC418  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 804DC41C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804DC420  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804DC424  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 804DC428  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DC42C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 804DC430  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DC434  38 61 00 08 */	addi r3, r1, 8
/* 804DC438  38 81 00 2C */	addi r4, r1, 0x2c
/* 804DC43C  38 A1 00 20 */	addi r5, r1, 0x20
/* 804DC440  4B D8 A6 F5 */	bl __mi__4cXyzCFRC3Vec
/* 804DC444  C0 01 00 08 */	lfs f0, 8(r1)
/* 804DC448  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804DC44C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804DC450  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804DC454  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804DC458  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804DC45C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804DC460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC464  40 81 00 08 */	ble lbl_804DC46C
/* 804DC468  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_804DC46C:
/* 804DC46C  38 61 00 14 */	addi r3, r1, 0x14
/* 804DC470  7C 64 1B 78 */	mr r4, r3
/* 804DC474  3C A0 80 45 */	lis r5, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 804DC478  C0 25 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r5)  /* 0x80450CD8@l */
/* 804DC47C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804DC480  EC 21 00 28 */	fsubs f1, f1, f0
/* 804DC484  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804DC488  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DC48C  4B E6 AC 4D */	bl PSVECScale
/* 804DC490  38 61 00 20 */	addi r3, r1, 0x20
/* 804DC494  38 81 00 14 */	addi r4, r1, 0x14
/* 804DC498  7C 65 1B 78 */	mr r5, r3
/* 804DC49C  4B E6 AB F5 */	bl PSVECAdd
/* 804DC4A0  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha /* 0x80450CD8@ha */
/* 804DC4A4  C0 03 0C D8 */	lfs f0, mWaterY__11fopAcM_wt_c@l(r3)  /* 0x80450CD8@l */
/* 804DC4A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DC4AC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804DC4B0  7C 09 07 74 */	extsb r9, r0
/* 804DC4B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DC4B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DC4BC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DC4C0  38 9C 14 80 */	addi r4, r28, 0x1480
/* 804DC4C4  3C A0 80 3F */	lis r5, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 804DC4C8  38 A5 1D 80 */	addi r5, r5, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 804DC4CC  38 C1 00 20 */	addi r6, r1, 0x20
/* 804DC4D0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 804DC4D4  38 FC 01 0C */	addi r7, r28, 0x10c
/* 804DC4D8  39 1E 00 50 */	addi r8, r30, 0x50
/* 804DC4DC  4B B7 03 5D */	bl setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
/* 804DC4E0  88 1C 14 40 */	lbz r0, 0x1440(r28)
/* 804DC4E4  28 00 00 02 */	cmplwi r0, 2
/* 804DC4E8  40 82 00 34 */	bne lbl_804DC51C
/* 804DC4EC  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 804DC4F0  28 00 00 8F */	cmplwi r0, 0x8f
/* 804DC4F4  41 82 00 1C */	beq lbl_804DC510
/* 804DC4F8  28 00 00 98 */	cmplwi r0, 0x98
/* 804DC4FC  41 82 00 14 */	beq lbl_804DC510
/* 804DC500  38 61 00 20 */	addi r3, r1, 0x20
/* 804DC504  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 804DC508  38 80 00 02 */	li r4, 2
/* 804DC50C  4B B4 33 71 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_804DC510:
/* 804DC510  38 00 00 03 */	li r0, 3
/* 804DC514  98 1C 14 40 */	stb r0, 0x1440(r28)
/* 804DC518  48 00 00 24 */	b lbl_804DC53C
lbl_804DC51C:
/* 804DC51C  38 00 00 01 */	li r0, 1
/* 804DC520  98 1C 14 40 */	stb r0, 0x1440(r28)
/* 804DC524  48 00 00 18 */	b lbl_804DC53C
lbl_804DC528:
/* 804DC528  38 00 00 02 */	li r0, 2
/* 804DC52C  98 1C 14 40 */	stb r0, 0x1440(r28)
/* 804DC530  48 00 00 0C */	b lbl_804DC53C
lbl_804DC534:
/* 804DC534  38 00 00 00 */	li r0, 0
/* 804DC538  98 1C 14 40 */	stb r0, 0x1440(r28)
lbl_804DC53C:
/* 804DC53C  39 61 00 50 */	addi r11, r1, 0x50
/* 804DC540  4B E8 5C E5 */	bl _restgpr_28
/* 804DC544  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DC548  7C 08 03 A6 */	mtlr r0
/* 804DC54C  38 21 00 50 */	addi r1, r1, 0x50
/* 804DC550  4E 80 00 20 */	blr 
