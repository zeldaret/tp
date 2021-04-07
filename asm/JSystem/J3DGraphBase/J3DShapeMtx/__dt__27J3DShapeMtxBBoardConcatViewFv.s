lbl_803145A4:
/* 803145A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803145A8  7C 08 02 A6 */	mflr r0
/* 803145AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803145B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803145B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803145B8  41 82 00 40 */	beq lbl_803145F8
/* 803145BC  3C 60 80 3D */	lis r3, __vt__27J3DShapeMtxBBoardConcatView@ha /* 0x803CDBAC@ha */
/* 803145C0  38 03 DB AC */	addi r0, r3, __vt__27J3DShapeMtxBBoardConcatView@l /* 0x803CDBAC@l */
/* 803145C4  90 1F 00 00 */	stw r0, 0(r31)
/* 803145C8  41 82 00 20 */	beq lbl_803145E8
/* 803145CC  3C 60 80 3D */	lis r3, __vt__21J3DShapeMtxConcatView@ha /* 0x803CDC1C@ha */
/* 803145D0  38 03 DC 1C */	addi r0, r3, __vt__21J3DShapeMtxConcatView@l /* 0x803CDC1C@l */
/* 803145D4  90 1F 00 00 */	stw r0, 0(r31)
/* 803145D8  41 82 00 10 */	beq lbl_803145E8
/* 803145DC  3C 60 80 3D */	lis r3, __vt__11J3DShapeMtx@ha /* 0x803CDC44@ha */
/* 803145E0  38 03 DC 44 */	addi r0, r3, __vt__11J3DShapeMtx@l /* 0x803CDC44@l */
/* 803145E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_803145E8:
/* 803145E8  7C 80 07 35 */	extsh. r0, r4
/* 803145EC  40 81 00 0C */	ble lbl_803145F8
/* 803145F0  7F E3 FB 78 */	mr r3, r31
/* 803145F4  4B FB A7 49 */	bl __dl__FPv
lbl_803145F8:
/* 803145F8  7F E3 FB 78 */	mr r3, r31
/* 803145FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80314600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314604  7C 08 03 A6 */	mtlr r0
/* 80314608  38 21 00 10 */	addi r1, r1, 0x10
/* 8031460C  4E 80 00 20 */	blr 
