lbl_80CC3990:
/* 80CC3990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3994  7C 08 02 A6 */	mflr r0
/* 80CC3998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC399C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC39A0  7C 7F 1B 78 */	mr r31, r3
/* 80CC39A4  4B 3C 00 85 */	bl __ct__12dCcD_GObjInfFv
/* 80CC39A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CC39AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CC39B0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CC39B4  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC3C54@ha */
/* 80CC39B8  38 03 3C 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC3C54@l */
/* 80CC39BC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CC39C0  3C 60 80 CC */	lis r3, __vt__8cM3dGSph@ha /* 0x80CC3C48@ha */
/* 80CC39C4  38 03 3C 48 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CC3C48@l */
/* 80CC39C8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CC39CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CC39D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CC39D4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CC39D8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC39DC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CC39E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CC39E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CC39E8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CC39EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC39F0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CC39F4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC39F8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CC39FC  7F E3 FB 78 */	mr r3, r31
/* 80CC3A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3A08  7C 08 03 A6 */	mtlr r0
/* 80CC3A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3A10  4E 80 00 20 */	blr 
