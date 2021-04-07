lbl_80263E04:
/* 80263E04  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80263E08  7C 08 02 A6 */	mflr r0
/* 80263E0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80263E10  3C C0 80 3A */	lis r6, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80263E14  38 06 37 C0 */	addi r0, r6, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80263E18  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263E1C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80263E20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80263E24  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80263E28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80263E2C  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80263E30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80263E34  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80263E38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80263E3C  3C C0 80 3B */	lis r6, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 80263E40  38 06 BB 84 */	addi r0, r6, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 80263E44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263E48  80 C4 00 34 */	lwz r6, 0x34(r4)
/* 80263E4C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80263E50  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80263E54  90 01 00 20 */	stw r0, 0x20(r1)
/* 80263E58  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80263E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80263E60  80 C4 00 40 */	lwz r6, 0x40(r4)
/* 80263E64  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80263E68  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80263E6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80263E70  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80263E74  90 01 00 30 */	stw r0, 0x30(r1)
/* 80263E78  80 C4 00 4C */	lwz r6, 0x4c(r4)
/* 80263E7C  80 04 00 50 */	lwz r0, 0x50(r4)
/* 80263E80  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80263E84  90 01 00 38 */	stw r0, 0x38(r1)
/* 80263E88  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80263E8C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80263E90  38 63 00 20 */	addi r3, r3, 0x20
/* 80263E94  38 81 00 08 */	addi r4, r1, 8
/* 80263E98  48 00 A2 95 */	bl cM3d_Cross_CpsTri__FRC8cM3dGCps8cM3dGTriP3Vec
/* 80263E9C  3C 80 80 3B */	lis r4, __vt__8cM3dGTri@ha /* 0x803ABB84@ha */
/* 80263EA0  38 04 BB 84 */	addi r0, r4, __vt__8cM3dGTri@l /* 0x803ABB84@l */
/* 80263EA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263EA8  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80263EAC  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80263EB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80263EB4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80263EB8  30 03 FF FF */	addic r0, r3, -1
/* 80263EBC  7C 00 19 10 */	subfe r0, r0, r3
/* 80263EC0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80263EC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80263EC8  7C 08 03 A6 */	mtlr r0
/* 80263ECC  38 21 00 40 */	addi r1, r1, 0x40
/* 80263ED0  4E 80 00 20 */	blr 
