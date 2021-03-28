lbl_802BE65C:
/* 802BE65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE660  7C 08 02 A6 */	mflr r0
/* 802BE664  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE66C  7C 7F 1B 78 */	mr r31, r3
/* 802BE670  4B FF F9 41 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802BE674  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802BE678  28 03 00 00 */	cmplwi r3, 0
/* 802BE67C  41 82 00 28 */	beq lbl_802BE6A4
/* 802BE680  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 802BE684  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BE688  F0 3F 00 20 */	psq_st f1, 32(r31), 0, 0 /* qr0 */
/* 802BE68C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BE690  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802BE694  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 802BE698  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BE69C  F0 3F 00 2C */	psq_st f1, 44(r31), 0, 0 /* qr0 */
/* 802BE6A0  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_802BE6A4:
/* 802BE6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE6AC  7C 08 03 A6 */	mtlr r0
/* 802BE6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE6B4  4E 80 00 20 */	blr 
