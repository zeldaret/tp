lbl_807CDE90:
/* 807CDE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CDE94  7C 08 02 A6 */	mflr r0
/* 807CDE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CDE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CDEA0  7C 7F 1B 78 */	mr r31, r3
/* 807CDEA4  4B 8B 5B 85 */	bl __ct__12dCcD_GObjInfFv
/* 807CDEA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807CDEAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807CDEB0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807CDEB4  3C 60 80 7D */	lis r3, __vt__8cM3dGAab@ha /* 0x807CF454@ha */
/* 807CDEB8  38 03 F4 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807CF454@l */
/* 807CDEBC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807CDEC0  3C 60 80 7D */	lis r3, __vt__8cM3dGSph@ha /* 0x807CF3F8@ha */
/* 807CDEC4  38 03 F3 F8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807CF3F8@l */
/* 807CDEC8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807CDECC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807CDED0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807CDED4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807CDED8  38 03 00 58 */	addi r0, r3, 0x58
/* 807CDEDC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807CDEE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807CDEE4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807CDEE8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807CDEEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 807CDEF0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807CDEF4  38 03 00 84 */	addi r0, r3, 0x84
/* 807CDEF8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807CDEFC  7F E3 FB 78 */	mr r3, r31
/* 807CDF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CDF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CDF08  7C 08 03 A6 */	mtlr r0
/* 807CDF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 807CDF10  4E 80 00 20 */	blr 
