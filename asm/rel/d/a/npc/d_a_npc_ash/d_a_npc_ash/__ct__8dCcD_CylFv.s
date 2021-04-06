lbl_809584FC:
/* 809584FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80958500  7C 08 02 A6 */	mflr r0
/* 80958504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80958508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095850C  7C 7F 1B 78 */	mr r31, r3
/* 80958510  4B 72 B5 19 */	bl __ct__12dCcD_GObjInfFv
/* 80958514  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80958518  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8095851C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80958520  3C 60 80 96 */	lis r3, __vt__8cM3dGAab@ha /* 0x8095DD08@ha */
/* 80958524  38 03 DD 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8095DD08@l */
/* 80958528  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8095852C  3C 60 80 96 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8095DD14@ha */
/* 80958530  38 03 DD 14 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8095DD14@l */
/* 80958534  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80958538  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8095853C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80958540  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80958544  38 03 00 58 */	addi r0, r3, 0x58
/* 80958548  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8095854C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80958550  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80958554  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80958558  38 03 00 2C */	addi r0, r3, 0x2c
/* 8095855C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80958560  38 03 00 84 */	addi r0, r3, 0x84
/* 80958564  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80958568  7F E3 FB 78 */	mr r3, r31
/* 8095856C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80958570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80958574  7C 08 03 A6 */	mtlr r0
/* 80958578  38 21 00 10 */	addi r1, r1, 0x10
/* 8095857C  4E 80 00 20 */	blr 
