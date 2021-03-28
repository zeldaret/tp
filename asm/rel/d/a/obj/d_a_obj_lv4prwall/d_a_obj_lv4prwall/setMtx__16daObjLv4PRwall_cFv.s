lbl_80C68DD8:
/* 80C68DD8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C68DDC  7C 08 02 A6 */	mflr r0
/* 80C68DE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C68DE4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C68DE8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C68DEC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80C68DF0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80C68DF4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80C68DF8  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80C68DFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C68E00  7C 7F 1B 78 */	mr r31, r3
/* 80C68E04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C68E08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C68E0C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C68E10  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C68E14  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80C68E18  EC 42 00 2A */	fadds f2, f2, f0
/* 80C68E1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C68E20  4B 6D DA C8 */	b PSMTXTrans
/* 80C68E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C68E28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C68E2C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C68E30  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80C68E34  7C 04 02 14 */	add r0, r4, r0
/* 80C68E38  7C 04 07 34 */	extsh r4, r0
/* 80C68E3C  4B 3A 35 F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C68E40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C68E44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C68E48  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C68E4C  4B 6D D6 64 */	b PSMTXCopy
/* 80C68E50  A8 7F 06 0C */	lha r3, 0x60c(r31)
/* 80C68E54  7C 60 07 35 */	extsh. r0, r3
/* 80C68E58  41 82 00 8C */	beq lbl_80C68EE4
/* 80C68E5C  7C 60 07 35 */	extsh. r0, r3
/* 80C68E60  40 80 00 0C */	bge lbl_80C68E6C
/* 80C68E64  1C 03 FF FF */	mulli r0, r3, -1
/* 80C68E68  7C 03 07 34 */	extsh r3, r0
lbl_80C68E6C:
/* 80C68E6C  7C 60 07 34 */	extsh r0, r3
/* 80C68E70  2C 00 00 40 */	cmpwi r0, 0x40
/* 80C68E74  40 81 00 08 */	ble lbl_80C68E7C
/* 80C68E78  38 60 00 40 */	li r3, 0x40
lbl_80C68E7C:
/* 80C68E7C  7C 60 07 34 */	extsh r0, r3
/* 80C68E80  3C 60 80 C7 */	lis r3, lit_3691@ha
/* 80C68E84  C8 23 99 50 */	lfd f1, lit_3691@l(r3)
/* 80C68E88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C68E8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C68E90  3C 00 43 30 */	lis r0, 0x4330
/* 80C68E94  90 01 00 08 */	stw r0, 8(r1)
/* 80C68E98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C68E9C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C68EA0  3C 60 80 C7 */	lis r3, lit_3688@ha
/* 80C68EA4  C0 03 99 48 */	lfs f0, lit_3688@l(r3)
/* 80C68EA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C68EAC  3C 60 80 C7 */	lis r3, lit_3689@ha
/* 80C68EB0  C0 03 99 4C */	lfs f0, lit_3689@l(r3)
/* 80C68EB4  EF A0 00 72 */	fmuls f29, f0, f1
/* 80C68EB8  FC 20 E8 90 */	fmr f1, f29
/* 80C68EBC  4B 5F EA D0 */	b cM_rndFX__Ff
/* 80C68EC0  FF C0 08 90 */	fmr f30, f1
/* 80C68EC4  FC 20 E8 90 */	fmr f1, f29
/* 80C68EC8  4B 5F EA C4 */	b cM_rndFX__Ff
/* 80C68ECC  FF E0 08 90 */	fmr f31, f1
/* 80C68ED0  FC 20 E8 90 */	fmr f1, f29
/* 80C68ED4  4B 5F EA B8 */	b cM_rndFX__Ff
/* 80C68ED8  FC 40 F8 90 */	fmr f2, f31
/* 80C68EDC  FC 60 F0 90 */	fmr f3, f30
/* 80C68EE0  4B 3A 3E BC */	b transM__14mDoMtx_stack_cFfff
lbl_80C68EE4:
/* 80C68EE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C68EE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C68EEC  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80C68EF0  4B 6D D5 C0 */	b PSMTXCopy
/* 80C68EF4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C68EF8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C68EFC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80C68F00  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80C68F04  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 80C68F08  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80C68F0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C68F10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C68F14  7C 08 03 A6 */	mtlr r0
/* 80C68F18  38 21 00 50 */	addi r1, r1, 0x50
/* 80C68F1C  4E 80 00 20 */	blr 
