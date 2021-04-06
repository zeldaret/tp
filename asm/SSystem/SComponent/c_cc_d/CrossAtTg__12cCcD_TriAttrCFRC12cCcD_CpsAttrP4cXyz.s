lbl_80263A88:
/* 80263A88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80263A8C  7C 08 02 A6 */	mflr r0
/* 80263A90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80263A94  3C C0 80 3A */	lis r6, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80263A98  38 06 37 C0 */	addi r0, r6, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80263A9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263AA0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80263AA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80263AA8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80263AAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80263AB0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80263AB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80263AB8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80263ABC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80263AC0  3C C0 80 3B */	lis r6, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 80263AC4  38 06 BB 84 */	addi r0, r6, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 80263AC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263ACC  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 80263AD0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80263AD4  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80263AD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80263ADC  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80263AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80263AE4  80 C3 00 40 */	lwz r6, 0x40(r3)
/* 80263AE8  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80263AEC  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80263AF0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80263AF4  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80263AF8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80263AFC  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 80263B00  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80263B04  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80263B08  90 01 00 38 */	stw r0, 0x38(r1)
/* 80263B0C  80 03 00 54 */	lwz r0, 0x54(r3)
/* 80263B10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80263B14  38 64 00 20 */	addi r3, r4, 0x20
/* 80263B18  38 81 00 08 */	addi r4, r1, 8
/* 80263B1C  48 00 A6 11 */	bl cM3d_Cross_CpsTri__FRC8cM3dGCps8cM3dGTriP3Vec
/* 80263B20  3C 80 80 3B */	lis r4, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 80263B24  38 04 BB 84 */	addi r0, r4, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 80263B28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263B2C  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80263B30  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80263B34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263B38  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80263B3C  30 03 FF FF */	addic r0, r3, -1
/* 80263B40  7C 00 19 10 */	subfe r0, r0, r3
/* 80263B44  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80263B48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80263B4C  7C 08 03 A6 */	mtlr r0
/* 80263B50  38 21 00 40 */	addi r1, r1, 0x40
/* 80263B54  4E 80 00 20 */	blr 
