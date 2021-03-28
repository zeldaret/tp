lbl_8026F2A8:
/* 8026F2A8  3C C0 80 3A */	lis r6, __vt__8cM3dGLin@ha
/* 8026F2AC  38 06 78 F8 */	addi r0, r6, __vt__8cM3dGLin@l
/* 8026F2B0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8026F2B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F2B8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F2BC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F2C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F2C4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F2C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F2CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8026F2D0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8026F2D4  C0 05 00 04 */	lfs f0, 4(r5)
/* 8026F2D8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8026F2DC  C0 05 00 08 */	lfs f0, 8(r5)
/* 8026F2E0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8026F2E4  4E 80 00 20 */	blr 
