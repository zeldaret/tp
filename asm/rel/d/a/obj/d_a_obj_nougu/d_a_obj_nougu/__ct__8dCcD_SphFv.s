lbl_80CA40D8:
/* 80CA40D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA40DC  7C 08 02 A6 */	mflr r0
/* 80CA40E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA40E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA40E8  7C 7F 1B 78 */	mr r31, r3
/* 80CA40EC  4B 3D F9 3D */	bl __ct__12dCcD_GObjInfFv
/* 80CA40F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CA40F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CA40F8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CA40FC  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha /* 0x80CA4A94@ha */
/* 80CA4100  38 03 4A 94 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CA4A94@l */
/* 80CA4104  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CA4108  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha /* 0x80CA4AA0@ha */
/* 80CA410C  38 03 4A A0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CA4AA0@l */
/* 80CA4110  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA4114  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CA4118  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CA411C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CA4120  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA4124  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA4128  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CA412C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CA4130  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CA4134  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA4138  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CA413C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA4140  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA4144  7F E3 FB 78 */	mr r3, r31
/* 80CA4148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA414C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4150  7C 08 03 A6 */	mtlr r0
/* 80CA4154  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA4158  4E 80 00 20 */	blr 
