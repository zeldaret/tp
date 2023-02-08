lbl_805C590C:
/* 805C590C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C5910  7C 08 02 A6 */	mflr r0
/* 805C5914  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C591C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C5920  41 82 00 1C */	beq lbl_805C593C
/* 805C5924  3C A0 80 5C */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x805C78A0@ha */
/* 805C5928  38 05 78 A0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x805C78A0@l */
/* 805C592C  90 1F 00 00 */	stw r0, 0(r31)
/* 805C5930  7C 80 07 35 */	extsh. r0, r4
/* 805C5934  40 81 00 08 */	ble lbl_805C593C
/* 805C5938  4B D0 94 05 */	bl __dl__FPv
lbl_805C593C:
/* 805C593C  7F E3 FB 78 */	mr r3, r31
/* 805C5940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C5944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5948  7C 08 03 A6 */	mtlr r0
/* 805C594C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C5950  4E 80 00 20 */	blr 
