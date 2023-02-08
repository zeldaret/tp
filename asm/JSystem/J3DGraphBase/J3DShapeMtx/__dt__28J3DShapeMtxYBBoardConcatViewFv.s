lbl_80314520:
/* 80314520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314524  7C 08 02 A6 */	mflr r0
/* 80314528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031452C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80314530  7C 7F 1B 79 */	or. r31, r3, r3
/* 80314534  41 82 00 40 */	beq lbl_80314574
/* 80314538  3C 60 80 3D */	lis r3, __vt__28J3DShapeMtxYBBoardConcatView@ha /* 0x803CDB84@ha */
/* 8031453C  38 03 DB 84 */	addi r0, r3, __vt__28J3DShapeMtxYBBoardConcatView@l /* 0x803CDB84@l */
/* 80314540  90 1F 00 00 */	stw r0, 0(r31)
/* 80314544  41 82 00 20 */	beq lbl_80314564
/* 80314548  3C 60 80 3D */	lis r3, __vt__21J3DShapeMtxConcatView@ha /* 0x803CDC1C@ha */
/* 8031454C  38 03 DC 1C */	addi r0, r3, __vt__21J3DShapeMtxConcatView@l /* 0x803CDC1C@l */
/* 80314550  90 1F 00 00 */	stw r0, 0(r31)
/* 80314554  41 82 00 10 */	beq lbl_80314564
/* 80314558  3C 60 80 3D */	lis r3, __vt__11J3DShapeMtx@ha /* 0x803CDC44@ha */
/* 8031455C  38 03 DC 44 */	addi r0, r3, __vt__11J3DShapeMtx@l /* 0x803CDC44@l */
/* 80314560  90 1F 00 00 */	stw r0, 0(r31)
lbl_80314564:
/* 80314564  7C 80 07 35 */	extsh. r0, r4
/* 80314568  40 81 00 0C */	ble lbl_80314574
/* 8031456C  7F E3 FB 78 */	mr r3, r31
/* 80314570  4B FB A7 CD */	bl __dl__FPv
lbl_80314574:
/* 80314574  7F E3 FB 78 */	mr r3, r31
/* 80314578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031457C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314580  7C 08 03 A6 */	mtlr r0
/* 80314584  38 21 00 10 */	addi r1, r1, 0x10
/* 80314588  4E 80 00 20 */	blr 
