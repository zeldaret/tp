lbl_805DEAD0:
/* 805DEAD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DEAD4  7C 08 02 A6 */	mflr r0
/* 805DEAD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DEADC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805DEAE0  7C 7F 1B 78 */	mr r31, r3
/* 805DEAE4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805DEAE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805DEAEC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 805DEAF0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805DEAF4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805DEAF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DEAFC  3C 60 80 5F */	lis r3, lit_4100@ha
/* 805DEB00  C0 03 D1 B4 */	lfs f0, lit_4100@l(r3)
/* 805DEB04  EC 01 00 2A */	fadds f0, f1, f0
/* 805DEB08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DEB0C  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 805DEB10  38 81 00 08 */	addi r4, r1, 8
/* 805DEB14  4B C9 06 C8 */	b SetC__8cM3dGCylFRC4cXyz
/* 805DEB18  38 7F 0E 1C */	addi r3, r31, 0xe1c
/* 805DEB1C  38 81 00 08 */	addi r4, r1, 8
/* 805DEB20  4B C9 0B 28 */	b SetC__8cM3dGSphFRC4cXyz
/* 805DEB24  38 7F 0C E0 */	addi r3, r31, 0xce0
/* 805DEB28  38 81 00 08 */	addi r4, r1, 8
/* 805DEB2C  4B C9 06 B0 */	b SetC__8cM3dGCylFRC4cXyz
/* 805DEB30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805DEB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DEB38  7C 08 03 A6 */	mtlr r0
/* 805DEB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 805DEB40  4E 80 00 20 */	blr 
