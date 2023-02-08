lbl_80C600A0:
/* 80C600A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C600A4  7C 08 02 A6 */	mflr r0
/* 80C600A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C600AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C600B0  7C 7F 1B 78 */	mr r31, r3
/* 80C600B4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C600B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C600BC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C600C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C600C4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C600C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C600CC  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80C600D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C600D4  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C600D8  7C 03 07 74 */	extsb r3, r0
/* 80C600DC  4B 3C CF 91 */	bl dComIfGp_getReverb__Fi
/* 80C600E0  7C 67 1B 78 */	mr r7, r3
/* 80C600E4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B4@ha */
/* 80C600E8  38 03 01 B4 */	addi r0, r3, 0x01B4 /* 0x000801B4@l */
/* 80C600EC  90 01 00 08 */	stw r0, 8(r1)
/* 80C600F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C600F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C600F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C600FC  38 81 00 08 */	addi r4, r1, 8
/* 80C60100  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C60104  38 C0 00 00 */	li r6, 0
/* 80C60108  3D 00 80 C6 */	lis r8, lit_3772@ha /* 0x80C60824@ha */
/* 80C6010C  C0 28 08 24 */	lfs f1, lit_3772@l(r8)  /* 0x80C60824@l */
/* 80C60110  FC 40 08 90 */	fmr f2, f1
/* 80C60114  3D 00 80 C6 */	lis r8, lit_3773@ha /* 0x80C60828@ha */
/* 80C60118  C0 68 08 28 */	lfs f3, lit_3773@l(r8)  /* 0x80C60828@l */
/* 80C6011C  FC 80 18 90 */	fmr f4, f3
/* 80C60120  39 00 00 00 */	li r8, 0
/* 80C60124  4B 64 B8 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C60128  7F E3 FB 78 */	mr r3, r31
/* 80C6012C  38 80 00 00 */	li r4, 0
/* 80C60130  48 00 04 05 */	bl setEffect__13daLv4PoGate_cFi
/* 80C60134  38 00 00 01 */	li r0, 1
/* 80C60138  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80C6013C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C60140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C60144  7C 08 03 A6 */	mtlr r0
/* 80C60148  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6014C  4E 80 00 20 */	blr 
