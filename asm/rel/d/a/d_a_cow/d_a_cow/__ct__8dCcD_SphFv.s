lbl_806624A0:
/* 806624A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806624A4  7C 08 02 A6 */	mflr r0
/* 806624A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806624AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806624B0  7C 7F 1B 78 */	mr r31, r3
/* 806624B4  4B A2 15 74 */	b __ct__12dCcD_GObjInfFv
/* 806624B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806624BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806624C0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806624C4  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha
/* 806624C8  38 03 34 04 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806624CC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806624D0  3C 60 80 66 */	lis r3, __vt__8cM3dGSph@ha
/* 806624D4  38 03 34 10 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806624D8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806624DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806624E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806624E4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806624E8  38 03 00 58 */	addi r0, r3, 0x58
/* 806624EC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806624F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806624F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806624F8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806624FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80662500  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80662504  38 03 00 84 */	addi r0, r3, 0x84
/* 80662508  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8066250C  7F E3 FB 78 */	mr r3, r31
/* 80662510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80662514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80662518  7C 08 03 A6 */	mtlr r0
/* 8066251C  38 21 00 10 */	addi r1, r1, 0x10
/* 80662520  4E 80 00 20 */	blr 
