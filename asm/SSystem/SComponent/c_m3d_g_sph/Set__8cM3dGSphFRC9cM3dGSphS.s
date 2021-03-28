lbl_8026F6A8:
/* 8026F6A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F6AC  7C 08 02 A6 */	mflr r0
/* 8026F6B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F6B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026F6B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026F6BC  7C 7E 1B 78 */	mr r30, r3
/* 8026F6C0  7C 9F 23 78 */	mr r31, r4
/* 8026F6C4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F6C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8026F6CC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F6D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8026F6D4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F6D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026F6DC  38 81 00 08 */	addi r4, r1, 8
/* 8026F6E0  4B FF FF 69 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8026F6E4  7F C3 F3 78 */	mr r3, r30
/* 8026F6E8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8026F6EC  48 00 00 1D */	bl SetR__8cM3dGSphFf
/* 8026F6F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026F6F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026F6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F6FC  7C 08 03 A6 */	mtlr r0
/* 8026F700  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F704  4E 80 00 20 */	blr 
