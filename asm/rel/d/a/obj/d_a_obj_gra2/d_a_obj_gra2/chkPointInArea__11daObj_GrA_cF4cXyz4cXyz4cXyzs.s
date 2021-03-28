lbl_80C0F668:
/* 80C0F668  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C0F66C  7C 08 02 A6 */	mflr r0
/* 80C0F670  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C0F674  C0 04 00 00 */	lfs f0, 0(r4)
/* 80C0F678  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C0F67C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C0F680  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C0F684  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C0F688  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C0F68C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C0F690  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C0F694  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C0F698  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0F69C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C0F6A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C0F6A4  C0 06 00 00 */	lfs f0, 0(r6)
/* 80C0F6A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C0F6AC  C0 06 00 04 */	lfs f0, 4(r6)
/* 80C0F6B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0F6B4  C0 06 00 08 */	lfs f0, 8(r6)
/* 80C0F6B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0F6BC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C0F6C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0F6C4  38 A1 00 08 */	addi r5, r1, 8
/* 80C0F6C8  7C E6 3B 78 */	mr r6, r7
/* 80C0F6CC  4B 54 62 9C */	b daNpcF_chkPointInArea__F4cXyz4cXyz4cXyzs
/* 80C0F6D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0F6D4  7C 08 03 A6 */	mtlr r0
/* 80C0F6D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0F6DC  4E 80 00 20 */	blr 
