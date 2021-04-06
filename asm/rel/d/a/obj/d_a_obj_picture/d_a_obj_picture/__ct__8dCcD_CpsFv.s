lbl_80CAD5EC:
/* 80CAD5EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD5F0  7C 08 02 A6 */	mflr r0
/* 80CAD5F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD5F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD5FC  7C 7F 1B 78 */	mr r31, r3
/* 80CAD600  4B 3D 64 29 */	bl __ct__12dCcD_GObjInfFv
/* 80CAD604  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CAD608  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CAD60C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CAD610  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha /* 0x80CAF234@ha */
/* 80CAD614  38 03 F2 34 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CAF234@l */
/* 80CAD618  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CAD61C  38 7F 01 24 */	addi r3, r31, 0x124
/* 80CAD620  4B 5C 19 69 */	bl __ct__8cM3dGCpsFv
/* 80CAD624  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80CAD628  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80CAD62C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CAD630  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAD634  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80CAD638  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80CAD63C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80CAD640  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CAD644  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAD648  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CAD64C  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAD650  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80CAD654  7F E3 FB 78 */	mr r3, r31
/* 80CAD658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD660  7C 08 03 A6 */	mtlr r0
/* 80CAD664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD668  4E 80 00 20 */	blr 
