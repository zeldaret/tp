lbl_80D2F850:
/* 80D2F850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2F854  7C 08 02 A6 */	mflr r0
/* 80D2F858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2F85C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2F860  7C 7F 1B 78 */	mr r31, r3
/* 80D2F864  4B 35 41 C5 */	bl __ct__12dCcD_GObjInfFv
/* 80D2F868  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D2F86C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D2F870  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D2F874  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D2FE40@ha */
/* 80D2F878  38 03 FE 40 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D2FE40@l */
/* 80D2F87C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D2F880  3C 60 80 D3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D2FE1C@ha */
/* 80D2F884  38 03 FE 1C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D2FE1C@l */
/* 80D2F888  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D2F88C  3C 60 80 D3 */	lis r3, __vt__8cM3dGTri@ha /* 0x80D2FE28@ha */
/* 80D2F890  38 03 FE 28 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x80D2FE28@l */
/* 80D2F894  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D2F898  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha /* 0x803C366C@ha */
/* 80D2F89C  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l /* 0x803C366C@l */
/* 80D2F8A0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D2F8A4  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2F8A8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D2F8AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha /* 0x803AC0E0@ha */
/* 80D2F8B0  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l /* 0x803AC0E0@l */
/* 80D2F8B4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D2F8B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2F8BC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D2F8C0  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2F8C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D2F8C8  7F E3 FB 78 */	mr r3, r31
/* 80D2F8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2F8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2F8D4  7C 08 03 A6 */	mtlr r0
/* 80D2F8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2F8DC  4E 80 00 20 */	blr 
