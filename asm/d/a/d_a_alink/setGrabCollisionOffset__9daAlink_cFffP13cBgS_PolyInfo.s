lbl_800E3994:
/* 800E3994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E3998  7C 08 02 A6 */	mflr r0
/* 800E399C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E39A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E39A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800E39A8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 800E39AC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 800E39B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E39B4  7C 7F 1B 78 */	mr r31, r3
/* 800E39B8  FF C0 08 90 */	fmr f30, f1
/* 800E39BC  FF E0 10 90 */	fmr f31, f2
/* 800E39C0  28 04 00 00 */	cmplwi r4, 0
/* 800E39C4  41 82 00 10 */	beq lbl_800E39D4
/* 800E39C8  38 7F 1E 4C */	addi r3, r31, 0x1e4c
/* 800E39CC  48 18 47 7D */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800E39D0  48 00 00 0C */	b lbl_800E39DC
lbl_800E39D4:
/* 800E39D4  38 7F 1E 4C */	addi r3, r31, 0x1e4c
/* 800E39D8  48 18 47 49 */	bl ClearPi__13cBgS_PolyInfoFv
lbl_800E39DC:
/* 800E39DC  C0 22 94 08 */	lfs f1, lit_14064(r2)
/* 800E39E0  EC 01 07 B2 */	fmuls f0, f1, f30
/* 800E39E4  D0 1F 34 2C */	stfs f0, 0x342c(r31)
/* 800E39E8  EC 01 07 F2 */	fmuls f0, f1, f31
/* 800E39EC  D0 1F 34 30 */	stfs f0, 0x3430(r31)
/* 800E39F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800E39F4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E39F8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 800E39FC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800E3A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E3A04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E3A08  7C 08 03 A6 */	mtlr r0
/* 800E3A0C  38 21 00 30 */	addi r1, r1, 0x30
/* 800E3A10  4E 80 00 20 */	blr 
