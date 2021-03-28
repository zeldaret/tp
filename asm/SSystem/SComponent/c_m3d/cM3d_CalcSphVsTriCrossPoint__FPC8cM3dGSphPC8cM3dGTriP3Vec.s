lbl_8026BE5C:
/* 8026BE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026BE60  7C 08 02 A6 */	mflr r0
/* 8026BE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026BE68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8026BE6C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8026BE70  7C 7E 1B 78 */	mr r30, r3
/* 8026BE74  7C BF 2B 78 */	mr r31, r5
/* 8026BE78  38 64 00 14 */	addi r3, r4, 0x14
/* 8026BE7C  38 84 00 20 */	addi r4, r4, 0x20
/* 8026BE80  38 A1 00 08 */	addi r5, r1, 8
/* 8026BE84  48 0D B2 0D */	bl PSVECAdd
/* 8026BE88  38 61 00 08 */	addi r3, r1, 8
/* 8026BE8C  38 81 00 14 */	addi r4, r1, 0x14
/* 8026BE90  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026BE94  48 0D B2 45 */	bl PSVECScale
/* 8026BE98  38 61 00 14 */	addi r3, r1, 0x14
/* 8026BE9C  7F C4 F3 78 */	mr r4, r30
/* 8026BEA0  48 0D B4 FD */	bl PSVECSquareDistance
/* 8026BEA4  FC 00 0A 10 */	fabs f0, f1
/* 8026BEA8  FC 40 00 18 */	frsp f2, f0
/* 8026BEAC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026BEB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026BEB4  40 80 00 20 */	bge lbl_8026BED4
/* 8026BEB8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026BEBC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026BEC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026BEC4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026BEC8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026BECC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026BED0  48 00 00 1C */	b lbl_8026BEEC
lbl_8026BED4:
/* 8026BED4  7F C3 F3 78 */	mr r3, r30
/* 8026BED8  38 81 00 14 */	addi r4, r1, 0x14
/* 8026BEDC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026BEE0  EC 20 08 24 */	fdivs f1, f0, f1
/* 8026BEE4  7F E5 FB 78 */	mr r5, r31
/* 8026BEE8  4B FF C6 C9 */	bl cM3d_InDivPos2__FPC3VecPC3VecfP3Vec
lbl_8026BEEC:
/* 8026BEEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8026BEF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8026BEF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026BEF8  7C 08 03 A6 */	mtlr r0
/* 8026BEFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8026BF00  4E 80 00 20 */	blr 
