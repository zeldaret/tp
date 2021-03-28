lbl_804CD428:
/* 804CD428  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CD42C  7C 08 02 A6 */	mflr r0
/* 804CD430  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CD434  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804CD438  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804CD43C  39 61 00 30 */	addi r11, r1, 0x30
/* 804CD440  4B E9 4D 9C */	b _savegpr_29
/* 804CD444  7C 7F 1B 78 */	mr r31, r3
/* 804CD448  3C 60 80 4D */	lis r3, l_cyl_src@ha
/* 804CD44C  3B C3 E3 F4 */	addi r30, r3, l_cyl_src@l
/* 804CD450  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 804CD454  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804CD458  41 82 00 34 */	beq lbl_804CD48C
/* 804CD45C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804CD460  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 804CD464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CD468  40 81 00 14 */	ble lbl_804CD47C
/* 804CD46C  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 804CD470  38 9F 07 64 */	addi r4, r31, 0x764
/* 804CD474  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804CD478  4B FF F3 61 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_804CD47C:
/* 804CD47C  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 804CD480  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 804CD484  4B D9 A1 F0 */	b cM_atan2s__Fff
/* 804CD488  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_804CD48C:
/* 804CD48C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 804CD490  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804CD494  41 82 00 DC */	beq lbl_804CD570
/* 804CD498  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 804CD49C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804CD4A0  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804CD4A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804CD4A8  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 804CD4AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804CD4B0  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 804CD4B4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 804CD4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CD4BC  40 81 00 14 */	ble lbl_804CD4D0
/* 804CD4C0  38 61 00 0C */	addi r3, r1, 0xc
/* 804CD4C4  38 9F 07 64 */	addi r4, r31, 0x764
/* 804CD4C8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 804CD4CC  4B FF F3 0D */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_804CD4D0:
/* 804CD4D0  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 804CD4D4  FC 20 00 50 */	fneg f1, f0
/* 804CD4D8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804CD4DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CD4E0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CD4E4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804CD4E8  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 804CD4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CD4F0  40 80 00 0C */	bge lbl_804CD4FC
/* 804CD4F4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804CD4F8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_804CD4FC:
/* 804CD4FC  88 7F 09 36 */	lbz r3, 0x936(r31)
/* 804CD500  38 03 00 01 */	addi r0, r3, 1
/* 804CD504  98 1F 09 36 */	stb r0, 0x936(r31)
/* 804CD508  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 804CD50C  FC 00 02 10 */	fabs f0, f0
/* 804CD510  FF E0 00 18 */	frsp f31, f0
/* 804CD514  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804CD518  7C 03 07 74 */	extsb r3, r0
/* 804CD51C  4B B5 FB 50 */	b dComIfGp_getReverb__Fi
/* 804CD520  7C 7D 1B 78 */	mr r29, r3
/* 804CD524  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C4@ha */
/* 804CD528  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000800C4@l */
/* 804CD52C  90 01 00 08 */	stw r0, 8(r1)
/* 804CD530  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804CD534  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804CD538  4B E9 4B 74 */	b __cvt_fp2unsigned
/* 804CD53C  7C 66 1B 78 */	mr r6, r3
/* 804CD540  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804CD544  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804CD548  80 63 00 00 */	lwz r3, 0(r3)
/* 804CD54C  38 81 00 08 */	addi r4, r1, 8
/* 804CD550  38 BF 05 38 */	addi r5, r31, 0x538
/* 804CD554  7F A7 EB 78 */	mr r7, r29
/* 804CD558  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804CD55C  FC 40 08 90 */	fmr f2, f1
/* 804CD560  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 804CD564  FC 80 18 90 */	fmr f4, f3
/* 804CD568  39 00 00 00 */	li r8, 0
/* 804CD56C  4B DD E4 18 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804CD570:
/* 804CD570  88 1F 09 36 */	lbz r0, 0x936(r31)
/* 804CD574  28 00 00 02 */	cmplwi r0, 2
/* 804CD578  40 80 00 18 */	bge lbl_804CD590
/* 804CD57C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804CD580  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 804CD584  40 82 00 14 */	bne lbl_804CD598
/* 804CD588  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 804CD58C  41 82 00 0C */	beq lbl_804CD598
lbl_804CD590:
/* 804CD590  7F E3 FB 78 */	mr r3, r31
/* 804CD594  4B FF FA 19 */	bl endEffect02__11daObjLife_cFv
lbl_804CD598:
/* 804CD598  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804CD59C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804CD5A0  39 61 00 30 */	addi r11, r1, 0x30
/* 804CD5A4  4B E9 4C 84 */	b _restgpr_29
/* 804CD5A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CD5AC  7C 08 03 A6 */	mtlr r0
/* 804CD5B0  38 21 00 40 */	addi r1, r1, 0x40
/* 804CD5B4  4E 80 00 20 */	blr 
