lbl_8045C4D4:
/* 8045C4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C4D8  7C 08 02 A6 */	mflr r0
/* 8045C4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C4E4  93 C1 00 08 */	stw r30, 8(r1)
/* 8045C4E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8045C4EC  7C 9F 23 78 */	mr r31, r4
/* 8045C4F0  41 82 00 A8 */	beq lbl_8045C598
/* 8045C4F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha /* 0x803AC0E0@ha */
/* 8045C4F8  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l /* 0x803AC0E0@l */
/* 8045C4FC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8045C500  38 03 00 2C */	addi r0, r3, 0x2c
/* 8045C504  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8045C508  38 03 00 84 */	addi r0, r3, 0x84
/* 8045C50C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8045C510  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8045C514  41 82 00 68 */	beq lbl_8045C57C
/* 8045C518  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha /* 0x803C366C@ha */
/* 8045C51C  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l /* 0x803C366C@l */
/* 8045C520  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8045C524  38 03 00 58 */	addi r0, r3, 0x58
/* 8045C528  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8045C52C  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8045C530  41 82 00 24 */	beq lbl_8045C554
/* 8045C534  3C 60 80 46 */	lis r3, __vt__8cM3dGTri@ha /* 0x8045CDA8@ha */
/* 8045C538  38 03 CD A8 */	addi r0, r3, __vt__8cM3dGTri@l /* 0x8045CDA8@l */
/* 8045C53C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8045C540  34 1E 01 24 */	addic. r0, r30, 0x124
/* 8045C544  41 82 00 10 */	beq lbl_8045C554
/* 8045C548  3C 60 80 46 */	lis r3, __vt__8cM3dGPla@ha /* 0x8045CD9C@ha */
/* 8045C54C  38 03 CD 9C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8045CD9C@l */
/* 8045C550  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8045C554:
/* 8045C554  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8045C558  41 82 00 24 */	beq lbl_8045C57C
/* 8045C55C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8045C560  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8045C564  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8045C568  34 1E 01 04 */	addic. r0, r30, 0x104
/* 8045C56C  41 82 00 10 */	beq lbl_8045C57C
/* 8045C570  3C 60 80 46 */	lis r3, __vt__8cM3dGAab@ha /* 0x8045CDC0@ha */
/* 8045C574  38 03 CD C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8045CDC0@l */
/* 8045C578  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_8045C57C:
/* 8045C57C  7F C3 F3 78 */	mr r3, r30
/* 8045C580  38 80 00 00 */	li r4, 0
/* 8045C584  4B C2 7B 61 */	bl __dt__12dCcD_GObjInfFv
/* 8045C588  7F E0 07 35 */	extsh. r0, r31
/* 8045C58C  40 81 00 0C */	ble lbl_8045C598
/* 8045C590  7F C3 F3 78 */	mr r3, r30
/* 8045C594  4B E7 27 A9 */	bl __dl__FPv
lbl_8045C598:
/* 8045C598  7F C3 F3 78 */	mr r3, r30
/* 8045C59C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C5A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045C5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C5A8  7C 08 03 A6 */	mtlr r0
/* 8045C5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C5B0  4E 80 00 20 */	blr 
