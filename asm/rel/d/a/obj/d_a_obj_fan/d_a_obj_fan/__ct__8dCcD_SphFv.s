lbl_80BE5BF8:
/* 80BE5BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5BFC  7C 08 02 A6 */	mflr r0
/* 80BE5C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5C08  7C 7F 1B 78 */	mr r31, r3
/* 80BE5C0C  4B 49 DE 1D */	bl __ct__12dCcD_GObjInfFv
/* 80BE5C10  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BE5C14  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BE5C18  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BE5C1C  3C 60 80 BE */	lis r3, __vt__8cM3dGAab@ha /* 0x80BE5F34@ha */
/* 80BE5C20  38 03 5F 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BE5F34@l */
/* 80BE5C24  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BE5C28  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha /* 0x80BE5F40@ha */
/* 80BE5C2C  38 03 5F 40 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BE5F40@l */
/* 80BE5C30  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BE5C34  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BE5C38  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BE5C3C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BE5C40  38 03 00 58 */	addi r0, r3, 0x58
/* 80BE5C44  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BE5C48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BE5C4C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BE5C50  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BE5C54  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BE5C58  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BE5C5C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BE5C60  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BE5C64  7F E3 FB 78 */	mr r3, r31
/* 80BE5C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5C70  7C 08 03 A6 */	mtlr r0
/* 80BE5C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5C78  4E 80 00 20 */	blr 
