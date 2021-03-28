lbl_802B3F40:
/* 802B3F40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B3F44  7C 08 02 A6 */	mflr r0
/* 802B3F48  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B3F4C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 802B3F50  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 802B3F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B3F58  93 C1 00 08 */	stw r30, 8(r1)
/* 802B3F5C  7C BE 2B 78 */	mr r30, r5
/* 802B3F60  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B3F64  80 64 00 00 */	lwz r3, 0(r4)
/* 802B3F68  28 03 00 00 */	cmplwi r3, 0
/* 802B3F6C  41 82 00 5C */	beq lbl_802B3FC8
/* 802B3F70  81 83 00 00 */	lwz r12, 0(r3)
/* 802B3F74  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B3F78  7D 89 03 A6 */	mtctr r12
/* 802B3F7C  4E 80 04 21 */	bctrl 
/* 802B3F80  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B3F84  41 82 00 44 */	beq lbl_802B3FC8
/* 802B3F88  7F C4 F3 78 */	mr r4, r30
/* 802B3F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B3F90  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802B3F94  7D 89 03 A6 */	mtctr r12
/* 802B3F98  4E 80 04 21 */	bctrl 
/* 802B3F9C  28 03 00 00 */	cmplwi r3, 0
/* 802B3FA0  41 82 00 28 */	beq lbl_802B3FC8
/* 802B3FA4  7F E3 FB 78 */	mr r3, r31
/* 802B3FA8  7F C4 F3 78 */	mr r4, r30
/* 802B3FAC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802B3FB0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802B3FB4  7D 89 03 A6 */	mtctr r12
/* 802B3FB8  4E 80 04 21 */	bctrl 
/* 802B3FBC  28 03 00 00 */	cmplwi r3, 0
/* 802B3FC0  41 82 00 08 */	beq lbl_802B3FC8
/* 802B3FC4  C3 E3 00 00 */	lfs f31, 0(r3)
lbl_802B3FC8:
/* 802B3FC8  FC 20 F8 90 */	fmr f1, f31
/* 802B3FCC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 802B3FD0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 802B3FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B3FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B3FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B3FE0  7C 08 03 A6 */	mtlr r0
/* 802B3FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B3FE8  4E 80 00 20 */	blr 
