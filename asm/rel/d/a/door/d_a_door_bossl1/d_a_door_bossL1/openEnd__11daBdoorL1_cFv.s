lbl_804E3794:
/* 804E3794  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3798  7C 08 02 A6 */	mflr r0
/* 804E379C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E37A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E37A4  7C 7F 1B 78 */	mr r31, r3
/* 804E37A8  4B FF E5 F1 */	bl getNowLevel__Fv
/* 804E37AC  2C 03 00 05 */	cmpwi r3, 5
/* 804E37B0  41 82 00 20 */	beq lbl_804E37D0
/* 804E37B4  40 80 00 10 */	bge lbl_804E37C4
/* 804E37B8  2C 03 00 04 */	cmpwi r3, 4
/* 804E37BC  40 80 00 68 */	bge lbl_804E3824
/* 804E37C0  48 00 00 10 */	b lbl_804E37D0
lbl_804E37C4:
/* 804E37C4  2C 03 00 0A */	cmpwi r3, 0xa
/* 804E37C8  40 80 00 08 */	bge lbl_804E37D0
/* 804E37CC  48 00 00 58 */	b lbl_804E3824
lbl_804E37D0:
/* 804E37D0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E37D4  7C 03 07 74 */	extsb r3, r0
/* 804E37D8  4B B4 98 94 */	b dComIfGp_getReverb__Fi
/* 804E37DC  7C 67 1B 78 */	mr r7, r3
/* 804E37E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 804E37E4  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 804E37E8  90 01 00 08 */	stw r0, 8(r1)
/* 804E37EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E37F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E37F4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E37F8  38 81 00 08 */	addi r4, r1, 8
/* 804E37FC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804E3800  38 C0 00 00 */	li r6, 0
/* 804E3804  3D 00 80 4E */	lis r8, lit_3861@ha
/* 804E3808  C0 28 4A 50 */	lfs f1, lit_3861@l(r8)
/* 804E380C  FC 40 08 90 */	fmr f2, f1
/* 804E3810  3D 00 80 4E */	lis r8, lit_4238@ha
/* 804E3814  C0 68 4A 68 */	lfs f3, lit_4238@l(r8)
/* 804E3818  FC 80 18 90 */	fmr f4, f3
/* 804E381C  39 00 00 00 */	li r8, 0
/* 804E3820  4B DC 81 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804E3824:
/* 804E3824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E3828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E382C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E3830  38 80 00 1F */	li r4, 0x1f
/* 804E3834  4B B8 C5 60 */	b StopQuake__12dVibration_cFi
/* 804E3838  38 60 00 01 */	li r3, 1
/* 804E383C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E3840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3844  7C 08 03 A6 */	mtlr r0
/* 804E3848  38 21 00 20 */	addi r1, r1, 0x20
/* 804E384C  4E 80 00 20 */	blr 
