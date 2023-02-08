lbl_80C53144:
/* 80C53144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53148  7C 08 02 A6 */	mflr r0
/* 80C5314C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53154  7C 7F 1B 78 */	mr r31, r3
/* 80C53158  4B 43 08 D1 */	bl __ct__12dCcD_GObjInfFv
/* 80C5315C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C53160  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C53164  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C53168  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C53438@ha */
/* 80C5316C  38 03 34 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C53438@l */
/* 80C53170  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C53174  3C 60 80 C5 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C53444@ha */
/* 80C53178  38 03 34 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C53444@l */
/* 80C5317C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C53180  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C53184  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C53188  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C5318C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C53190  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C53194  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C53198  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C5319C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C531A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C531A4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C531A8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C531AC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C531B0  7F E3 FB 78 */	mr r3, r31
/* 80C531B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C531B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C531BC  7C 08 03 A6 */	mtlr r0
/* 80C531C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C531C4  4E 80 00 20 */	blr 
