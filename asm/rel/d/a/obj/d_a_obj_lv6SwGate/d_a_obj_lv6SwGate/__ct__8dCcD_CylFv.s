lbl_80C745B0:
/* 80C745B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C745B4  7C 08 02 A6 */	mflr r0
/* 80C745B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C745BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C745C0  7C 7F 1B 78 */	mr r31, r3
/* 80C745C4  4B 40 F4 65 */	bl __ct__12dCcD_GObjInfFv
/* 80C745C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C745CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C745D0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C745D4  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C756DC@ha */
/* 80C745D8  38 03 56 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C756DC@l */
/* 80C745DC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C745E0  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C756E8@ha */
/* 80C745E4  38 03 56 E8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C756E8@l */
/* 80C745E8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C745EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C745F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C745F4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C745F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C745FC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C74600  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C74604  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C74608  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C7460C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C74610  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C74614  38 03 00 84 */	addi r0, r3, 0x84
/* 80C74618  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C7461C  7F E3 FB 78 */	mr r3, r31
/* 80C74620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C74624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C74628  7C 08 03 A6 */	mtlr r0
/* 80C7462C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C74630  4E 80 00 20 */	blr 
