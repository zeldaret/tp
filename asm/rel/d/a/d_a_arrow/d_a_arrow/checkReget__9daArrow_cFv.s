lbl_8049B370:
/* 8049B370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B374  7C 08 02 A6 */	mflr r0
/* 8049B378  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B37C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049B380  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8049B384  7C 7E 1B 78 */	mr r30, r3
/* 8049B388  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049B38C  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049B390  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 8049B394  4B BE 92 C4 */	b ChkCoHit__12dCcD_GObjInfFv
/* 8049B398  28 03 00 00 */	cmplwi r3, 0
/* 8049B39C  41 82 00 84 */	beq lbl_8049B420
/* 8049B3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B3A4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8049B3A8  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 8049B3AC  38 03 00 01 */	addi r0, r3, 1
/* 8049B3B0  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 8049B3B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8049B3B8  38 80 00 11 */	li r4, 0x11
/* 8049B3BC  38 A0 FF FF */	li r5, -1
/* 8049B3C0  38 C0 00 00 */	li r6, 0
/* 8049B3C4  38 E0 00 00 */	li r7, 0
/* 8049B3C8  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8049B3CC  FC 40 08 90 */	fmr f2, f1
/* 8049B3D0  4B B8 0E 2C */	b fopAcM_createItemForSimpleDemo__FPC4cXyziiPC5csXyzPC4cXyzff
/* 8049B3D4  38 00 00 18 */	li r0, 0x18
/* 8049B3D8  90 01 00 08 */	stw r0, 8(r1)
/* 8049B3DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8049B3E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8049B3E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8049B3E8  38 81 00 08 */	addi r4, r1, 8
/* 8049B3EC  38 A0 00 00 */	li r5, 0
/* 8049B3F0  38 C0 00 00 */	li r6, 0
/* 8049B3F4  38 E0 00 00 */	li r7, 0
/* 8049B3F8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8049B3FC  FC 40 08 90 */	fmr f2, f1
/* 8049B400  C0 7F 01 34 */	lfs f3, 0x134(r31)
/* 8049B404  FC 80 18 90 */	fmr f4, f3
/* 8049B408  39 00 00 00 */	li r8, 0
/* 8049B40C  4B E1 05 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8049B410  38 00 00 01 */	li r0, 1
/* 8049B414  98 1E 09 3F */	stb r0, 0x93f(r30)
/* 8049B418  38 60 00 01 */	li r3, 1
/* 8049B41C  48 00 00 28 */	b lbl_8049B444
lbl_8049B420:
/* 8049B420  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 8049B424  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8049B428  4B DD 42 20 */	b SetC__8cM3dGSphFRC4cXyz
/* 8049B42C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049B430  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049B434  38 63 23 3C */	addi r3, r3, 0x233c
/* 8049B438  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 8049B43C  4B DC 97 6C */	b Set__4cCcSFP8cCcD_Obj
/* 8049B440  38 60 00 00 */	li r3, 0
lbl_8049B444:
/* 8049B444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049B448  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8049B44C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B450  7C 08 03 A6 */	mtlr r0
/* 8049B454  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B458  4E 80 00 20 */	blr 
