lbl_80C73998:
/* 80C73998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C7399C  7C 08 02 A6 */	mflr r0
/* 80C739A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C739A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C739A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C739AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C739B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C739B4  7C 7E 1B 78 */	mr r30, r3
/* 80C739B8  3C 60 80 C7 */	lis r3, lit_3627@ha
/* 80C739BC  3B E3 3C BC */	addi r31, r3, lit_3627@l
/* 80C739C0  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C739C4  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80C739C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C739CC  3C 80 80 C7 */	lis r4, l_HIO@ha
/* 80C739D0  38 84 3D FC */	addi r4, r4, l_HIO@l
/* 80C739D4  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C739D8  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 80C739DC  4B 5F BF A0 */	b cLib_addCalc__FPfffff
/* 80C739E0  FF E0 08 90 */	fmr f31, f1
/* 80C739E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C739E8  7C 03 07 74 */	extsb r3, r0
/* 80C739EC  4B 3B 96 80 */	b dComIfGp_getReverb__Fi
/* 80C739F0  7C 67 1B 78 */	mr r7, r3
/* 80C739F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F2@ha */
/* 80C739F8  38 03 01 F2 */	addi r0, r3, 0x01F2 /* 0x000801F2@l */
/* 80C739FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C73A00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C73A04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C73A08  80 63 00 00 */	lwz r3, 0(r3)
/* 80C73A0C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C73A10  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C73A14  38 C0 00 00 */	li r6, 0
/* 80C73A18  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C73A1C  FC 40 08 90 */	fmr f2, f1
/* 80C73A20  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C73A24  FC 80 18 90 */	fmr f4, f3
/* 80C73A28  39 00 00 00 */	li r8, 0
/* 80C73A2C  4B 63 8A E0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C73A30  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C73A34  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C73A38  40 82 00 58 */	bne lbl_80C73A90
/* 80C73A3C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C73A40  7C 03 07 74 */	extsb r3, r0
/* 80C73A44  4B 3B 96 28 */	b dComIfGp_getReverb__Fi
/* 80C73A48  7C 67 1B 78 */	mr r7, r3
/* 80C73A4C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F3@ha */
/* 80C73A50  38 03 01 F3 */	addi r0, r3, 0x01F3 /* 0x000801F3@l */
/* 80C73A54  90 01 00 08 */	stw r0, 8(r1)
/* 80C73A58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C73A5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C73A60  80 63 00 00 */	lwz r3, 0(r3)
/* 80C73A64  38 81 00 08 */	addi r4, r1, 8
/* 80C73A68  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C73A6C  38 C0 00 00 */	li r6, 0
/* 80C73A70  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C73A74  FC 40 08 90 */	fmr f2, f1
/* 80C73A78  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C73A7C  FC 80 18 90 */	fmr f4, f3
/* 80C73A80  39 00 00 00 */	li r8, 0
/* 80C73A84  4B 63 7F 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C73A88  7F C3 F3 78 */	mr r3, r30
/* 80C73A8C  4B FF FD C5 */	bl init_modeWait__13daLv6Lblock_cFv
lbl_80C73A90:
/* 80C73A90  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C73A94  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C73A98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C73A9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C73AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C73AA4  7C 08 03 A6 */	mtlr r0
/* 80C73AA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C73AAC  4E 80 00 20 */	blr 
