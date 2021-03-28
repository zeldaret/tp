lbl_80C7386C:
/* 80C7386C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C73870  7C 08 02 A6 */	mflr r0
/* 80C73874  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C73878  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C7387C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C73880  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C73884  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C73888  7C 7E 1B 78 */	mr r30, r3
/* 80C7388C  3C 60 80 C7 */	lis r3, lit_3627@ha
/* 80C73890  3B E3 3C BC */	addi r31, r3, lit_3627@l
/* 80C73894  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C73898  C0 3E 05 B4 */	lfs f1, 0x5b4(r30)
/* 80C7389C  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C738A0  EC 21 00 2A */	fadds f1, f1, f0
/* 80C738A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80C738A8  3C 80 80 C7 */	lis r4, l_HIO@ha
/* 80C738AC  38 84 3D FC */	addi r4, r4, l_HIO@l
/* 80C738B0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C738B4  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 80C738B8  4B 5F C0 C4 */	b cLib_addCalc__FPfffff
/* 80C738BC  FF E0 08 90 */	fmr f31, f1
/* 80C738C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C738C4  7C 03 07 74 */	extsb r3, r0
/* 80C738C8  4B 3B 97 A4 */	b dComIfGp_getReverb__Fi
/* 80C738CC  7C 67 1B 78 */	mr r7, r3
/* 80C738D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F0@ha */
/* 80C738D4  38 03 01 F0 */	addi r0, r3, 0x01F0 /* 0x000801F0@l */
/* 80C738D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C738DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C738E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C738E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C738E8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C738EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C738F0  38 C0 00 00 */	li r6, 0
/* 80C738F4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C738F8  FC 40 08 90 */	fmr f2, f1
/* 80C738FC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C73900  FC 80 18 90 */	fmr f4, f3
/* 80C73904  39 00 00 00 */	li r8, 0
/* 80C73908  4B 63 8C 04 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7390C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C73910  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C73914  40 82 00 58 */	bne lbl_80C7396C
/* 80C73918  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7391C  7C 03 07 74 */	extsb r3, r0
/* 80C73920  4B 3B 97 4C */	b dComIfGp_getReverb__Fi
/* 80C73924  7C 67 1B 78 */	mr r7, r3
/* 80C73928  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801F1@ha */
/* 80C7392C  38 03 01 F1 */	addi r0, r3, 0x01F1 /* 0x000801F1@l */
/* 80C73930  90 01 00 08 */	stw r0, 8(r1)
/* 80C73934  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C73938  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7393C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C73940  38 81 00 08 */	addi r4, r1, 8
/* 80C73944  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C73948  38 C0 00 00 */	li r6, 0
/* 80C7394C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C73950  FC 40 08 90 */	fmr f2, f1
/* 80C73954  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C73958  FC 80 18 90 */	fmr f4, f3
/* 80C7395C  39 00 00 00 */	li r8, 0
/* 80C73960  4B 63 80 24 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C73964  7F C3 F3 78 */	mr r3, r30
/* 80C73968  4B FF FE E9 */	bl init_modeWait__13daLv6Lblock_cFv
lbl_80C7396C:
/* 80C7396C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C73970  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C73974  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C73978  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7397C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C73980  7C 08 03 A6 */	mtlr r0
/* 80C73984  38 21 00 30 */	addi r1, r1, 0x30
/* 80C73988  4E 80 00 20 */	blr 
