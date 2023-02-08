lbl_80671720:
/* 80671720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80671724  7C 08 02 A6 */	mflr r0
/* 80671728  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067172C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80671730  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80671734  7C 7E 1B 78 */	mr r30, r3
/* 80671738  4B FF F5 55 */	bl getCloseAnm__11daBdoorL5_cFv
/* 8067173C  7C 7F 1B 78 */	mr r31, r3
/* 80671740  7F C3 F3 78 */	mr r3, r30
/* 80671744  4B FF F5 31 */	bl getAnmArcName__11daBdoorL5_cFv
/* 80671748  7F E4 FB 78 */	mr r4, r31
/* 8067174C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671750  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671754  3C A5 00 02 */	addis r5, r5, 2
/* 80671758  38 C0 00 80 */	li r6, 0x80
/* 8067175C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80671760  4B 9C AB 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80671764  7C 64 1B 78 */	mr r4, r3
/* 80671768  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 8067176C  38 A0 00 01 */	li r5, 1
/* 80671770  38 C0 00 00 */	li r6, 0
/* 80671774  3C E0 80 67 */	lis r7, lit_3757@ha /* 0x8067250C@ha */
/* 80671778  C0 27 25 0C */	lfs f1, lit_3757@l(r7)  /* 0x8067250C@l */
/* 8067177C  38 E0 00 00 */	li r7, 0
/* 80671780  39 00 FF FF */	li r8, -1
/* 80671784  39 20 00 01 */	li r9, 1
/* 80671788  4B 99 C0 55 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8067178C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80671790  7C 03 07 74 */	extsb r3, r0
/* 80671794  4B 9B B8 D9 */	bl dComIfGp_getReverb__Fi
/* 80671798  7C 67 1B 78 */	mr r7, r3
/* 8067179C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080192@ha */
/* 806717A0  38 03 01 92 */	addi r0, r3, 0x0192 /* 0x00080192@l */
/* 806717A4  90 01 00 08 */	stw r0, 8(r1)
/* 806717A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806717AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806717B0  80 63 00 00 */	lwz r3, 0(r3)
/* 806717B4  38 81 00 08 */	addi r4, r1, 8
/* 806717B8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806717BC  38 C0 00 00 */	li r6, 0
/* 806717C0  3D 00 80 67 */	lis r8, lit_3757@ha /* 0x8067250C@ha */
/* 806717C4  C0 28 25 0C */	lfs f1, lit_3757@l(r8)  /* 0x8067250C@l */
/* 806717C8  FC 40 08 90 */	fmr f2, f1
/* 806717CC  3D 00 80 67 */	lis r8, lit_3981@ha /* 0x80672518@ha */
/* 806717D0  C0 68 25 18 */	lfs f3, lit_3981@l(r8)  /* 0x80672518@l */
/* 806717D4  FC 80 18 90 */	fmr f4, f3
/* 806717D8  39 00 00 00 */	li r8, 0
/* 806717DC  4B C3 A1 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806717E0  38 60 00 01 */	li r3, 1
/* 806717E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806717E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806717EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806717F0  7C 08 03 A6 */	mtlr r0
/* 806717F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806717F8  4E 80 00 20 */	blr 
