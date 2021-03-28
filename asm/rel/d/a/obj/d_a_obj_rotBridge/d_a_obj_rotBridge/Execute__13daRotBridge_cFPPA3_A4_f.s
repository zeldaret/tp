lbl_80CBEF34:
/* 80CBEF34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBEF38  7C 08 02 A6 */	mflr r0
/* 80CBEF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBEF40  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBEF44  4B 6A 32 98 */	b _savegpr_29
/* 80CBEF48  7C 7D 1B 78 */	mr r29, r3
/* 80CBEF4C  7C 9E 23 78 */	mr r30, r4
/* 80CBEF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBEF54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBEF58  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CBEF5C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CBEF60  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CBEF64  7C 05 07 74 */	extsb r5, r0
/* 80CBEF68  4B 37 63 F8 */	b isSwitch__10dSv_info_cCFii
/* 80CBEF6C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80CBEF70  88 1D 05 AD */	lbz r0, 0x5ad(r29)
/* 80CBEF74  7C 00 F8 40 */	cmplw r0, r31
/* 80CBEF78  41 82 00 94 */	beq lbl_80CBF00C
/* 80CBEF7C  28 1F 00 00 */	cmplwi r31, 0
/* 80CBEF80  41 82 00 88 */	beq lbl_80CBF008
/* 80CBEF84  38 00 00 01 */	li r0, 1
/* 80CBEF88  98 1D 05 AE */	stb r0, 0x5ae(r29)
/* 80CBEF8C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CBEF90  7C 03 07 74 */	extsb r3, r0
/* 80CBEF94  4B 36 E0 D8 */	b dComIfGp_getReverb__Fi
/* 80CBEF98  7C 67 1B 78 */	mr r7, r3
/* 80CBEF9C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080116@ha */
/* 80CBEFA0  38 03 01 16 */	addi r0, r3, 0x0116 /* 0x00080116@l */
/* 80CBEFA4  90 01 00 08 */	stw r0, 8(r1)
/* 80CBEFA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CBEFAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CBEFB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBEFB4  38 81 00 08 */	addi r4, r1, 8
/* 80CBEFB8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80CBEFBC  38 C0 00 00 */	li r6, 0
/* 80CBEFC0  3D 00 80 CC */	lis r8, lit_3694@ha
/* 80CBEFC4  C0 28 F6 90 */	lfs f1, lit_3694@l(r8)
/* 80CBEFC8  FC 40 08 90 */	fmr f2, f1
/* 80CBEFCC  3D 00 80 CC */	lis r8, lit_3833@ha
/* 80CBEFD0  C0 68 F6 A0 */	lfs f3, lit_3833@l(r8)
/* 80CBEFD4  FC 80 18 90 */	fmr f4, f3
/* 80CBEFD8  39 00 00 00 */	li r8, 0
/* 80CBEFDC  4B 5E C9 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBEFE0  80 9D 05 DC */	lwz r4, 0x5dc(r29)
/* 80CBEFE4  28 04 00 00 */	cmplwi r4, 0
/* 80CBEFE8  41 82 00 20 */	beq lbl_80CBF008
/* 80CBEFEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBEFF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBEFF4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBEFF8  7F A5 EB 78 */	mr r5, r29
/* 80CBEFFC  4B 3B 5A 0C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CBF000  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80CBF004  4B 3B C9 BC */	b Move__4dBgWFv
lbl_80CBF008:
/* 80CBF008  9B FD 05 AD */	stb r31, 0x5ad(r29)
lbl_80CBF00C:
/* 80CBF00C  7F A3 EB 78 */	mr r3, r29
/* 80CBF010  48 00 00 41 */	bl playerAreaCheck__13daRotBridge_cFv
/* 80CBF014  7F A3 EB 78 */	mr r3, r29
/* 80CBF018  48 00 01 D5 */	bl moveBridge__13daRotBridge_cFv
/* 80CBF01C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80CBF020  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CBF024  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CBF028  90 1E 00 00 */	stw r0, 0(r30)
/* 80CBF02C  38 00 00 00 */	li r0, 0
/* 80CBF030  98 1D 05 AF */	stb r0, 0x5af(r29)
/* 80CBF034  38 60 00 01 */	li r3, 1
/* 80CBF038  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBF03C  4B 6A 31 EC */	b _restgpr_29
/* 80CBF040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBF044  7C 08 03 A6 */	mtlr r0
/* 80CBF048  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBF04C  4E 80 00 20 */	blr 
