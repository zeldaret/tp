lbl_80258B2C:
/* 80258B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80258B30  7C 08 02 A6 */	mflr r0
/* 80258B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80258B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80258B3C  7C 7F 1B 78 */	mr r31, r3
/* 80258B40  38 7F 02 D4 */	addi r3, r31, 0x2d4
/* 80258B44  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80258B48  C0 5F 02 A8 */	lfs f2, 0x2a8(r31)
/* 80258B4C  C0 7F 02 9C */	lfs f3, 0x29c(r31)
/* 80258B50  C0 9F 02 A0 */	lfs f4, 0x2a0(r31)
/* 80258B54  48 0E E3 D5 */	bl C_MTXPerspective
/* 80258B58  38 7F 03 14 */	addi r3, r31, 0x314
/* 80258B5C  38 9F 02 AC */	addi r4, r31, 0x2ac
/* 80258B60  38 BF 02 B8 */	addi r5, r31, 0x2b8
/* 80258B64  A8 DF 02 D0 */	lha r6, 0x2d0(r31)
/* 80258B68  4B DB 39 A5 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3Vecs
/* 80258B6C  38 7F 03 14 */	addi r3, r31, 0x314
/* 80258B70  38 9F 03 44 */	addi r4, r31, 0x344
/* 80258B74  48 0E DA 3D */	bl PSMTXInverse
/* 80258B78  38 7F 03 14 */	addi r3, r31, 0x314
/* 80258B7C  38 9F 03 B4 */	addi r4, r31, 0x3b4
/* 80258B80  48 0E D9 31 */	bl PSMTXCopy
/* 80258B84  C0 02 B4 F8 */	lfs f0, lit_3923(r2)
/* 80258B88  D0 1F 03 C0 */	stfs f0, 0x3c0(r31)
/* 80258B8C  D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 80258B90  D0 1F 03 E0 */	stfs f0, 0x3e0(r31)
/* 80258B94  38 7F 03 14 */	addi r3, r31, 0x314
/* 80258B98  3C 80 80 43 */	lis r4, j3dSys@ha
/* 80258B9C  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 80258BA0  48 0E D9 11 */	bl PSMTXCopy
/* 80258BA4  38 7F 02 D4 */	addi r3, r31, 0x2d4
/* 80258BA8  38 9F 03 14 */	addi r4, r31, 0x314
/* 80258BAC  38 BF 03 74 */	addi r5, r31, 0x374
/* 80258BB0  4B DB 3D 21 */	bl mDoMtx_concatProjView__FPA4_CfPA4_CfPA4_f
/* 80258BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80258BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80258BBC  7C 08 03 A6 */	mtlr r0
/* 80258BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80258BC4  4E 80 00 20 */	blr 
