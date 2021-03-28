lbl_80C9BEB0:
/* 80C9BEB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C9BEB4  7C 08 02 A6 */	mflr r0
/* 80C9BEB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C9BEBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9BEC0  4B 6C 63 0C */	b _savegpr_25
/* 80C9BEC4  7C 7C 1B 78 */	mr r28, r3
/* 80C9BEC8  7C 9D 23 78 */	mr r29, r4
/* 80C9BECC  7C BE 2B 78 */	mr r30, r5
/* 80C9BED0  3C 60 80 CA */	lis r3, lit_3863@ha
/* 80C9BED4  3B E3 CD 4C */	addi r31, r3, lit_3863@l
/* 80C9BED8  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C9BEDC  38 63 00 24 */	addi r3, r3, 0x24
/* 80C9BEE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C9BEE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C9BEE8  4B 6A A5 C8 */	b PSMTXCopy
/* 80C9BEEC  1C 1E 00 0C */	mulli r0, r30, 0xc
/* 80C9BEF0  3C 60 80 CA */	lis r3, chain_p@ha
/* 80C9BEF4  38 63 CF 10 */	addi r3, r3, chain_p@l
/* 80C9BEF8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C9BEFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C9BF00  7C 63 02 14 */	add r3, r3, r0
/* 80C9BF04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C9BF08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C9BF0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C9BF10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C9BF14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9BF18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9BF1C  38 81 00 08 */	addi r4, r1, 8
/* 80C9BF20  38 BD 00 94 */	addi r5, r29, 0x94
/* 80C9BF24  4B 6A AE 48 */	b PSMTXMultVec
/* 80C9BF28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9BF2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9BF30  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80C9BF34  C0 5D 00 98 */	lfs f2, 0x98(r29)
/* 80C9BF38  C0 7D 00 9C */	lfs f3, 0x9c(r29)
/* 80C9BF3C  4B 6A A9 AC */	b PSMTXTrans
/* 80C9BF40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9BF44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9BF48  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80C9BF4C  57 C0 70 22 */	slwi r0, r30, 0xe
/* 80C9BF50  7C 04 02 14 */	add r0, r4, r0
/* 80C9BF54  7C 04 07 34 */	extsh r4, r0
/* 80C9BF58  4B 37 04 DC */	b mDoMtx_YrotM__FPA4_fs
/* 80C9BF5C  3B 40 00 00 */	li r26, 0
/* 80C9BF60  3B 20 00 00 */	li r25, 0
/* 80C9BF64  3B 80 00 00 */	li r28, 0
/* 80C9BF68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9BF6C  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80C9BF70  7F 7E DB 78 */	mr r30, r27
lbl_80C9BF74:
/* 80C9BF74  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C9BF78  4B 5C BB 8C */	b cM_rndFX2__Ff
/* 80C9BF7C  FC 00 08 1E */	fctiwz f0, f1
/* 80C9BF80  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C9BF84  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80C9BF88  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C9BF8C  7C 00 07 34 */	extsh r0, r0
/* 80C9BF90  7F 5A 02 14 */	add r26, r26, r0
/* 80C9BF94  4B 37 0D 34 */	b push__14mDoMtx_stack_cFv
/* 80C9BF98  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C9BF9C  FC 40 08 90 */	fmr f2, f1
/* 80C9BFA0  FC 60 08 90 */	fmr f3, f1
/* 80C9BFA4  4B 37 0E 94 */	b scaleM__14mDoMtx_stack_cFfff
/* 80C9BFA8  7F 63 DB 78 */	mr r3, r27
/* 80C9BFAC  38 80 40 00 */	li r4, 0x4000
/* 80C9BFB0  4B 37 03 EC */	b mDoMtx_XrotM__FPA4_fs
/* 80C9BFB4  7F 63 DB 78 */	mr r3, r27
/* 80C9BFB8  7F 44 D3 78 */	mr r4, r26
/* 80C9BFBC  4B 37 05 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C9BFC0  7F C3 F3 78 */	mr r3, r30
/* 80C9BFC4  7C 9D E0 2E */	lwzx r4, r29, r28
/* 80C9BFC8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9BFCC  4B 6A A4 E4 */	b PSMTXCopy
/* 80C9BFD0  4B 37 0D 44 */	b pop__14mDoMtx_stack_cFv
/* 80C9BFD4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C9BFD8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80C9BFDC  FC 60 08 90 */	fmr f3, f1
/* 80C9BFE0  4B 37 0D BC */	b transM__14mDoMtx_stack_cFfff
/* 80C9BFE4  3B 39 00 01 */	addi r25, r25, 1
/* 80C9BFE8  2C 19 00 23 */	cmpwi r25, 0x23
/* 80C9BFEC  3B 9C 00 04 */	addi r28, r28, 4
/* 80C9BFF0  41 80 FF 84 */	blt lbl_80C9BF74
/* 80C9BFF4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9BFF8  4B 6C 62 20 */	b _restgpr_25
/* 80C9BFFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C9C000  7C 08 03 A6 */	mtlr r0
/* 80C9C004  38 21 00 40 */	addi r1, r1, 0x40
/* 80C9C008  4E 80 00 20 */	blr 
