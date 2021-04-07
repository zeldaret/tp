lbl_80C87684:
/* 80C87684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87688  7C 08 02 A6 */	mflr r0
/* 80C8768C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87694  7C 7F 1B 78 */	mr r31, r3
/* 80C87698  4B 3F C3 91 */	bl __ct__12dCcD_GObjInfFv
/* 80C8769C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C876A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C876A4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C876A8  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C87B44@ha */
/* 80C876AC  38 03 7B 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C87B44@l */
/* 80C876B0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C876B4  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C87B50@ha */
/* 80C876B8  38 03 7B 50 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C87B50@l */
/* 80C876BC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C876C0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C876C4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C876C8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C876CC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C876D0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C876D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C876D8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C876DC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C876E0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C876E4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C876E8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C876EC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C876F0  7F E3 FB 78 */	mr r3, r31
/* 80C876F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C876F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C876FC  7C 08 03 A6 */	mtlr r0
/* 80C87700  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87704  4E 80 00 20 */	blr 
