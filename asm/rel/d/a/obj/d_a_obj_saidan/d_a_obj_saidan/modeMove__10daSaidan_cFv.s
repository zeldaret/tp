lbl_80CC41BC:
/* 80CC41BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC41C0  7C 08 02 A6 */	mflr r0
/* 80CC41C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC41C8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80CC41CC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80CC41D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC41D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC41D8  7C 7E 1B 78 */	mr r30, r3
/* 80CC41DC  3C 60 80 CC */	lis r3, lit_3625@ha
/* 80CC41E0  3B E3 45 24 */	addi r31, r3, lit_3625@l
/* 80CC41E4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CC41E8  C0 3E 05 B0 */	lfs f1, 0x5b0(r30)
/* 80CC41EC  3C 80 80 CC */	lis r4, l_HIO@ha
/* 80CC41F0  38 84 46 5C */	addi r4, r4, l_HIO@l
/* 80CC41F4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CC41F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CC41FC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80CC4200  C0 64 00 04 */	lfs f3, 4(r4)
/* 80CC4204  C0 9F 00 0C */	lfs f4, 0xc(r31)
/* 80CC4208  4B 5A B7 74 */	b cLib_addCalc__FPfffff
/* 80CC420C  FF E0 08 90 */	fmr f31, f1
/* 80CC4210  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC4214  7C 03 07 74 */	extsb r3, r0
/* 80CC4218  4B 36 8E 54 */	b dComIfGp_getReverb__Fi
/* 80CC421C  7C 67 1B 78 */	mr r7, r3
/* 80CC4220  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010D@ha */
/* 80CC4224  38 03 01 0D */	addi r0, r3, 0x010D /* 0x0008010D@l */
/* 80CC4228  90 01 00 08 */	stw r0, 8(r1)
/* 80CC422C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC4230  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC4234  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC4238  38 81 00 08 */	addi r4, r1, 8
/* 80CC423C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC4240  38 C0 00 00 */	li r6, 0
/* 80CC4244  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CC4248  FC 40 08 90 */	fmr f2, f1
/* 80CC424C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80CC4250  FC 80 18 90 */	fmr f4, f3
/* 80CC4254  39 00 00 00 */	li r8, 0
/* 80CC4258  4B 5E 82 B4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC425C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CC4260  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CC4264  40 82 00 0C */	bne lbl_80CC4270
/* 80CC4268  7F C3 F3 78 */	mr r3, r30
/* 80CC426C  48 00 00 25 */	bl init_modeMoveEnd__10daSaidan_cFv
lbl_80CC4270:
/* 80CC4270  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80CC4274  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80CC4278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC427C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC4280  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC4284  7C 08 03 A6 */	mtlr r0
/* 80CC4288  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC428C  4E 80 00 20 */	blr 
