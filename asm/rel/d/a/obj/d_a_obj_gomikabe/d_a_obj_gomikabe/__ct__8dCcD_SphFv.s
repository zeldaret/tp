lbl_80BFF680:
/* 80BFF680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF684  7C 08 02 A6 */	mflr r0
/* 80BFF688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFF690  7C 7F 1B 78 */	mr r31, r3
/* 80BFF694  4B 48 43 95 */	bl __ct__12dCcD_GObjInfFv
/* 80BFF698  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BFF69C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BFF6A0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BFF6A4  3C 60 80 C0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80BFFDB4@ha */
/* 80BFF6A8  38 03 FD B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BFFDB4@l */
/* 80BFF6AC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BFF6B0  3C 60 80 C0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80BFFDC0@ha */
/* 80BFF6B4  38 03 FD C0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BFFDC0@l */
/* 80BFF6B8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BFF6BC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BFF6C0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BFF6C4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BFF6C8  38 03 00 58 */	addi r0, r3, 0x58
/* 80BFF6CC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BFF6D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BFF6D4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BFF6D8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BFF6DC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BFF6E0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BFF6E4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BFF6E8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BFF6EC  7F E3 FB 78 */	mr r3, r31
/* 80BFF6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFF6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF6F8  7C 08 03 A6 */	mtlr r0
/* 80BFF6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF700  4E 80 00 20 */	blr 
