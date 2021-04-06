lbl_80140FA0:
/* 80140FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140FA4  7C 08 02 A6 */	mflr r0
/* 80140FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140FB0  7C 7F 1B 78 */	mr r31, r3
/* 80140FB4  4B F4 2A 75 */	bl __ct__12dCcD_GObjInfFv
/* 80140FB8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80140FBC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80140FC0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80140FC4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80140FC8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80140FCC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80140FD0  38 7F 01 24 */	addi r3, r31, 0x124
/* 80140FD4  48 12 DF B5 */	bl __ct__8cM3dGCpsFv
/* 80140FD8  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80140FDC  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80140FE0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80140FE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80140FE8  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80140FEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80140FF0  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80140FF4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80140FF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80140FFC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80141000  38 03 00 84 */	addi r0, r3, 0x84
/* 80141004  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80141008  7F E3 FB 78 */	mr r3, r31
/* 8014100C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80141010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141014  7C 08 03 A6 */	mtlr r0
/* 80141018  38 21 00 10 */	addi r1, r1, 0x10
/* 8014101C  4E 80 00 20 */	blr 
