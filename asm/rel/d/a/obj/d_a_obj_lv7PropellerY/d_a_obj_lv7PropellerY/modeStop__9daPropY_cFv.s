lbl_80C85DD0:
/* 80C85DD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C85DD4  7C 08 02 A6 */	mflr r0
/* 80C85DD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C85DDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C85DE0  4B 6D C3 F9 */	bl _savegpr_28
/* 80C85DE4  7C 7E 1B 78 */	mr r30, r3
/* 80C85DE8  3C 60 80 C8 */	lis r3, lit_3650@ha /* 0x80C86130@ha */
/* 80C85DEC  3B E3 61 30 */	addi r31, r3, lit_3650@l /* 0x80C86130@l */
/* 80C85DF0  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80C85DF4  28 00 00 00 */	cmplwi r0, 0
/* 80C85DF8  40 82 00 30 */	bne lbl_80C85E28
/* 80C85DFC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80C85E00  A8 9E 05 B6 */	lha r4, 0x5b6(r30)
/* 80C85E04  38 A0 00 10 */	li r5, 0x10
/* 80C85E08  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C85E0C  FC 00 00 1E */	fctiwz f0, f0
/* 80C85E10  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C85E14  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80C85E18  38 E0 00 12 */	li r7, 0x12
/* 80C85E1C  4B 5E A7 25 */	bl cLib_addCalcAngleS__FPsssss
/* 80C85E20  7C 7D 1B 78 */	mr r29, r3
/* 80C85E24  48 00 00 34 */	b lbl_80C85E58
lbl_80C85E28:
/* 80C85E28  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80C85E2C  A8 9E 05 B6 */	lha r4, 0x5b6(r30)
/* 80C85E30  38 A0 00 01 */	li r5, 1
/* 80C85E34  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C85E38  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C85E3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C85E40  FC 00 00 1E */	fctiwz f0, f0
/* 80C85E44  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C85E48  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80C85E4C  38 E0 00 01 */	li r7, 1
/* 80C85E50  4B 5E A6 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 80C85E54  7C 7D 1B 78 */	mr r29, r3
lbl_80C85E58:
/* 80C85E58  7F A0 07 34 */	extsh r0, r29
/* 80C85E5C  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80C85E60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C85E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C85E68  3C 00 43 30 */	lis r0, 0x4330
/* 80C85E6C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C85E70  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C85E74  FC 00 08 28 */	fsub f0, f0, f1
/* 80C85E78  FC 00 02 10 */	fabs f0, f0
/* 80C85E7C  C0 5E 05 C0 */	lfs f2, 0x5c0(r30)
/* 80C85E80  FC 20 00 18 */	frsp f1, f0
/* 80C85E84  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80C85E88  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C85E8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C85E90  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80C85E94  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C85E98  7C 03 07 74 */	extsb r3, r0
/* 80C85E9C  4B 3A 71 D1 */	bl dComIfGp_getReverb__Fi
/* 80C85EA0  7C 7C 1B 78 */	mr r28, r3
/* 80C85EA4  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 80C85EA8  4B 6D C2 05 */	bl __cvt_fp2unsigned
/* 80C85EAC  7C 66 1B 78 */	mr r6, r3
/* 80C85EB0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027E@ha */
/* 80C85EB4  38 03 02 7E */	addi r0, r3, 0x027E /* 0x0008027E@l */
/* 80C85EB8  90 01 00 08 */	stw r0, 8(r1)
/* 80C85EBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C85EC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C85EC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C85EC8  38 81 00 08 */	addi r4, r1, 8
/* 80C85ECC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C85ED0  7F 87 E3 78 */	mr r7, r28
/* 80C85ED4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C85ED8  FC 40 08 90 */	fmr f2, f1
/* 80C85EDC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80C85EE0  FC 80 18 90 */	fmr f4, f3
/* 80C85EE4  39 00 00 00 */	li r8, 0
/* 80C85EE8  4B 62 66 25 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C85EEC  7F A0 07 35 */	extsh. r0, r29
/* 80C85EF0  40 82 00 0C */	bne lbl_80C85EFC
/* 80C85EF4  7F C3 F3 78 */	mr r3, r30
/* 80C85EF8  4B FF FA BD */	bl init_modeMoveWait__9daPropY_cFv
lbl_80C85EFC:
/* 80C85EFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C85F00  4B 6D C3 25 */	bl _restgpr_28
/* 80C85F04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C85F08  7C 08 03 A6 */	mtlr r0
/* 80C85F0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C85F10  4E 80 00 20 */	blr 
