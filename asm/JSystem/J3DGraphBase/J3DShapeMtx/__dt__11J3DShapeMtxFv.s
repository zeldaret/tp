lbl_80314798:
/* 80314798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031479C  7C 08 02 A6 */	mflr r0
/* 803147A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803147A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803147A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803147AC  41 82 00 1C */	beq lbl_803147C8
/* 803147B0  3C A0 80 3D */	lis r5, __vt__11J3DShapeMtx@ha
/* 803147B4  38 05 DC 44 */	addi r0, r5, __vt__11J3DShapeMtx@l
/* 803147B8  90 1F 00 00 */	stw r0, 0(r31)
/* 803147BC  7C 80 07 35 */	extsh. r0, r4
/* 803147C0  40 81 00 08 */	ble lbl_803147C8
/* 803147C4  4B FB A5 79 */	bl __dl__FPv
lbl_803147C8:
/* 803147C8  7F E3 FB 78 */	mr r3, r31
/* 803147CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803147D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803147D4  7C 08 03 A6 */	mtlr r0
/* 803147D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803147DC  4E 80 00 20 */	blr 
