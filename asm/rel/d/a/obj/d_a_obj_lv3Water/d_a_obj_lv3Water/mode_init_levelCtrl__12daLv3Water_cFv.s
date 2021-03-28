lbl_80C59754:
/* 80C59754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C59758  7C 08 02 A6 */	mflr r0
/* 80C5975C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C59760  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C59764  7C 7F 1B 78 */	mr r31, r3
/* 80C59768  38 00 00 00 */	li r0, 0
/* 80C5976C  98 03 06 00 */	stb r0, 0x600(r3)
/* 80C59770  3C 60 80 C6 */	lis r3, l_HIO@ha
/* 80C59774  38 63 A3 14 */	addi r3, r3, l_HIO@l
/* 80C59778  88 03 00 04 */	lbz r0, 4(r3)
/* 80C5977C  98 1F 06 04 */	stb r0, 0x604(r31)
/* 80C59780  88 1F 05 F9 */	lbz r0, 0x5f9(r31)
/* 80C59784  28 00 00 09 */	cmplwi r0, 9
/* 80C59788  40 82 00 58 */	bne lbl_80C597E0
/* 80C5978C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C59790  7C 03 07 74 */	extsb r3, r0
/* 80C59794  4B 3D 38 D8 */	b dComIfGp_getReverb__Fi
/* 80C59798  7C 67 1B 78 */	mr r7, r3
/* 80C5979C  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003C@ha */
/* 80C597A0  38 03 00 3C */	addi r0, r3, 0x003C /* 0x0009003C@l */
/* 80C597A4  90 01 00 08 */	stw r0, 8(r1)
/* 80C597A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C597AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C597B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C597B4  38 81 00 08 */	addi r4, r1, 8
/* 80C597B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C597BC  38 C0 00 00 */	li r6, 0
/* 80C597C0  3D 00 80 C6 */	lis r8, lit_3737@ha
/* 80C597C4  C0 28 A0 14 */	lfs f1, lit_3737@l(r8)
/* 80C597C8  FC 40 08 90 */	fmr f2, f1
/* 80C597CC  3D 00 80 C6 */	lis r8, lit_4068@ha
/* 80C597D0  C0 68 A0 50 */	lfs f3, lit_4068@l(r8)
/* 80C597D4  FC 80 18 90 */	fmr f4, f3
/* 80C597D8  39 00 00 00 */	li r8, 0
/* 80C597DC  4B 65 21 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C597E0:
/* 80C597E0  38 00 00 01 */	li r0, 1
/* 80C597E4  98 1F 05 F8 */	stb r0, 0x5f8(r31)
/* 80C597E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C597EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C597F0  7C 08 03 A6 */	mtlr r0
/* 80C597F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C597F8  4E 80 00 20 */	blr 
