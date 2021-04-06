lbl_807F5994:
/* 807F5994  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807F5998  7C 08 02 A6 */	mflr r0
/* 807F599C  90 01 00 74 */	stw r0, 0x74(r1)
/* 807F59A0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807F59A4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807F59A8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 807F59AC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 807F59B0  39 61 00 50 */	addi r11, r1, 0x50
/* 807F59B4  4B B6 C8 29 */	bl _savegpr_29
/* 807F59B8  7C 7D 1B 78 */	mr r29, r3
/* 807F59BC  38 61 00 14 */	addi r3, r1, 0x14
/* 807F59C0  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 807F59C4  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 807F59C8  4B A7 11 6D */	bl __mi__4cXyzCFRC3Vec
/* 807F59CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807F59D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807F59D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F59D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807F59DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807F59E0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F59E4  3B DD 06 A4 */	addi r30, r29, 0x6a4
/* 807F59E8  3B A0 00 00 */	li r29, 0
/* 807F59EC  3C 60 80 7F */	lis r3, lit_4252@ha /* 0x807F7A98@ha */
/* 807F59F0  CB C3 7A 98 */	lfd f30, lit_4252@l(r3)  /* 0x807F7A98@l */
/* 807F59F4  3F E0 43 30 */	lis r31, 0x4330
/* 807F59F8  3C 60 80 7F */	lis r3, lit_4765@ha /* 0x807F7AE0@ha */
/* 807F59FC  C3 E3 7A E0 */	lfs f31, lit_4765@l(r3)  /* 0x807F7AE0@l */
lbl_807F5A00:
/* 807F5A00  38 61 00 08 */	addi r3, r1, 8
/* 807F5A04  38 81 00 20 */	addi r4, r1, 0x20
/* 807F5A08  20 1D 00 0C */	subfic r0, r29, 0xc
/* 807F5A0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807F5A10  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F5A14  93 E1 00 30 */	stw r31, 0x30(r1)
/* 807F5A18  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807F5A1C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 807F5A20  EC 20 F8 24 */	fdivs f1, f0, f31
/* 807F5A24  4B A7 11 61 */	bl __ml__4cXyzCFf
/* 807F5A28  7F C3 F3 78 */	mr r3, r30
/* 807F5A2C  38 81 00 08 */	addi r4, r1, 8
/* 807F5A30  7F C5 F3 78 */	mr r5, r30
/* 807F5A34  4B B5 16 81 */	bl PSVECSubtract
/* 807F5A38  3B BD 00 01 */	addi r29, r29, 1
/* 807F5A3C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 807F5A40  3B DE 00 0C */	addi r30, r30, 0xc
/* 807F5A44  41 80 FF BC */	blt lbl_807F5A00
/* 807F5A48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807F5A4C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807F5A50  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 807F5A54  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 807F5A58  39 61 00 50 */	addi r11, r1, 0x50
/* 807F5A5C  4B B6 C7 CD */	bl _restgpr_29
/* 807F5A60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807F5A64  7C 08 03 A6 */	mtlr r0
/* 807F5A68  38 21 00 70 */	addi r1, r1, 0x70
/* 807F5A6C  4E 80 00 20 */	blr 
