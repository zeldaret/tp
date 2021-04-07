lbl_80C62CFC:
/* 80C62CFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C62D00  7C 08 02 A6 */	mflr r0
/* 80C62D04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C62D08  39 61 00 30 */	addi r11, r1, 0x30
/* 80C62D0C  4B 6F F4 D1 */	bl _savegpr_29
/* 80C62D10  7C 7D 1B 78 */	mr r29, r3
/* 80C62D14  3C 60 80 C6 */	lis r3, lit_3653@ha /* 0x80C63170@ha */
/* 80C62D18  3B E3 31 70 */	addi r31, r3, lit_3653@l /* 0x80C63170@l */
/* 80C62D1C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080280@ha */
/* 80C62D20  38 03 02 80 */	addi r0, r3, 0x0280 /* 0x00080280@l */
/* 80C62D24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C62D28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C62D2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C62D30  80 63 00 00 */	lwz r3, 0(r3)
/* 80C62D34  38 81 00 0C */	addi r4, r1, 0xc
/* 80C62D38  38 BD 05 C4 */	addi r5, r29, 0x5c4
/* 80C62D3C  38 C0 00 00 */	li r6, 0
/* 80C62D40  38 E0 00 00 */	li r7, 0
/* 80C62D44  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C62D48  FC 40 08 90 */	fmr f2, f1
/* 80C62D4C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C62D50  FC 80 18 90 */	fmr f4, f3
/* 80C62D54  39 00 00 00 */	li r8, 0
/* 80C62D58  4B 64 97 B5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C62D5C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80C62D60  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C62D64  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C62D68  4B 60 D9 D9 */	bl cLib_chaseF__FPfff
/* 80C62D6C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80C62D70  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C62D74  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 80C62D78  4B 60 D9 C9 */	bl cLib_chaseF__FPfff
/* 80C62D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C62D80  41 82 00 8C */	beq lbl_80C62E0C
/* 80C62D84  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080285@ha */
/* 80C62D88  38 03 02 85 */	addi r0, r3, 0x0285 /* 0x00080285@l */
/* 80C62D8C  90 01 00 08 */	stw r0, 8(r1)
/* 80C62D90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C62D94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C62D98  80 63 00 00 */	lwz r3, 0(r3)
/* 80C62D9C  38 81 00 08 */	addi r4, r1, 8
/* 80C62DA0  38 BD 05 C4 */	addi r5, r29, 0x5c4
/* 80C62DA4  38 C0 00 00 */	li r6, 0
/* 80C62DA8  38 E0 00 00 */	li r7, 0
/* 80C62DAC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C62DB0  FC 40 08 90 */	fmr f2, f1
/* 80C62DB4  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C62DB8  FC 80 18 90 */	fmr f4, f3
/* 80C62DBC  39 00 00 00 */	li r8, 0
/* 80C62DC0  4B 64 8B C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C62DC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C62DC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C62DCC  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80C62DD0  7F C3 F3 78 */	mr r3, r30
/* 80C62DD4  38 80 00 1F */	li r4, 0x1f
/* 80C62DD8  4B 40 CF BD */	bl StopQuake__12dVibration_cFi
/* 80C62DDC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C62DE0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C62DE4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C62DE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C62DEC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C62DF0  7F C3 F3 78 */	mr r3, r30
/* 80C62DF4  38 80 00 08 */	li r4, 8
/* 80C62DF8  38 A0 00 1F */	li r5, 0x1f
/* 80C62DFC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C62E00  4B 40 CC 25 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C62E04  7F A3 EB 78 */	mr r3, r29
/* 80C62E08  48 00 00 1D */	bl mode_init_dead__13daObjLv4Brg_cFv
lbl_80C62E0C:
/* 80C62E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C62E10  4B 6F F4 19 */	bl _restgpr_29
/* 80C62E14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C62E18  7C 08 03 A6 */	mtlr r0
/* 80C62E1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C62E20  4E 80 00 20 */	blr 
