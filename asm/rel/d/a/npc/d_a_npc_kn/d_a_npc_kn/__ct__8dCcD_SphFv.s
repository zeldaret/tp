lbl_80A3C1C8:
/* 80A3C1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C1CC  7C 08 02 A6 */	mflr r0
/* 80A3C1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C1D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C1D8  7C 7F 1B 78 */	mr r31, r3
/* 80A3C1DC  4B 64 78 4D */	bl __ct__12dCcD_GObjInfFv
/* 80A3C1E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A3C1E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A3C1E8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80A3C1EC  3C 60 80 A4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A43210@ha */
/* 80A3C1F0  38 03 32 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A43210@l */
/* 80A3C1F4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80A3C1F8  3C 60 80 A4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80A43198@ha */
/* 80A3C1FC  38 03 31 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80A43198@l */
/* 80A3C200  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80A3C204  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80A3C208  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80A3C20C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80A3C210  38 03 00 58 */	addi r0, r3, 0x58
/* 80A3C214  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80A3C218  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80A3C21C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80A3C220  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80A3C224  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A3C228  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80A3C22C  38 03 00 84 */	addi r0, r3, 0x84
/* 80A3C230  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80A3C234  7F E3 FB 78 */	mr r3, r31
/* 80A3C238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C240  7C 08 03 A6 */	mtlr r0
/* 80A3C244  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C248  4E 80 00 20 */	blr 
