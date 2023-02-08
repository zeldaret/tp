lbl_8045C5B4:
/* 8045C5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C5B8  7C 08 02 A6 */	mflr r0
/* 8045C5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C5C4  7C 7F 1B 78 */	mr r31, r3
/* 8045C5C8  4B C2 74 61 */	bl __ct__12dCcD_GObjInfFv
/* 8045C5CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8045C5D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8045C5D4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8045C5D8  3C 60 80 46 */	lis r3, __vt__8cM3dGAab@ha /* 0x8045CDC0@ha */
/* 8045C5DC  38 03 CD C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8045CDC0@l */
/* 8045C5E0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8045C5E4  3C 60 80 46 */	lis r3, __vt__8cM3dGPla@ha /* 0x8045CD9C@ha */
/* 8045C5E8  38 03 CD 9C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8045CD9C@l */
/* 8045C5EC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8045C5F0  3C 60 80 46 */	lis r3, __vt__8cM3dGTri@ha /* 0x8045CDA8@ha */
/* 8045C5F4  38 03 CD A8 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x8045CDA8@l */
/* 8045C5F8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8045C5FC  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha /* 0x803C366C@ha */
/* 8045C600  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l /* 0x803C366C@l */
/* 8045C604  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8045C608  38 03 00 58 */	addi r0, r3, 0x58
/* 8045C60C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8045C610  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha /* 0x803AC0E0@ha */
/* 8045C614  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l /* 0x803AC0E0@l */
/* 8045C618  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8045C61C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8045C620  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8045C624  38 03 00 84 */	addi r0, r3, 0x84
/* 8045C628  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8045C62C  7F E3 FB 78 */	mr r3, r31
/* 8045C630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C638  7C 08 03 A6 */	mtlr r0
/* 8045C63C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C640  4E 80 00 20 */	blr 
