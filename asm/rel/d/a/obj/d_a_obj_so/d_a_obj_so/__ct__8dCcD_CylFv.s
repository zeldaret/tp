lbl_80CE379C:
/* 80CE379C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE37A0  7C 08 02 A6 */	mflr r0
/* 80CE37A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE37A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE37AC  7C 7F 1B 78 */	mr r31, r3
/* 80CE37B0  4B 3A 02 79 */	bl __ct__12dCcD_GObjInfFv
/* 80CE37B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CE37B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CE37BC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CE37C0  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha /* 0x80CE3C0C@ha */
/* 80CE37C4  38 03 3C 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CE3C0C@l */
/* 80CE37C8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CE37CC  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CE3C18@ha */
/* 80CE37D0  38 03 3C 18 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CE3C18@l */
/* 80CE37D4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CE37D8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CE37DC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CE37E0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CE37E4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE37E8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CE37EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CE37F0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CE37F4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CE37F8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE37FC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CE3800  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE3804  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CE3808  7F E3 FB 78 */	mr r3, r31
/* 80CE380C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3814  7C 08 03 A6 */	mtlr r0
/* 80CE3818  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE381C  4E 80 00 20 */	blr 
