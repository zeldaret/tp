lbl_8069E038:
/* 8069E038  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8069E03C  7C 08 02 A6 */	mflr r0
/* 8069E040  90 01 00 74 */	stw r0, 0x74(r1)
/* 8069E044  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8069E048  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8069E04C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8069E050  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8069E054  39 61 00 50 */	addi r11, r1, 0x50
/* 8069E058  4B CC 41 85 */	bl _savegpr_29
/* 8069E05C  7C 7D 1B 78 */	mr r29, r3
/* 8069E060  38 61 00 14 */	addi r3, r1, 0x14
/* 8069E064  38 9D 06 9C */	addi r4, r29, 0x69c
/* 8069E068  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 8069E06C  4B BC 8A C9 */	bl __mi__4cXyzCFRC3Vec
/* 8069E070  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069E074  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8069E078  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069E07C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8069E080  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8069E084  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069E088  3B DD 06 9C */	addi r30, r29, 0x69c
/* 8069E08C  3B A0 00 00 */	li r29, 0
/* 8069E090  3C 60 80 6A */	lis r3, lit_4362@ha /* 0x806A19AC@ha */
/* 8069E094  CB C3 19 AC */	lfd f30, lit_4362@l(r3)  /* 0x806A19AC@l */
/* 8069E098  3F E0 43 30 */	lis r31, 0x4330
/* 8069E09C  3C 60 80 6A */	lis r3, lit_4992@ha /* 0x806A19FC@ha */
/* 8069E0A0  C3 E3 19 FC */	lfs f31, lit_4992@l(r3)  /* 0x806A19FC@l */
lbl_8069E0A4:
/* 8069E0A4  38 61 00 08 */	addi r3, r1, 8
/* 8069E0A8  38 81 00 20 */	addi r4, r1, 0x20
/* 8069E0AC  20 1D 00 0C */	subfic r0, r29, 0xc
/* 8069E0B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8069E0B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069E0B8  93 E1 00 30 */	stw r31, 0x30(r1)
/* 8069E0BC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8069E0C0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8069E0C4  EC 20 F8 24 */	fdivs f1, f0, f31
/* 8069E0C8  4B BC 8A BD */	bl __ml__4cXyzCFf
/* 8069E0CC  7F C3 F3 78 */	mr r3, r30
/* 8069E0D0  38 81 00 08 */	addi r4, r1, 8
/* 8069E0D4  7F C5 F3 78 */	mr r5, r30
/* 8069E0D8  4B CA 8F DD */	bl PSVECSubtract
/* 8069E0DC  3B BD 00 01 */	addi r29, r29, 1
/* 8069E0E0  2C 1D 00 0C */	cmpwi r29, 0xc
/* 8069E0E4  3B DE 00 0C */	addi r30, r30, 0xc
/* 8069E0E8  41 80 FF BC */	blt lbl_8069E0A4
/* 8069E0EC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8069E0F0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8069E0F4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8069E0F8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8069E0FC  39 61 00 50 */	addi r11, r1, 0x50
/* 8069E100  4B CC 41 29 */	bl _restgpr_29
/* 8069E104  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8069E108  7C 08 03 A6 */	mtlr r0
/* 8069E10C  38 21 00 70 */	addi r1, r1, 0x70
/* 8069E110  4E 80 00 20 */	blr 
