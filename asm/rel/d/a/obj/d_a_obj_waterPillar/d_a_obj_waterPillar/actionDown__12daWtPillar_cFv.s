lbl_80D2DA78:
/* 80D2DA78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2DA7C  7C 08 02 A6 */	mflr r0
/* 80D2DA80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2DA84  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D2DA88  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D2DA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2DA90  4B 63 47 4C */	b _savegpr_29
/* 80D2DA94  7C 7D 1B 78 */	mr r29, r3
/* 80D2DA98  3C 60 80 D3 */	lis r3, lit_3645@ha
/* 80D2DA9C  3B E3 E7 70 */	addi r31, r3, lit_3645@l
/* 80D2DAA0  3C 60 80 D3 */	lis r3, l_HIO@ha
/* 80D2DAA4  38 63 EB 3C */	addi r3, r3, l_HIO@l
/* 80D2DAA8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80D2DAAC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D2DAB0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80D2DAB4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80D2DAB8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D2DABC  4B 54 2C 84 */	b cLib_chaseF__FPfff
/* 80D2DAC0  38 7D 0A E0 */	addi r3, r29, 0xae0
/* 80D2DAC4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80D2DAC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D2DACC  C0 7D 05 2C */	lfs f3, 0x52c(r29)
/* 80D2DAD0  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80D2DAD4  4B 54 1E A8 */	b cLib_addCalc__FPfffff
/* 80D2DAD8  FF E0 08 90 */	fmr f31, f1
/* 80D2DADC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D2DAE0  7C 03 07 74 */	extsb r3, r0
/* 80D2DAE4  4B 2F F5 88 */	b dComIfGp_getReverb__Fi
/* 80D2DAE8  7C 7E 1B 78 */	mr r30, r3
/* 80D2DAEC  C0 3D 0A E0 */	lfs f1, 0xae0(r29)
/* 80D2DAF0  4B 63 45 BC */	b __cvt_fp2unsigned
/* 80D2DAF4  7C 66 1B 78 */	mr r6, r3
/* 80D2DAF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080186@ha */
/* 80D2DAFC  38 03 01 86 */	addi r0, r3, 0x0186 /* 0x00080186@l */
/* 80D2DB00  90 01 00 08 */	stw r0, 8(r1)
/* 80D2DB04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D2DB08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D2DB0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2DB10  38 81 00 08 */	addi r4, r1, 8
/* 80D2DB14  38 BD 0B 6C */	addi r5, r29, 0xb6c
/* 80D2DB18  7F C7 F3 78 */	mr r7, r30
/* 80D2DB1C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D2DB20  FC 40 08 90 */	fmr f2, f1
/* 80D2DB24  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80D2DB28  FC 80 18 90 */	fmr f4, f3
/* 80D2DB2C  39 00 00 00 */	li r8, 0
/* 80D2DB30  4B 57 E9 DC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2DB34  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2DB38  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80D2DB3C  40 82 00 0C */	bne lbl_80D2DB48
/* 80D2DB40  7F A3 EB 78 */	mr r3, r29
/* 80D2DB44  4B FF F9 69 */	bl actionWaitInit__12daWtPillar_cFv
lbl_80D2DB48:
/* 80D2DB48  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D2DB4C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D2DB50  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2DB54  4B 63 46 D4 */	b _restgpr_29
/* 80D2DB58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2DB5C  7C 08 03 A6 */	mtlr r0
/* 80D2DB60  38 21 00 30 */	addi r1, r1, 0x30
/* 80D2DB64  4E 80 00 20 */	blr 
