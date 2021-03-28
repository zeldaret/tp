lbl_80BFDD20:
/* 80BFDD20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFDD24  7C 08 02 A6 */	mflr r0
/* 80BFDD28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFDD2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BFDD30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BFDD34  7C 7E 1B 78 */	mr r30, r3
/* 80BFDD38  3C 60 80 C0 */	lis r3, lit_3627@ha
/* 80BFDD3C  3B E3 DF E8 */	addi r31, r3, lit_3627@l
/* 80BFDD40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BFDD44  7C 03 07 74 */	extsb r3, r0
/* 80BFDD48  4B 42 F3 24 */	b dComIfGp_getReverb__Fi
/* 80BFDD4C  7C 67 1B 78 */	mr r7, r3
/* 80BFDD50  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008012C@ha */
/* 80BFDD54  38 03 01 2C */	addi r0, r3, 0x012C /* 0x0008012C@l */
/* 80BFDD58  90 01 00 08 */	stw r0, 8(r1)
/* 80BFDD5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BFDD60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BFDD64  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFDD68  38 81 00 08 */	addi r4, r1, 8
/* 80BFDD6C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFDD70  38 C0 00 00 */	li r6, 0
/* 80BFDD74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BFDD78  FC 40 08 90 */	fmr f2, f1
/* 80BFDD7C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80BFDD80  FC 80 18 90 */	fmr f4, f3
/* 80BFDD84  39 00 00 00 */	li r8, 0
/* 80BFDD88  4B 6A DB FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BFDD8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BFDD90  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BFDD94  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80BFDD98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFDD9C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BFDDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFDDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFDDA8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BFDDAC  3C 80 80 C0 */	lis r4, l_HIO@ha
/* 80BFDDB0  38 84 E1 1C */	addi r4, r4, l_HIO@l
/* 80BFDDB4  88 84 00 08 */	lbz r4, 8(r4)
/* 80BFDDB8  38 A0 00 0F */	li r5, 0xf
/* 80BFDDBC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BFDDC0  4B 47 1C 64 */	b StartShock__12dVibration_cFii4cXyz
/* 80BFDDC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFDDC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BFDDCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFDDD0  7C 08 03 A6 */	mtlr r0
/* 80BFDDD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFDDD8  4E 80 00 20 */	blr 
