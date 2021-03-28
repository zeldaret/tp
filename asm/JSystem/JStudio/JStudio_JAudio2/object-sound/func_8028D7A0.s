lbl_8028D7A0:
/* 8028D7A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028D7A4  7C 08 02 A6 */	mflr r0
/* 8028D7A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028D7AC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8028D7B0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8028D7B4  FF E0 08 90 */	fmr f31, f1
/* 8028D7B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D7BC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8028D7C0  7D 89 03 A6 */	mtctr r12
/* 8028D7C4  4E 80 04 21 */	bctrl 
/* 8028D7C8  28 03 00 00 */	cmplwi r3, 0
/* 8028D7CC  41 82 00 1C */	beq lbl_8028D7E8
/* 8028D7D0  D3 E3 00 00 */	stfs f31, 0(r3)
/* 8028D7D4  C0 02 BB 10 */	lfs f0, lit_1470(r2)
/* 8028D7D8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8028D7DC  38 00 00 00 */	li r0, 0
/* 8028D7E0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8028D7E4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8028D7E8:
/* 8028D7E8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8028D7EC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8028D7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028D7F4  7C 08 03 A6 */	mtlr r0
/* 8028D7F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028D7FC  4E 80 00 20 */	blr 
