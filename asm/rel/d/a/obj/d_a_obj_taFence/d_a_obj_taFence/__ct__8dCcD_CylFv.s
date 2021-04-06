lbl_80D053E0:
/* 80D053E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D053E4  7C 08 02 A6 */	mflr r0
/* 80D053E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D053EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D053F0  7C 7F 1B 78 */	mr r31, r3
/* 80D053F4  4B 37 E6 35 */	bl __ct__12dCcD_GObjInfFv
/* 80D053F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D053FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D05400  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D05404  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D062D0@ha */
/* 80D05408  38 03 62 D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D062D0@l */
/* 80D0540C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D05410  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D062DC@ha */
/* 80D05414  38 03 62 DC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D062DC@l */
/* 80D05418  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D0541C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D05420  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D05424  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D05428  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0542C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D05430  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D05434  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D05438  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D0543C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D05440  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D05444  38 03 00 84 */	addi r0, r3, 0x84
/* 80D05448  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D0544C  7F E3 FB 78 */	mr r3, r31
/* 80D05450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D05454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05458  7C 08 03 A6 */	mtlr r0
/* 80D0545C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05460  4E 80 00 20 */	blr 
