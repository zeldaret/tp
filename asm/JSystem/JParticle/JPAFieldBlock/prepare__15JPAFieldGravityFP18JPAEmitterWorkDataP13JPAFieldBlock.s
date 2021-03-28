lbl_8027BFB4:
/* 8027BFB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027BFB8  7C 08 02 A6 */	mflr r0
/* 8027BFBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027BFC0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8027BFC4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8027BFC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027BFCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8027BFD0  7C 7E 1B 78 */	mr r30, r3
/* 8027BFD4  7C BF 2B 78 */	mr r31, r5
/* 8027BFD8  80 65 00 00 */	lwz r3, 0(r5)
/* 8027BFDC  80 03 00 08 */	lwz r0, 8(r3)
/* 8027BFE0  54 00 87 BD */	rlwinm. r0, r0, 0x10, 0x1e, 0x1e
/* 8027BFE4  41 82 00 24 */	beq lbl_8027C008
/* 8027BFE8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8027BFEC  E0 1F 00 1C */	psq_l f0, 28(r31), 0, 0 /* qr0 */
/* 8027BFF0  E0 3F 80 24 */	psq_l f1, 36(r31), 1, 0 /* qr0 */
/* 8027BFF4  10 00 00 98 */	ps_muls0 f0, f0, f2
/* 8027BFF8  F0 1E 00 04 */	psq_st f0, 4(r30), 0, 0 /* qr0 */
/* 8027BFFC  10 01 00 98 */	ps_muls0 f0, f1, f2
/* 8027C000  F0 1E 80 0C */	psq_st f0, 12(r30), 1, 0 /* qr0 */
/* 8027C004  48 00 00 30 */	b lbl_8027C034
lbl_8027C008:
/* 8027C008  38 64 00 78 */	addi r3, r4, 0x78
/* 8027C00C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8027C010  38 BE 00 04 */	addi r5, r30, 4
/* 8027C014  48 0C AE 39 */	bl PSMTXMultVecSR
/* 8027C018  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 8027C01C  E0 1E 00 04 */	psq_l f0, 4(r30), 0, 0 /* qr0 */
/* 8027C020  E0 3E 80 0C */	psq_l f1, 12(r30), 1, 0 /* qr0 */
/* 8027C024  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027C028  F0 1E 00 04 */	psq_st f0, 4(r30), 0, 0 /* qr0 */
/* 8027C02C  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027C030  F0 1E 80 0C */	psq_st f0, 12(r30), 1, 0 /* qr0 */
lbl_8027C034:
/* 8027C034  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8027C038  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8027C03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027C040  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027C044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027C048  7C 08 03 A6 */	mtlr r0
/* 8027C04C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027C050  4E 80 00 20 */	blr 
