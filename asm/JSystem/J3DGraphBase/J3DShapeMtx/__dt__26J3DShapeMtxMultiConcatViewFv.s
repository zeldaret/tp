lbl_8031461C:
/* 8031461C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314620  7C 08 02 A6 */	mflr r0
/* 80314624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031462C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80314630  41 82 00 40 */	beq lbl_80314670
/* 80314634  3C 60 80 3D */	lis r3, __vt__26J3DShapeMtxMultiConcatView@ha /* 0x803CDBD4@ha */
/* 80314638  38 03 DB D4 */	addi r0, r3, __vt__26J3DShapeMtxMultiConcatView@l /* 0x803CDBD4@l */
/* 8031463C  90 1F 00 00 */	stw r0, 0(r31)
/* 80314640  41 82 00 20 */	beq lbl_80314660
/* 80314644  3C 60 80 3D */	lis r3, __vt__21J3DShapeMtxConcatView@ha /* 0x803CDC1C@ha */
/* 80314648  38 03 DC 1C */	addi r0, r3, __vt__21J3DShapeMtxConcatView@l /* 0x803CDC1C@l */
/* 8031464C  90 1F 00 00 */	stw r0, 0(r31)
/* 80314650  41 82 00 10 */	beq lbl_80314660
/* 80314654  3C 60 80 3D */	lis r3, __vt__11J3DShapeMtx@ha /* 0x803CDC44@ha */
/* 80314658  38 03 DC 44 */	addi r0, r3, __vt__11J3DShapeMtx@l /* 0x803CDC44@l */
/* 8031465C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80314660:
/* 80314660  7C 80 07 35 */	extsh. r0, r4
/* 80314664  40 81 00 0C */	ble lbl_80314670
/* 80314668  7F E3 FB 78 */	mr r3, r31
/* 8031466C  4B FB A6 D1 */	bl __dl__FPv
lbl_80314670:
/* 80314670  7F E3 FB 78 */	mr r3, r31
/* 80314674  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80314678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031467C  7C 08 03 A6 */	mtlr r0
/* 80314680  38 21 00 10 */	addi r1, r1, 0x10
/* 80314684  4E 80 00 20 */	blr 
