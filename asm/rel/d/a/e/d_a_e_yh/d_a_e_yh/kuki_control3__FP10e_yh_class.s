lbl_80800A3C:
/* 80800A3C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80800A40  7C 08 02 A6 */	mflr r0
/* 80800A44  90 01 00 74 */	stw r0, 0x74(r1)
/* 80800A48  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80800A4C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80800A50  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80800A54  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80800A58  39 61 00 50 */	addi r11, r1, 0x50
/* 80800A5C  4B B6 17 80 */	b _savegpr_29
/* 80800A60  7C 7D 1B 78 */	mr r29, r3
/* 80800A64  38 61 00 14 */	addi r3, r1, 0x14
/* 80800A68  38 9D 06 A0 */	addi r4, r29, 0x6a0
/* 80800A6C  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 80800A70  4B A6 60 C4 */	b __mi__4cXyzCFRC3Vec
/* 80800A74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80800A78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80800A7C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80800A80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80800A84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80800A88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80800A8C  3B DD 06 A0 */	addi r30, r29, 0x6a0
/* 80800A90  3B A0 00 00 */	li r29, 0
/* 80800A94  3C 60 80 80 */	lis r3, lit_4385@ha
/* 80800A98  CB C3 43 24 */	lfd f30, lit_4385@l(r3)
/* 80800A9C  3F E0 43 30 */	lis r31, 0x4330
/* 80800AA0  3C 60 80 80 */	lis r3, lit_5015@ha
/* 80800AA4  C3 E3 43 74 */	lfs f31, lit_5015@l(r3)
lbl_80800AA8:
/* 80800AA8  38 61 00 08 */	addi r3, r1, 8
/* 80800AAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80800AB0  20 1D 00 0C */	subfic r0, r29, 0xc
/* 80800AB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80800AB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80800ABC  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80800AC0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80800AC4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80800AC8  EC 20 F8 24 */	fdivs f1, f0, f31
/* 80800ACC  4B A6 60 B8 */	b __ml__4cXyzCFf
/* 80800AD0  7F C3 F3 78 */	mr r3, r30
/* 80800AD4  38 81 00 08 */	addi r4, r1, 8
/* 80800AD8  7F C5 F3 78 */	mr r5, r30
/* 80800ADC  4B B4 65 D8 */	b PSVECSubtract
/* 80800AE0  3B BD 00 01 */	addi r29, r29, 1
/* 80800AE4  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80800AE8  3B DE 00 0C */	addi r30, r30, 0xc
/* 80800AEC  41 80 FF BC */	blt lbl_80800AA8
/* 80800AF0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80800AF4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80800AF8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80800AFC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80800B00  39 61 00 50 */	addi r11, r1, 0x50
/* 80800B04  4B B6 17 24 */	b _restgpr_29
/* 80800B08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80800B0C  7C 08 03 A6 */	mtlr r0
/* 80800B10  38 21 00 70 */	addi r1, r1, 0x70
/* 80800B14  4E 80 00 20 */	blr 
