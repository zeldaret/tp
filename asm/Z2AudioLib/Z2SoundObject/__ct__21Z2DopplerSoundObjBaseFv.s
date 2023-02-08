lbl_802BE5A0:
/* 802BE5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE5A4  7C 08 02 A6 */	mflr r0
/* 802BE5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE5B0  7C 7F 1B 78 */	mr r31, r3
/* 802BE5B4  4B FF F9 3D */	bl __ct__14Z2SoundObjBaseFv
/* 802BE5B8  3C 60 80 3D */	lis r3, __vt__21Z2DopplerSoundObjBase@ha /* 0x803CAD30@ha */
/* 802BE5BC  38 03 AD 30 */	addi r0, r3, __vt__21Z2DopplerSoundObjBase@l /* 0x803CAD30@l */
/* 802BE5C0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802BE5C4  3C 60 80 3A */	lis r3, cNullVec__6Z2Calc@ha /* 0x8039C230@ha */
/* 802BE5C8  38 63 C2 30 */	addi r3, r3, cNullVec__6Z2Calc@l /* 0x8039C230@l */
/* 802BE5CC  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 802BE5D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BE5D4  F0 3F 00 20 */	psq_st f1, 32(r31), 0, 0 /* qr0 */
/* 802BE5D8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BE5DC  F0 3F 00 2C */	psq_st f1, 44(r31), 0, 0 /* qr0 */
/* 802BE5E0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 802BE5E4  7F E3 FB 78 */	mr r3, r31
/* 802BE5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE5F0  7C 08 03 A6 */	mtlr r0
/* 802BE5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE5F8  4E 80 00 20 */	blr 
