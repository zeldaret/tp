lbl_80C8285C:
/* 80C8285C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82860  7C 08 02 A6 */	mflr r0
/* 80C82864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8286C  7C 7F 1B 78 */	mr r31, r3
/* 80C82870  4B 40 11 B9 */	bl __ct__12dCcD_GObjInfFv
/* 80C82874  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C82878  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C8287C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C82880  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C82C60@ha */
/* 80C82884  38 03 2C 60 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C82C60@l */
/* 80C82888  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C8288C  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C82C6C@ha */
/* 80C82890  38 03 2C 6C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C82C6C@l */
/* 80C82894  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C82898  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C8289C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C828A0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C828A4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C828A8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C828AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C828B0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C828B4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C828B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C828BC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C828C0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C828C4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C828C8  7F E3 FB 78 */	mr r3, r31
/* 80C828CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C828D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C828D4  7C 08 03 A6 */	mtlr r0
/* 80C828D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C828DC  4E 80 00 20 */	blr 
