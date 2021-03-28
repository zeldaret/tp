lbl_807AB930:
/* 807AB930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807AB934  7C 08 02 A6 */	mflr r0
/* 807AB938  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AB93C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 807AB940  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 807AB944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AB948  93 C1 00 08 */	stw r30, 8(r1)
/* 807AB94C  7C 7F 1B 78 */	mr r31, r3
/* 807AB950  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807AB954  3B C3 FD 2C */	addi r30, r3, lit_3909@l
/* 807AB958  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AB95C  28 03 00 00 */	cmplwi r3, 0
/* 807AB960  41 82 01 30 */	beq lbl_807ABA90
/* 807AB964  80 63 00 04 */	lwz r3, 4(r3)
/* 807AB968  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 807AB96C  28 00 00 01 */	cmplwi r0, 1
/* 807AB970  41 82 01 20 */	beq lbl_807ABA90
/* 807AB974  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807AB978  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807AB97C  38 63 00 30 */	addi r3, r3, 0x30
/* 807AB980  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807AB984  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807AB988  4B B9 AB 28 */	b PSMTXCopy
/* 807AB98C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807AB990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807AB994  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807AB998  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 807AB99C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807AB9A0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 807AB9A4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807AB9A8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 807AB9AC  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 807AB9B0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807AB9B4  C0 1F 08 10 */	lfs f0, 0x810(r31)
/* 807AB9B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807AB9BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807AB9C0  40 80 00 08 */	bge lbl_807AB9C8
/* 807AB9C4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
lbl_807AB9C8:
/* 807AB9C8  C0 5F 06 DC */	lfs f2, 0x6dc(r31)
/* 807AB9CC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807AB9D0  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807AB9D4  38 63 02 10 */	addi r3, r3, l_HIO@l
/* 807AB9D8  C0 23 00 08 */	lfs f1, 8(r3)
/* 807AB9DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 807AB9E0  41 82 00 08 */	beq lbl_807AB9E8
/* 807AB9E4  FC 40 08 90 */	fmr f2, f1
lbl_807AB9E8:
/* 807AB9E8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807AB9EC  EF E0 00 B2 */	fmuls f31, f0, f2
/* 807AB9F0  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 807AB9F4  2C 00 00 07 */	cmpwi r0, 7
/* 807AB9F8  41 82 00 20 */	beq lbl_807ABA18
/* 807AB9FC  80 1F 09 B4 */	lwz r0, 0x9b4(r31)
/* 807ABA00  28 00 40 00 */	cmplwi r0, 0x4000
/* 807ABA04  40 82 00 14 */	bne lbl_807ABA18
/* 807ABA08  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807ABA0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807ABA10  40 80 00 08 */	bge lbl_807ABA18
/* 807ABA14  FF E0 00 90 */	fmr f31, f0
lbl_807ABA18:
/* 807ABA18  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 807ABA1C  38 9F 05 38 */	addi r4, r31, 0x538
/* 807ABA20  4B AC 3C 28 */	b SetC__8cM3dGSphFRC4cXyz
/* 807ABA24  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 807ABA28  FC 20 F8 90 */	fmr f1, f31
/* 807ABA2C  4B AC 3C DC */	b SetR__8cM3dGSphFf
/* 807ABA30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807ABA34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807ABA38  38 63 23 3C */	addi r3, r3, 0x233c
/* 807ABA3C  38 9F 09 8C */	addi r4, r31, 0x98c
/* 807ABA40  4B AB 91 68 */	b Set__4cCcSFP8cCcD_Obj
/* 807ABA44  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807ABA48  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807ABA4C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807ABA50  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807ABA54  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807ABA58  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807ABA5C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807ABA60  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807ABA64  EC 01 00 2A */	fadds f0, f1, f0
/* 807ABA68  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807ABA6C  C0 3F 08 10 */	lfs f1, 0x810(r31)
/* 807ABA70  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 807ABA74  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807ABA78  40 80 00 08 */	bge lbl_807ABA80
/* 807ABA7C  D0 3F 05 54 */	stfs f1, 0x554(r31)
lbl_807ABA80:
/* 807ABA80  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807ABA84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807ABA88  40 80 00 08 */	bge lbl_807ABA90
/* 807ABA8C  D0 3F 05 3C */	stfs f1, 0x53c(r31)
lbl_807ABA90:
/* 807ABA90  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 807ABA94  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 807ABA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807ABA9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807ABAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807ABAA4  7C 08 03 A6 */	mtlr r0
/* 807ABAA8  38 21 00 20 */	addi r1, r1, 0x20
/* 807ABAAC  4E 80 00 20 */	blr 
