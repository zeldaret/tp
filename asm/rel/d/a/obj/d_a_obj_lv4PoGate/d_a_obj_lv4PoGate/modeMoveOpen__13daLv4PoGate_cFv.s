lbl_80C60150:
/* 80C60150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C60154  7C 08 02 A6 */	mflr r0
/* 80C60158  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6015C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C60160  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C60164  7C 7E 1B 78 */	mr r30, r3
/* 80C60168  3C 60 80 C6 */	lis r3, lit_3629@ha
/* 80C6016C  3B E3 08 04 */	addi r31, r3, lit_3629@l
/* 80C60170  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C60174  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80C60178  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80C6017C  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C60180  38 84 09 C4 */	addi r4, r4, l_HIO@l
/* 80C60184  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C60188  FC 80 10 90 */	fmr f4, f2
/* 80C6018C  4B 60 F7 F0 */	b cLib_addCalc__FPfffff
/* 80C60190  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C60194  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C60198  40 82 00 50 */	bne lbl_80C601E8
/* 80C6019C  38 00 00 0C */	li r0, 0xc
/* 80C601A0  90 01 00 08 */	stw r0, 8(r1)
/* 80C601A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C601A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C601AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C601B0  38 81 00 08 */	addi r4, r1, 8
/* 80C601B4  38 A0 00 00 */	li r5, 0
/* 80C601B8  38 C0 00 00 */	li r6, 0
/* 80C601BC  38 E0 00 00 */	li r7, 0
/* 80C601C0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C601C4  FC 40 08 90 */	fmr f2, f1
/* 80C601C8  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80C601CC  FC 80 18 90 */	fmr f4, f3
/* 80C601D0  39 00 00 00 */	li r8, 0
/* 80C601D4  4B 64 B7 B0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C601D8  7F C3 F3 78 */	mr r3, r30
/* 80C601DC  48 00 02 FD */	bl setSe__13daLv4PoGate_cFv
/* 80C601E0  7F C3 F3 78 */	mr r3, r30
/* 80C601E4  4B FF FE AD */	bl init_modeWait__13daLv4PoGate_cFv
lbl_80C601E8:
/* 80C601E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C601EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C601F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C601F4  7C 08 03 A6 */	mtlr r0
/* 80C601F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C601FC  4E 80 00 20 */	blr 
