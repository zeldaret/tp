lbl_802FEA74:
/* 802FEA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FEA78  7C 08 02 A6 */	mflr r0
/* 802FEA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FEA80  D0 23 01 1C */	stfs f1, 0x11c(r3)
/* 802FEA84  D0 43 01 20 */	stfs f2, 0x120(r3)
/* 802FEA88  48 00 00 3D */	bl setBlendKonstColor__10J2DPictureFv
/* 802FEA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FEA90  7C 08 03 A6 */	mtlr r0
/* 802FEA94  38 21 00 10 */	addi r1, r1, 0x10
/* 802FEA98  4E 80 00 20 */	blr 
