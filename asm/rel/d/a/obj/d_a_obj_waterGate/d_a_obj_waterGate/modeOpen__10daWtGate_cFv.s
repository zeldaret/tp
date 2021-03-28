lbl_80D2C02C:
/* 80D2C02C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2C030  7C 08 02 A6 */	mflr r0
/* 80D2C034  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2C038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2C03C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2C040  7C 7E 1B 78 */	mr r30, r3
/* 80D2C044  3C 60 80 D3 */	lis r3, lit_3625@ha
/* 80D2C048  3B E3 C4 6C */	addi r31, r3, lit_3625@l
/* 80D2C04C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80D2C050  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80D2C054  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80D2C058  EC 21 00 2A */	fadds f1, f1, f0
/* 80D2C05C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80D2C060  C0 7E 05 B8 */	lfs f3, 0x5b8(r30)
/* 80D2C064  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80D2C068  4B 54 39 14 */	b cLib_addCalc__FPfffff
/* 80D2C06C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D2C070  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D2C074  40 82 00 5C */	bne lbl_80D2C0D0
/* 80D2C078  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D2C07C  7C 03 07 74 */	extsb r3, r0
/* 80D2C080  4B 30 0F EC */	b dComIfGp_getReverb__Fi
/* 80D2C084  7C 67 1B 78 */	mr r7, r3
/* 80D2C088  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008009A@ha */
/* 80D2C08C  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0008009A@l */
/* 80D2C090  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2C094  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D2C098  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D2C09C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2C0A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D2C0A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2C0A8  38 C0 00 00 */	li r6, 0
/* 80D2C0AC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D2C0B0  FC 40 08 90 */	fmr f2, f1
/* 80D2C0B4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80D2C0B8  FC 80 18 90 */	fmr f4, f3
/* 80D2C0BC  39 00 00 00 */	li r8, 0
/* 80D2C0C0  4B 57 F8 C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2C0C4  7F C3 F3 78 */	mr r3, r30
/* 80D2C0C8  4B FF FE C1 */	bl init_modeWait__10daWtGate_cFv
/* 80D2C0CC  48 00 00 50 */	b lbl_80D2C11C
lbl_80D2C0D0:
/* 80D2C0D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D2C0D4  7C 03 07 74 */	extsb r3, r0
/* 80D2C0D8  4B 30 0F 94 */	b dComIfGp_getReverb__Fi
/* 80D2C0DC  7C 67 1B 78 */	mr r7, r3
/* 80D2C0E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EC@ha */
/* 80D2C0E4  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000800EC@l */
/* 80D2C0E8  90 01 00 08 */	stw r0, 8(r1)
/* 80D2C0EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D2C0F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D2C0F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2C0F8  38 81 00 08 */	addi r4, r1, 8
/* 80D2C0FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2C100  38 C0 00 00 */	li r6, 0
/* 80D2C104  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80D2C108  FC 40 08 90 */	fmr f2, f1
/* 80D2C10C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80D2C110  FC 80 18 90 */	fmr f4, f3
/* 80D2C114  39 00 00 00 */	li r8, 0
/* 80D2C118  4B 58 03 F4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D2C11C:
/* 80D2C11C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2C120  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2C124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2C128  7C 08 03 A6 */	mtlr r0
/* 80D2C12C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2C130  4E 80 00 20 */	blr 
