lbl_8049724C:
/* 8049724C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80497250  7C 08 02 A6 */	mflr r0
/* 80497254  90 01 00 34 */	stw r0, 0x34(r1)
/* 80497258  39 61 00 30 */	addi r11, r1, 0x30
/* 8049725C  4B EC AF 81 */	bl _savegpr_29
/* 80497260  7C 7D 1B 78 */	mr r29, r3
/* 80497264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80497268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049726C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80497270  7F C3 F3 78 */	mr r3, r30
/* 80497274  80 9D 0A C4 */	lwz r4, 0xac4(r29)
/* 80497278  3C A0 80 4A */	lis r5, action_table@ha /* 0x804982C8@ha */
/* 8049727C  38 A5 82 C8 */	addi r5, r5, action_table@l /* 0x804982C8@l */
/* 80497280  38 C0 00 04 */	li r6, 4
/* 80497284  38 E0 00 00 */	li r7, 0
/* 80497288  39 00 00 00 */	li r8, 0
/* 8049728C  4B BB 0B 85 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80497290  7C 7F 1B 78 */	mr r31, r3
/* 80497294  7F C3 F3 78 */	mr r3, r30
/* 80497298  80 9D 0A C4 */	lwz r4, 0xac4(r29)
/* 8049729C  4B BB 0A B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 804972A0  2C 03 00 00 */	cmpwi r3, 0
/* 804972A4  41 82 01 48 */	beq lbl_804973EC
/* 804972A8  2C 1F 00 02 */	cmpwi r31, 2
/* 804972AC  41 82 01 40 */	beq lbl_804973EC
/* 804972B0  40 80 00 10 */	bge lbl_804972C0
/* 804972B4  2C 1F 00 01 */	cmpwi r31, 1
/* 804972B8  40 80 00 14 */	bge lbl_804972CC
/* 804972BC  48 00 01 30 */	b lbl_804973EC
lbl_804972C0:
/* 804972C0  2C 1F 00 04 */	cmpwi r31, 4
/* 804972C4  40 80 01 28 */	bge lbl_804973EC
/* 804972C8  48 00 00 64 */	b lbl_8049732C
lbl_804972CC:
/* 804972CC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804972D0  7C 03 07 74 */	extsb r3, r0
/* 804972D4  4B B9 5D 99 */	bl dComIfGp_getReverb__Fi
/* 804972D8  7C 67 1B 78 */	mr r7, r3
/* 804972DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080020@ha */
/* 804972E0  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00080020@l */
/* 804972E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804972E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804972EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804972F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804972F4  38 81 00 10 */	addi r4, r1, 0x10
/* 804972F8  38 BD 05 38 */	addi r5, r29, 0x538
/* 804972FC  38 C0 00 00 */	li r6, 0
/* 80497300  3D 00 80 4A */	lis r8, lit_3763@ha /* 0x804981D0@ha */
/* 80497304  C0 28 81 D0 */	lfs f1, lit_3763@l(r8)  /* 0x804981D0@l */
/* 80497308  FC 40 08 90 */	fmr f2, f1
/* 8049730C  3D 00 80 4A */	lis r8, lit_4021@ha /* 0x804981D4@ha */
/* 80497310  C0 68 81 D4 */	lfs f3, lit_4021@l(r8)  /* 0x804981D4@l */
/* 80497314  FC 80 18 90 */	fmr f4, f3
/* 80497318  39 00 00 00 */	li r8, 0
/* 8049731C  4B E1 46 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80497320  7F A3 EB 78 */	mr r3, r29
/* 80497324  48 00 01 55 */	bl openInit__9daTbox2_cFv
/* 80497328  48 00 00 C4 */	b lbl_804973EC
lbl_8049732C:
/* 8049732C  88 1D 0A BC */	lbz r0, 0xabc(r29)
/* 80497330  28 00 00 00 */	cmplwi r0, 0
/* 80497334  40 82 00 5C */	bne lbl_80497390
/* 80497338  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8049733C  7C 03 07 74 */	extsb r3, r0
/* 80497340  4B B9 5D 2D */	bl dComIfGp_getReverb__Fi
/* 80497344  7C 67 1B 78 */	mr r7, r3
/* 80497348  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001F@ha */
/* 8049734C  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0008001F@l */
/* 80497350  90 01 00 0C */	stw r0, 0xc(r1)
/* 80497354  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80497358  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8049735C  80 63 00 00 */	lwz r3, 0(r3)
/* 80497360  38 81 00 0C */	addi r4, r1, 0xc
/* 80497364  38 BD 05 38 */	addi r5, r29, 0x538
/* 80497368  38 C0 00 00 */	li r6, 0
/* 8049736C  3D 00 80 4A */	lis r8, lit_3763@ha /* 0x804981D0@ha */
/* 80497370  C0 28 81 D0 */	lfs f1, lit_3763@l(r8)  /* 0x804981D0@l */
/* 80497374  FC 40 08 90 */	fmr f2, f1
/* 80497378  3D 00 80 4A */	lis r8, lit_4021@ha /* 0x804981D4@ha */
/* 8049737C  C0 68 81 D4 */	lfs f3, lit_4021@l(r8)  /* 0x804981D4@l */
/* 80497380  FC 80 18 90 */	fmr f4, f3
/* 80497384  39 00 00 00 */	li r8, 0
/* 80497388  4B E1 45 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8049738C  48 00 00 58 */	b lbl_804973E4
lbl_80497390:
/* 80497390  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80497394  7C 03 07 74 */	extsb r3, r0
/* 80497398  4B B9 5C D5 */	bl dComIfGp_getReverb__Fi
/* 8049739C  7C 67 1B 78 */	mr r7, r3
/* 804973A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080020@ha */
/* 804973A4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00080020@l */
/* 804973A8  90 01 00 08 */	stw r0, 8(r1)
/* 804973AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804973B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804973B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804973B8  38 81 00 08 */	addi r4, r1, 8
/* 804973BC  38 BD 05 38 */	addi r5, r29, 0x538
/* 804973C0  38 C0 00 00 */	li r6, 0
/* 804973C4  3D 00 80 4A */	lis r8, lit_3763@ha /* 0x804981D0@ha */
/* 804973C8  C0 28 81 D0 */	lfs f1, lit_3763@l(r8)  /* 0x804981D0@l */
/* 804973CC  FC 40 08 90 */	fmr f2, f1
/* 804973D0  3D 00 80 4A */	lis r8, lit_4021@ha /* 0x804981D4@ha */
/* 804973D4  C0 68 81 D4 */	lfs f3, lit_4021@l(r8)  /* 0x804981D4@l */
/* 804973D8  FC 80 18 90 */	fmr f4, f3
/* 804973DC  39 00 00 00 */	li r8, 0
/* 804973E0  4B E1 45 A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804973E4:
/* 804973E4  7F A3 EB 78 */	mr r3, r29
/* 804973E8  48 00 00 91 */	bl openInit__9daTbox2_cFv
lbl_804973EC:
/* 804973EC  2C 1F 00 02 */	cmpwi r31, 2
/* 804973F0  41 82 00 6C */	beq lbl_8049745C
/* 804973F4  40 80 00 10 */	bge lbl_80497404
/* 804973F8  2C 1F 00 01 */	cmpwi r31, 1
/* 804973FC  40 80 00 14 */	bge lbl_80497410
/* 80497400  48 00 00 50 */	b lbl_80497450
lbl_80497404:
/* 80497404  2C 1F 00 04 */	cmpwi r31, 4
/* 80497408  40 80 00 48 */	bge lbl_80497450
/* 8049740C  48 00 00 24 */	b lbl_80497430
lbl_80497410:
/* 80497410  80 7D 07 28 */	lwz r3, 0x728(r29)
/* 80497414  4B B7 60 15 */	bl play__14mDoExt_baseAnmFv
/* 80497418  2C 03 00 00 */	cmpwi r3, 0
/* 8049741C  41 82 00 40 */	beq lbl_8049745C
/* 80497420  7F C3 F3 78 */	mr r3, r30
/* 80497424  80 9D 0A C4 */	lwz r4, 0xac4(r29)
/* 80497428  4B BB 0D 55 */	bl cutEnd__16dEvent_manager_cFi
/* 8049742C  48 00 00 30 */	b lbl_8049745C
lbl_80497430:
/* 80497430  80 7D 07 28 */	lwz r3, 0x728(r29)
/* 80497434  4B B7 5F F5 */	bl play__14mDoExt_baseAnmFv
/* 80497438  2C 03 00 00 */	cmpwi r3, 0
/* 8049743C  41 82 00 20 */	beq lbl_8049745C
/* 80497440  7F C3 F3 78 */	mr r3, r30
/* 80497444  80 9D 0A C4 */	lwz r4, 0xac4(r29)
/* 80497448  4B BB 0D 35 */	bl cutEnd__16dEvent_manager_cFi
/* 8049744C  48 00 00 10 */	b lbl_8049745C
lbl_80497450:
/* 80497450  7F C3 F3 78 */	mr r3, r30
/* 80497454  80 9D 0A C4 */	lwz r4, 0xac4(r29)
/* 80497458  4B BB 0D 25 */	bl cutEnd__16dEvent_manager_cFi
lbl_8049745C:
/* 8049745C  38 60 00 00 */	li r3, 0
/* 80497460  39 61 00 30 */	addi r11, r1, 0x30
/* 80497464  4B EC AD C5 */	bl _restgpr_29
/* 80497468  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049746C  7C 08 03 A6 */	mtlr r0
/* 80497470  38 21 00 30 */	addi r1, r1, 0x30
/* 80497474  4E 80 00 20 */	blr 
