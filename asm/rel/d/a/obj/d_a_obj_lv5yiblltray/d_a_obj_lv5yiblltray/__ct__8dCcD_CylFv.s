lbl_80C706C4:
/* 80C706C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C706C8  7C 08 02 A6 */	mflr r0
/* 80C706CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C706D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C706D4  7C 7F 1B 78 */	mr r31, r3
/* 80C706D8  4B 41 33 51 */	bl __ct__12dCcD_GObjInfFv
/* 80C706DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C706E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C706E4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C706E8  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C70AF4@ha */
/* 80C706EC  38 03 0A F4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C70AF4@l */
/* 80C706F0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C706F4  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C70B00@ha */
/* 80C706F8  38 03 0B 00 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C70B00@l */
/* 80C706FC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C70700  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C70704  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C70708  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C7070C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C70710  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C70714  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C70718  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C7071C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C70720  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C70724  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C70728  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7072C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C70730  7F E3 FB 78 */	mr r3, r31
/* 80C70734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7073C  7C 08 03 A6 */	mtlr r0
/* 80C70740  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70744  4E 80 00 20 */	blr 
