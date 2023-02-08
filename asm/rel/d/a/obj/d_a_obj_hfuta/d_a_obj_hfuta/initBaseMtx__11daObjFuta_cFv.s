lbl_80C1DD8C:
/* 80C1DD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DD90  7C 08 02 A6 */	mflr r0
/* 80C1DD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DD98  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C1DD9C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C1DDA0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C1DDA4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C1DDA8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C1DDAC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C1DDB0  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C1DDB4  48 00 00 15 */	bl setBaseMtx__11daObjFuta_cFv
/* 80C1DDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DDBC  7C 08 03 A6 */	mtlr r0
/* 80C1DDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DDC4  4E 80 00 20 */	blr 
