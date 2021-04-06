lbl_80D2C150:
/* 80D2C150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2C154  7C 08 02 A6 */	mflr r0
/* 80D2C158  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2C15C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2C160  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2C164  7C 7E 1B 78 */	mr r30, r3
/* 80D2C168  3C 60 80 D3 */	lis r3, lit_3625@ha /* 0x80D2C46C@ha */
/* 80D2C16C  3B E3 C4 6C */	addi r31, r3, lit_3625@l /* 0x80D2C46C@l */
/* 80D2C170  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80D2C174  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80D2C178  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80D2C17C  C0 7E 05 B8 */	lfs f3, 0x5b8(r30)
/* 80D2C180  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80D2C184  4B 54 37 F9 */	bl cLib_addCalc__FPfffff
/* 80D2C188  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D2C18C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D2C190  40 82 00 5C */	bne lbl_80D2C1EC
/* 80D2C194  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D2C198  7C 03 07 74 */	extsb r3, r0
/* 80D2C19C  4B 30 0E D1 */	bl dComIfGp_getReverb__Fi
/* 80D2C1A0  7C 67 1B 78 */	mr r7, r3
/* 80D2C1A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009A@ha */
/* 80D2C1A8  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0008009A@l */
/* 80D2C1AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2C1B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2C1B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2C1B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2C1BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80D2C1C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2C1C4  38 C0 00 00 */	li r6, 0
/* 80D2C1C8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D2C1CC  FC 40 08 90 */	fmr f2, f1
/* 80D2C1D0  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80D2C1D4  FC 80 18 90 */	fmr f4, f3
/* 80D2C1D8  39 00 00 00 */	li r8, 0
/* 80D2C1DC  4B 57 F7 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2C1E0  7F C3 F3 78 */	mr r3, r30
/* 80D2C1E4  4B FF FD A5 */	bl init_modeWait__10daWtGate_cFv
/* 80D2C1E8  48 00 00 50 */	b lbl_80D2C238
lbl_80D2C1EC:
/* 80D2C1EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D2C1F0  7C 03 07 74 */	extsb r3, r0
/* 80D2C1F4  4B 30 0E 79 */	bl dComIfGp_getReverb__Fi
/* 80D2C1F8  7C 67 1B 78 */	mr r7, r3
/* 80D2C1FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EC@ha */
/* 80D2C200  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000800EC@l */
/* 80D2C204  90 01 00 08 */	stw r0, 8(r1)
/* 80D2C208  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2C20C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2C210  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2C214  38 81 00 08 */	addi r4, r1, 8
/* 80D2C218  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2C21C  38 C0 00 00 */	li r6, 0
/* 80D2C220  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D2C224  FC 40 08 90 */	fmr f2, f1
/* 80D2C228  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80D2C22C  FC 80 18 90 */	fmr f4, f3
/* 80D2C230  39 00 00 00 */	li r8, 0
/* 80D2C234  4B 58 02 D9 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D2C238:
/* 80D2C238  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2C23C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2C240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2C244  7C 08 03 A6 */	mtlr r0
/* 80D2C248  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2C24C  4E 80 00 20 */	blr 
