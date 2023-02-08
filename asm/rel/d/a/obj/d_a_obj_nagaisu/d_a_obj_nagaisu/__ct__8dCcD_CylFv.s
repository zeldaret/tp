lbl_80C9FBC8:
/* 80C9FBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9FBCC  7C 08 02 A6 */	mflr r0
/* 80C9FBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9FBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9FBD8  7C 7F 1B 78 */	mr r31, r3
/* 80C9FBDC  4B 3E 3E 4D */	bl __ct__12dCcD_GObjInfFv
/* 80C9FBE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C9FBE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C9FBE8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C9FBEC  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha /* 0x80CA0468@ha */
/* 80C9FBF0  38 03 04 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CA0468@l */
/* 80C9FBF4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C9FBF8  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CA0474@ha */
/* 80C9FBFC  38 03 04 74 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CA0474@l */
/* 80C9FC00  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C9FC04  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C9FC08  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C9FC0C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C9FC10  38 03 00 58 */	addi r0, r3, 0x58
/* 80C9FC14  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C9FC18  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C9FC1C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C9FC20  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C9FC24  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C9FC28  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C9FC2C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C9FC30  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C9FC34  7F E3 FB 78 */	mr r3, r31
/* 80C9FC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9FC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9FC40  7C 08 03 A6 */	mtlr r0
/* 80C9FC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9FC48  4E 80 00 20 */	blr 
