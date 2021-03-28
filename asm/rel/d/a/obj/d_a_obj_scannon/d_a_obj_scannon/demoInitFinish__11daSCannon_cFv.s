lbl_80CC8430:
/* 80CC8430  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC8434  7C 08 02 A6 */	mflr r0
/* 80CC8438  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC843C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC8440  4B 69 9D 98 */	b _savegpr_28
/* 80CC8444  7C 7F 1B 78 */	mr r31, r3
/* 80CC8448  3C 60 80 CD */	lis r3, TKS_SET_POS@ha
/* 80CC844C  3B A3 91 88 */	addi r29, r3, TKS_SET_POS@l
/* 80CC8450  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CC8454  7C 03 07 74 */	extsb r3, r0
/* 80CC8458  4B 36 4C 14 */	b dComIfGp_getReverb__Fi
/* 80CC845C  7C 67 1B 78 */	mr r7, r3
/* 80CC8460  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 80CC8464  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0008000B@l */
/* 80CC8468  90 01 00 08 */	stw r0, 8(r1)
/* 80CC846C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC8470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC8474  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC8478  38 81 00 08 */	addi r4, r1, 8
/* 80CC847C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CC8480  38 C0 00 00 */	li r6, 0
/* 80CC8484  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80CC8488  FC 40 08 90 */	fmr f2, f1
/* 80CC848C  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80CC8490  FC 80 18 90 */	fmr f4, f3
/* 80CC8494  39 00 00 00 */	li r8, 0
/* 80CC8498  4B 5E 34 EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC849C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CC84A0  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80CC84A4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CC84A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC84AC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CC84B0  3B 9E 5B D4 */	addi r28, r30, 0x5bd4
/* 80CC84B4  7F 83 E3 78 */	mr r3, r28
/* 80CC84B8  38 80 00 1F */	li r4, 0x1f
/* 80CC84BC  4B 3A 78 D8 */	b StopQuake__12dVibration_cFi
/* 80CC84C0  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80CC84C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CC84C8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80CC84CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC84D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CC84D4  7F 83 E3 78 */	mr r3, r28
/* 80CC84D8  38 80 00 08 */	li r4, 8
/* 80CC84DC  38 A0 00 1F */	li r5, 0x1f
/* 80CC84E0  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CC84E4  4B 3A 75 40 */	b StartShock__12dVibration_cFii4cXyz
/* 80CC84E8  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80CC84EC  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 80CC84F0  3C A0 80 CD */	lis r5, struct_80CC9224+0x0@ha
/* 80CC84F4  38 A5 92 24 */	addi r5, r5, struct_80CC9224+0x0@l
/* 80CC84F8  38 A5 00 DA */	addi r5, r5, 0xda
/* 80CC84FC  38 C0 00 03 */	li r6, 3
/* 80CC8500  4B 37 FB EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CC8504  28 03 00 00 */	cmplwi r3, 0
/* 80CC8508  41 82 00 10 */	beq lbl_80CC8518
/* 80CC850C  80 03 00 00 */	lwz r0, 0(r3)
/* 80CC8510  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80CC8514  48 00 00 0C */	b lbl_80CC8520
lbl_80CC8518:
/* 80CC8518  38 00 00 01 */	li r0, 1
/* 80CC851C  90 1F 06 00 */	stw r0, 0x600(r31)
lbl_80CC8520:
/* 80CC8520  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC8524  4B 69 9D 00 */	b _restgpr_28
/* 80CC8528  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC852C  7C 08 03 A6 */	mtlr r0
/* 80CC8530  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC8534  4E 80 00 20 */	blr 
