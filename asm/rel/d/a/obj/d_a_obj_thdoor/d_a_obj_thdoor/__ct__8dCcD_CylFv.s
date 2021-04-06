lbl_80D0E3B0:
/* 80D0E3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0E3B4  7C 08 02 A6 */	mflr r0
/* 80D0E3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0E3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0E3C0  7C 7F 1B 78 */	mr r31, r3
/* 80D0E3C4  4B 37 56 65 */	bl __ct__12dCcD_GObjInfFv
/* 80D0E3C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0E3CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0E3D0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D0E3D4  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D0E79C@ha */
/* 80D0E3D8  38 03 E7 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D0E79C@l */
/* 80D0E3DC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D0E3E0  3C 60 80 D1 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D0E7A8@ha */
/* 80D0E3E4  38 03 E7 A8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D0E7A8@l */
/* 80D0E3E8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D0E3EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D0E3F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D0E3F4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D0E3F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0E3FC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D0E400  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D0E404  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D0E408  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D0E40C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0E410  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D0E414  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0E418  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D0E41C  7F E3 FB 78 */	mr r3, r31
/* 80D0E420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0E424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0E428  7C 08 03 A6 */	mtlr r0
/* 80D0E42C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0E430  4E 80 00 20 */	blr 
