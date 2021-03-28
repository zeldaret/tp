lbl_80671670:
/* 80671670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80671674  7C 08 02 A6 */	mflr r0
/* 80671678  90 01 00 24 */	stw r0, 0x24(r1)
/* 8067167C  39 61 00 20 */	addi r11, r1, 0x20
/* 80671680  4B CF 0B 5C */	b _savegpr_29
/* 80671684  7C 7D 1B 78 */	mr r29, r3
/* 80671688  3C 60 80 67 */	lis r3, l_door_open_demo@ha
/* 8067168C  3B E3 24 C8 */	addi r31, r3, l_door_open_demo@l
/* 80671690  80 7D 05 84 */	lwz r3, 0x584(r29)
/* 80671694  4B 99 BD 94 */	b play__14mDoExt_baseAnmFv
/* 80671698  7C 7E 1B 78 */	mr r30, r3
/* 8067169C  80 7D 05 84 */	lwz r3, 0x584(r29)
/* 806716A0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806716A4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806716A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806716AC  40 82 00 50 */	bne lbl_806716FC
/* 806716B0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806716B4  7C 03 07 74 */	extsb r3, r0
/* 806716B8  4B 9B B9 B4 */	b dComIfGp_getReverb__Fi
/* 806716BC  7C 67 1B 78 */	mr r7, r3
/* 806716C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080191@ha */
/* 806716C4  38 03 01 91 */	addi r0, r3, 0x0191 /* 0x00080191@l */
/* 806716C8  90 01 00 08 */	stw r0, 8(r1)
/* 806716CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806716D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806716D4  80 63 00 00 */	lwz r3, 0(r3)
/* 806716D8  38 81 00 08 */	addi r4, r1, 8
/* 806716DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806716E0  38 C0 00 00 */	li r6, 0
/* 806716E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806716E8  FC 40 08 90 */	fmr f2, f1
/* 806716EC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 806716F0  FC 80 18 90 */	fmr f4, f3
/* 806716F4  39 00 00 00 */	li r8, 0
/* 806716F8  4B C3 A2 8C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806716FC:
/* 806716FC  7F C3 F3 78 */	mr r3, r30
/* 80671700  39 61 00 20 */	addi r11, r1, 0x20
/* 80671704  4B CF 0B 24 */	b _restgpr_29
/* 80671708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067170C  7C 08 03 A6 */	mtlr r0
/* 80671710  38 21 00 20 */	addi r1, r1, 0x20
/* 80671714  4E 80 00 20 */	blr 
