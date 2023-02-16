lbl_802AA9E8:
/* 802AA9E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AA9EC  7C 08 02 A6 */	mflr r0
/* 802AA9F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AA9F4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802AA9F8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802AA9FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AAA00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AAA04  7C 7E 1B 78 */	mr r30, r3
/* 802AAA08  7C 9F 23 78 */	mr r31, r4
/* 802AAA0C  FF E0 08 90 */	fmr f31, f1
/* 802AAA10  80 64 00 00 */	lwz r3, 0(r4)
/* 802AAA14  3C 03 00 01 */	addis r0, r3, 1
/* 802AAA18  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AAA1C  41 82 00 88 */	beq lbl_802AAAA4
/* 802AAA20  90 61 00 10 */	stw r3, 0x10(r1)
/* 802AAA24  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802AAA28  38 81 00 10 */	addi r4, r1, 0x10
/* 802AAA2C  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAA30  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AAA34  7D 89 03 A6 */	mtctr r12
/* 802AAA38  4E 80 04 21 */	bctrl 
/* 802AAA3C  2C 03 00 00 */	cmpwi r3, 0
/* 802AAA40  40 82 00 64 */	bne lbl_802AAAA4
/* 802AAA44  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AAA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AAA4C  80 6D 85 CC */	lwz r3, __OSReport_disable-0x4C(r13)
/* 802AAA50  38 81 00 0C */	addi r4, r1, 0xc
/* 802AAA54  81 83 00 00 */	lwz r12, 0(r3)
/* 802AAA58  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802AAA5C  7D 89 03 A6 */	mtctr r12
/* 802AAA60  4E 80 04 21 */	bctrl 
/* 802AAA64  1C 03 00 6C */	mulli r0, r3, 0x6c
/* 802AAA68  7C 7E 02 14 */	add r3, r30, r0
/* 802AAA6C  80 A3 00 70 */	lwz r5, 0x70(r3)
/* 802AAA70  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AAA74  48 00 00 28 */	b lbl_802AAA9C
lbl_802AAA78:
/* 802AAA78  80 85 00 00 */	lwz r4, 0(r5)
/* 802AAA7C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 802AAA80  90 61 00 08 */	stw r3, 8(r1)
/* 802AAA84  7C 03 00 40 */	cmplw r3, r0
/* 802AAA88  40 82 00 10 */	bne lbl_802AAA98
/* 802AAA8C  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 802AAA90  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802AAA94  D0 04 00 58 */	stfs f0, 0x58(r4)
lbl_802AAA98:
/* 802AAA98  80 A5 00 0C */	lwz r5, 0xc(r5)
lbl_802AAA9C:
/* 802AAA9C  28 05 00 00 */	cmplwi r5, 0
/* 802AAAA0  40 82 FF D8 */	bne lbl_802AAA78
lbl_802AAAA4:
/* 802AAAA4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802AAAA8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802AAAAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AAAB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AAAB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AAAB8  7C 08 03 A6 */	mtlr r0
/* 802AAABC  38 21 00 30 */	addi r1, r1, 0x30
/* 802AAAC0  4E 80 00 20 */	blr 
