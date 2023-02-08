lbl_80C7624C:
/* 80C7624C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C76250  7C 08 02 A6 */	mflr r0
/* 80C76254  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C76258  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C7625C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C76260  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C76264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C76268  7C 7E 1B 78 */	mr r30, r3
/* 80C7626C  3C 60 80 C7 */	lis r3, lit_3627@ha /* 0x80C76630@ha */
/* 80C76270  3B E3 66 30 */	addi r31, r3, lit_3627@l /* 0x80C76630@l */
/* 80C76274  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C76278  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C767E4@ha */
/* 80C7627C  38 84 67 E4 */	addi r4, r4, l_HIO@l /* 0x80C767E4@l */
/* 80C76280  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C76284  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80C76288  4B 5F A4 B9 */	bl cLib_chaseF__FPfff
/* 80C7628C  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 80C76290  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80C76294  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C76298  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C7629C  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 80C762A0  4B 5F 96 DD */	bl cLib_addCalc__FPfffff
/* 80C762A4  FF E0 08 90 */	fmr f31, f1
/* 80C762A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C762AC  7C 03 07 74 */	extsb r3, r0
/* 80C762B0  4B 3B 6D BD */	bl dComIfGp_getReverb__Fi
/* 80C762B4  7C 67 1B 78 */	mr r7, r3
/* 80C762B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801EF@ha */
/* 80C762BC  38 03 01 EF */	addi r0, r3, 0x01EF /* 0x000801EF@l */
/* 80C762C0  90 01 00 08 */	stw r0, 8(r1)
/* 80C762C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C762C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C762CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C762D0  38 81 00 08 */	addi r4, r1, 8
/* 80C762D4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C762D8  38 C0 00 00 */	li r6, 0
/* 80C762DC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C762E0  FC 40 08 90 */	fmr f2, f1
/* 80C762E4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80C762E8  FC 80 18 90 */	fmr f4, f3
/* 80C762EC  39 00 00 00 */	li r8, 0
/* 80C762F0  4B 63 62 1D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C762F4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C762F8  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C762FC  40 82 00 0C */	bne lbl_80C76308
/* 80C76300  7F C3 F3 78 */	mr r3, r30
/* 80C76304  4B FF FC 61 */	bl init_modeWait__13daLv6SzGate_cFv
lbl_80C76308:
/* 80C76308  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C7630C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C76310  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C76314  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C76318  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C7631C  7C 08 03 A6 */	mtlr r0
/* 80C76320  38 21 00 30 */	addi r1, r1, 0x30
/* 80C76324  4E 80 00 20 */	blr 
