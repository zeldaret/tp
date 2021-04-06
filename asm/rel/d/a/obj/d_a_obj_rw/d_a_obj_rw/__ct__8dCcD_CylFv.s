lbl_80CC37B0:
/* 80CC37B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC37B4  7C 08 02 A6 */	mflr r0
/* 80CC37B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC37BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC37C0  7C 7F 1B 78 */	mr r31, r3
/* 80CC37C4  4B 3C 02 65 */	bl __ct__12dCcD_GObjInfFv
/* 80CC37C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CC37CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CC37D0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CC37D4  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC3C54@ha */
/* 80CC37D8  38 03 3C 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC3C54@l */
/* 80CC37DC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CC37E0  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CC3C60@ha */
/* 80CC37E4  38 03 3C 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CC3C60@l */
/* 80CC37E8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CC37EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CC37F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CC37F4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CC37F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CC37FC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CC3800  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CC3804  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CC3808  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CC380C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CC3810  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CC3814  38 03 00 84 */	addi r0, r3, 0x84
/* 80CC3818  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CC381C  7F E3 FB 78 */	mr r3, r31
/* 80CC3820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3828  7C 08 03 A6 */	mtlr r0
/* 80CC382C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3830  4E 80 00 20 */	blr 
