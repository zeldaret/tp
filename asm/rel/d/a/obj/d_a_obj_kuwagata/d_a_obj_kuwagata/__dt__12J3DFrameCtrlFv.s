lbl_80C4A658:
/* 80C4A658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4A65C  7C 08 02 A6 */	mflr r0
/* 80C4A660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4A664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4A668  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4A66C  41 82 00 1C */	beq lbl_80C4A688
/* 80C4A670  3C A0 80 C5 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C4D640@ha */
/* 80C4A674  38 05 D6 40 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C4D640@l */
/* 80C4A678  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4A67C  7C 80 07 35 */	extsh. r0, r4
/* 80C4A680  40 81 00 08 */	ble lbl_80C4A688
/* 80C4A684  4B 68 46 B9 */	bl __dl__FPv
lbl_80C4A688:
/* 80C4A688  7F E3 FB 78 */	mr r3, r31
/* 80C4A68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4A690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4A694  7C 08 03 A6 */	mtlr r0
/* 80C4A698  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4A69C  4E 80 00 20 */	blr 
