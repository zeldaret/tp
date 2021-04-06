lbl_80BAA13C:
/* 80BAA13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAA140  7C 08 02 A6 */	mflr r0
/* 80BAA144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAA148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAA14C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAA150  41 82 00 1C */	beq lbl_80BAA16C
/* 80BAA154  3C A0 80 BB */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BACC64@ha */
/* 80BAA158  38 05 CC 64 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BACC64@l */
/* 80BAA15C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAA160  7C 80 07 35 */	extsh. r0, r4
/* 80BAA164  40 81 00 08 */	ble lbl_80BAA16C
/* 80BAA168  4B 72 4B D5 */	bl __dl__FPv
lbl_80BAA16C:
/* 80BAA16C  7F E3 FB 78 */	mr r3, r31
/* 80BAA170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAA174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAA178  7C 08 03 A6 */	mtlr r0
/* 80BAA17C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAA180  4E 80 00 20 */	blr 
