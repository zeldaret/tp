lbl_802BE6B8:
/* 802BE6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE6BC  7C 08 02 A6 */	mflr r0
/* 802BE6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE6C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE6C8  7C 7F 1B 78 */	mr r31, r3
/* 802BE6CC  4B FF F9 6D */	bl framework__14Z2SoundObjBaseFUlSc
/* 802BE6D0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802BE6D4  28 00 00 00 */	cmplwi r0, 0
/* 802BE6D8  41 82 00 28 */	beq lbl_802BE700
/* 802BE6DC  E0 3F 00 2C */	psq_l f1, 44(r31), 0, 0 /* qr0 */
/* 802BE6E0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 802BE6E4  F0 3F 00 20 */	psq_st f1, 32(r31), 0, 0 /* qr0 */
/* 802BE6E8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BE6EC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802BE6F0  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 802BE6F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BE6F8  F0 3F 00 2C */	psq_st f1, 44(r31), 0, 0 /* qr0 */
/* 802BE6FC  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_802BE700:
/* 802BE700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE708  7C 08 03 A6 */	mtlr r0
/* 802BE70C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE710  4E 80 00 20 */	blr 
