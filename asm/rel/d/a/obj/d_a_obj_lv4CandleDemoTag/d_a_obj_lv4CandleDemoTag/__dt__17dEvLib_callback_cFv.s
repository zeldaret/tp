lbl_80C5D124:
/* 80C5D124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D128  7C 08 02 A6 */	mflr r0
/* 80C5D12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D134  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5D138  41 82 00 1C */	beq lbl_80C5D154
/* 80C5D13C  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C5D310@ha */
/* 80C5D140  38 05 D3 10 */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C5D310@l */
/* 80C5D144  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5D148  7C 80 07 35 */	extsh. r0, r4
/* 80C5D14C  40 81 00 08 */	ble lbl_80C5D154
/* 80C5D150  4B 67 1B ED */	bl __dl__FPv
lbl_80C5D154:
/* 80C5D154  7F E3 FB 78 */	mr r3, r31
/* 80C5D158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D160  7C 08 03 A6 */	mtlr r0
/* 80C5D164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D168  4E 80 00 20 */	blr 
