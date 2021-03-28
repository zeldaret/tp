lbl_804622AC:
/* 804622AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804622B0  7C 08 02 A6 */	mflr r0
/* 804622B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804622B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804622BC  7C 7F 1B 78 */	mr r31, r3
/* 804622C0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 804622C4  7C 03 07 74 */	extsb r3, r0
/* 804622C8  4B BC AD A4 */	b dComIfGp_getReverb__Fi
/* 804622CC  7C 67 1B 78 */	mr r7, r3
/* 804622D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B4@ha */
/* 804622D4  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000800B4@l */
/* 804622D8  90 01 00 08 */	stw r0, 8(r1)
/* 804622DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804622E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804622E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804622E8  38 81 00 08 */	addi r4, r1, 8
/* 804622EC  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 804622F0  38 C0 00 00 */	li r6, 0
/* 804622F4  3D 00 80 46 */	lis r8, lit_4124@ha
/* 804622F8  C0 28 68 24 */	lfs f1, lit_4124@l(r8)
/* 804622FC  FC 40 08 90 */	fmr f2, f1
/* 80462300  3D 00 80 46 */	lis r8, lit_4609@ha
/* 80462304  C0 68 68 70 */	lfs f3, lit_4609@l(r8)
/* 80462308  FC 80 18 90 */	fmr f4, f3
/* 8046230C  39 00 00 00 */	li r8, 0
/* 80462310  4B E4 96 74 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80462314  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80462318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046231C  7C 08 03 A6 */	mtlr r0
/* 80462320  38 21 00 20 */	addi r1, r1, 0x20
/* 80462324  4E 80 00 20 */	blr 
