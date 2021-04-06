lbl_80BCFE38:
/* 80BCFE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCFE3C  7C 08 02 A6 */	mflr r0
/* 80BCFE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCFE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCFE48  7C 7F 1B 78 */	mr r31, r3
/* 80BCFE4C  4B 4B 3B DD */	bl __ct__12dCcD_GObjInfFv
/* 80BCFE50  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BCFE54  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BCFE58  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BCFE5C  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BD02B4@ha */
/* 80BCFE60  38 03 02 B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BD02B4@l */
/* 80BCFE64  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BCFE68  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha /* 0x80BD02C0@ha */
/* 80BCFE6C  38 03 02 C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BD02C0@l */
/* 80BCFE70  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BCFE74  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BCFE78  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BCFE7C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BCFE80  38 03 00 58 */	addi r0, r3, 0x58
/* 80BCFE84  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BCFE88  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BCFE8C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BCFE90  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BCFE94  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BCFE98  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BCFE9C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BCFEA0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BCFEA4  7F E3 FB 78 */	mr r3, r31
/* 80BCFEA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFEB0  7C 08 03 A6 */	mtlr r0
/* 80BCFEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFEB8  4E 80 00 20 */	blr 
