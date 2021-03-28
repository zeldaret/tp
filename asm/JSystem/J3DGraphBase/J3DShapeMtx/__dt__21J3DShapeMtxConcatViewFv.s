lbl_80314730:
/* 80314730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314734  7C 08 02 A6 */	mflr r0
/* 80314738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031473C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80314740  7C 7F 1B 79 */	or. r31, r3, r3
/* 80314744  41 82 00 30 */	beq lbl_80314774
/* 80314748  3C 60 80 3D */	lis r3, __vt__21J3DShapeMtxConcatView@ha
/* 8031474C  38 03 DC 1C */	addi r0, r3, __vt__21J3DShapeMtxConcatView@l
/* 80314750  90 1F 00 00 */	stw r0, 0(r31)
/* 80314754  41 82 00 10 */	beq lbl_80314764
/* 80314758  3C 60 80 3D */	lis r3, __vt__11J3DShapeMtx@ha
/* 8031475C  38 03 DC 44 */	addi r0, r3, __vt__11J3DShapeMtx@l
/* 80314760  90 1F 00 00 */	stw r0, 0(r31)
lbl_80314764:
/* 80314764  7C 80 07 35 */	extsh. r0, r4
/* 80314768  40 81 00 0C */	ble lbl_80314774
/* 8031476C  7F E3 FB 78 */	mr r3, r31
/* 80314770  4B FB A5 CD */	bl __dl__FPv
lbl_80314774:
/* 80314774  7F E3 FB 78 */	mr r3, r31
/* 80314778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031477C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314780  7C 08 03 A6 */	mtlr r0
/* 80314784  38 21 00 10 */	addi r1, r1, 0x10
/* 80314788  4E 80 00 20 */	blr 
