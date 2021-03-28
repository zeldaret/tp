lbl_80C69E10:
/* 80C69E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C69E14  7C 08 02 A6 */	mflr r0
/* 80C69E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C69E1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C69E20  4B 6F 83 BC */	b _savegpr_29
/* 80C69E24  7C 7D 1B 78 */	mr r29, r3
/* 80C69E28  7C 9E 23 78 */	mr r30, r4
/* 80C69E2C  3C 80 80 C7 */	lis r4, lit_3679@ha
/* 80C69E30  3B E4 A3 B8 */	addi r31, r4, lit_3679@l
/* 80C69E34  48 00 00 E5 */	bl action__14daObjLv4Sand_cFv
/* 80C69E38  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C69E3C  90 1E 00 00 */	stw r0, 0(r30)
/* 80C69E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C69E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C69E48  38 80 00 EA */	li r4, 0xea
/* 80C69E4C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C69E50  7C 05 07 74 */	extsb r5, r0
/* 80C69E54  4B 3C B5 0C */	b isSwitch__10dSv_info_cCFii
/* 80C69E58  2C 03 00 00 */	cmpwi r3, 0
/* 80C69E5C  41 82 00 98 */	beq lbl_80C69EF4
/* 80C69E60  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80C69E64  4B 3A 35 C4 */	b play__14mDoExt_baseAnmFv
/* 80C69E68  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 80C69E6C  FC 00 02 10 */	fabs f0, f0
/* 80C69E70  FC 20 00 18 */	frsp f1, f0
/* 80C69E74  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C69E78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C69E7C  40 80 00 78 */	bge lbl_80C69EF4
/* 80C69E80  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C69E84  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80C69E88  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C69E8C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C69E90  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C69E94  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80C69E98  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80C69E9C  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 80C69EA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C69EA4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80C69EA8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C69EAC  7C 03 07 74 */	extsb r3, r0
/* 80C69EB0  4B 3C 31 BC */	b dComIfGp_getReverb__Fi
/* 80C69EB4  7C 67 1B 78 */	mr r7, r3
/* 80C69EB8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090038@ha */
/* 80C69EBC  38 03 00 38 */	addi r0, r3, 0x0038 /* 0x00090038@l */
/* 80C69EC0  90 01 00 08 */	stw r0, 8(r1)
/* 80C69EC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C69EC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C69ECC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C69ED0  38 81 00 08 */	addi r4, r1, 8
/* 80C69ED4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C69ED8  38 C0 00 00 */	li r6, 0
/* 80C69EDC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C69EE0  FC 40 08 90 */	fmr f2, f1
/* 80C69EE4  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C69EE8  FC 80 18 90 */	fmr f4, f3
/* 80C69EEC  39 00 00 00 */	li r8, 0
/* 80C69EF0  4B 64 26 1C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C69EF4:
/* 80C69EF4  7F A3 EB 78 */	mr r3, r29
/* 80C69EF8  4B FF FB DD */	bl setBaseMtx__14daObjLv4Sand_cFv
/* 80C69EFC  38 60 00 01 */	li r3, 1
/* 80C69F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80C69F04  4B 6F 83 24 */	b _restgpr_29
/* 80C69F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C69F0C  7C 08 03 A6 */	mtlr r0
/* 80C69F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80C69F14  4E 80 00 20 */	blr 
