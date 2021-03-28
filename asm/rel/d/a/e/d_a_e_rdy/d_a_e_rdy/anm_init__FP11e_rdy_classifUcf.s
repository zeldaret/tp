lbl_8076BE80:
/* 8076BE80  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8076BE84  7C 08 02 A6 */	mflr r0
/* 8076BE88  90 01 00 54 */	stw r0, 0x54(r1)
/* 8076BE8C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8076BE90  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8076BE94  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8076BE98  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8076BE9C  39 61 00 30 */	addi r11, r1, 0x30
/* 8076BEA0  4B BF 63 38 */	b _savegpr_28
/* 8076BEA4  7C 7C 1B 78 */	mr r28, r3
/* 8076BEA8  7C 9D 23 78 */	mr r29, r4
/* 8076BEAC  FF C0 08 90 */	fmr f30, f1
/* 8076BEB0  7C BE 2B 78 */	mr r30, r5
/* 8076BEB4  FF E0 10 90 */	fmr f31, f2
/* 8076BEB8  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8076BEBC  3B E3 9D FC */	addi r31, r3, lit_4018@l
/* 8076BEC0  80 7C 06 74 */	lwz r3, 0x674(r28)
/* 8076BEC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076BEC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076BECC  3C A5 00 02 */	addis r5, r5, 2
/* 8076BED0  38 C0 00 80 */	li r6, 0x80
/* 8076BED4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076BED8  4B 8D 04 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076BEDC  7C 64 1B 78 */	mr r4, r3
/* 8076BEE0  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8076BEE4  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8076BEE8  FC 20 F0 90 */	fmr f1, f30
/* 8076BEEC  FC 40 F8 90 */	fmr f2, f31
/* 8076BEF0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076BEF4  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076BEF8  4B 8A 4F 78 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076BEFC  93 BC 06 78 */	stw r29, 0x678(r28)
/* 8076BF00  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8076BF04  40 82 00 40 */	bne lbl_8076BF44
/* 8076BF08  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8076BF0C  4B AF BA 48 */	b cM_rndF__Ff
/* 8076BF10  FC 00 08 1E */	fctiwz f0, f1
/* 8076BF14  D8 01 00 08 */	stfd f0, 8(r1)
/* 8076BF18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8076BF1C  7C 00 07 34 */	extsh r0, r0
/* 8076BF20  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 8076BF24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8076BF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076BF2C  3C 00 43 30 */	lis r0, 0x4330
/* 8076BF30  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076BF34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8076BF38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8076BF3C  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8076BF40  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8076BF44:
/* 8076BF44  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8076BF48  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8076BF4C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8076BF50  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8076BF54  39 61 00 30 */	addi r11, r1, 0x30
/* 8076BF58  4B BF 62 CC */	b _restgpr_28
/* 8076BF5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8076BF60  7C 08 03 A6 */	mtlr r0
/* 8076BF64  38 21 00 50 */	addi r1, r1, 0x50
/* 8076BF68  4E 80 00 20 */	blr 
