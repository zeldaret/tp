lbl_8045FA98:
/* 8045FA98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FA9C  7C 08 02 A6 */	mflr r0
/* 8045FAA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045FAA8  4B F0 27 30 */	b _savegpr_28
/* 8045FAAC  7C 7E 1B 78 */	mr r30, r3
/* 8045FAB0  7C 9C 23 78 */	mr r28, r4
/* 8045FAB4  3C 80 80 46 */	lis r4, lit_3876@ha
/* 8045FAB8  3B E4 06 68 */	addi r31, r4, lit_3876@l
/* 8045FABC  57 80 10 3A */	slwi r0, r28, 2
/* 8045FAC0  3C 80 80 46 */	lis r4, bck_table@ha
/* 8045FAC4  38 84 09 68 */	addi r4, r4, bck_table@l
/* 8045FAC8  7F A4 00 2E */	lwzx r29, r4, r0
/* 8045FACC  4B FF ED BD */	bl getAlwaysArcName__10daKnob20_cFv
/* 8045FAD0  7F A4 EB 78 */	mr r4, r29
/* 8045FAD4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8045FAD8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8045FADC  3C A5 00 02 */	addis r5, r5, 2
/* 8045FAE0  38 C0 00 80 */	li r6, 0x80
/* 8045FAE4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8045FAE8  4B BD C8 94 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045FAEC  7C 64 1B 78 */	mr r4, r3
/* 8045FAF0  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8045FAF4  38 A0 00 01 */	li r5, 1
/* 8045FAF8  38 C0 00 00 */	li r6, 0
/* 8045FAFC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8045FB00  38 E0 00 00 */	li r7, 0
/* 8045FB04  39 00 FF FF */	li r8, -1
/* 8045FB08  39 20 00 01 */	li r9, 1
/* 8045FB0C  4B BA DC D0 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8045FB10  A0 1E 06 0C */	lhz r0, 0x60c(r30)
/* 8045FB14  60 00 00 01 */	ori r0, r0, 1
/* 8045FB18  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 8045FB1C  2C 1C 00 02 */	cmpwi r28, 2
/* 8045FB20  41 80 00 5C */	blt lbl_8045FB7C
/* 8045FB24  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8045FB28  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 8045FB2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8045FB30  7C 03 07 74 */	extsb r3, r0
/* 8045FB34  4B BC D5 38 */	b dComIfGp_getReverb__Fi
/* 8045FB38  7C 67 1B 78 */	mr r7, r3
/* 8045FB3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080025@ha */
/* 8045FB40  38 03 00 25 */	addi r0, r3, 0x0025 /* 0x00080025@l */
/* 8045FB44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8045FB48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8045FB4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8045FB50  80 63 00 00 */	lwz r3, 0(r3)
/* 8045FB54  38 81 00 0C */	addi r4, r1, 0xc
/* 8045FB58  38 BE 05 38 */	addi r5, r30, 0x538
/* 8045FB5C  38 C0 00 00 */	li r6, 0
/* 8045FB60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8045FB64  FC 40 08 90 */	fmr f2, f1
/* 8045FB68  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8045FB6C  FC 80 18 90 */	fmr f4, f3
/* 8045FB70  39 00 00 00 */	li r8, 0
/* 8045FB74  4B E4 BE 10 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8045FB78  48 00 00 64 */	b lbl_8045FBDC
lbl_8045FB7C:
/* 8045FB7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045FB80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045FB84  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8045FB88  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 8045FB8C  4B C1 46 C4 */	b Release__4cBgSFP9dBgW_Base
/* 8045FB90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8045FB94  7C 03 07 74 */	extsb r3, r0
/* 8045FB98  4B BC D4 D4 */	b dComIfGp_getReverb__Fi
/* 8045FB9C  7C 67 1B 78 */	mr r7, r3
/* 8045FBA0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080024@ha */
/* 8045FBA4  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00080024@l */
/* 8045FBA8  90 01 00 08 */	stw r0, 8(r1)
/* 8045FBAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8045FBB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8045FBB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8045FBB8  38 81 00 08 */	addi r4, r1, 8
/* 8045FBBC  38 BE 05 38 */	addi r5, r30, 0x538
/* 8045FBC0  38 C0 00 00 */	li r6, 0
/* 8045FBC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8045FBC8  FC 40 08 90 */	fmr f2, f1
/* 8045FBCC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8045FBD0  FC 80 18 90 */	fmr f4, f3
/* 8045FBD4  39 00 00 00 */	li r8, 0
/* 8045FBD8  4B E4 BD AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8045FBDC:
/* 8045FBDC  38 60 00 01 */	li r3, 1
/* 8045FBE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8045FBE4  4B F0 26 40 */	b _restgpr_28
/* 8045FBE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FBEC  7C 08 03 A6 */	mtlr r0
/* 8045FBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FBF4  4E 80 00 20 */	blr 
