lbl_80CF58E0:
/* 80CF58E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF58E4  7C 08 02 A6 */	mflr r0
/* 80CF58E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF58EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF58F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF58F4  41 82 00 1C */	beq lbl_80CF5910
/* 80CF58F8  3C A0 80 CF */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80CF58FC  38 05 5A E8 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80CF5900  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF5904  7C 80 07 35 */	extsh. r0, r4
/* 80CF5908  40 81 00 08 */	ble lbl_80CF5910
/* 80CF590C  4B 5D 94 30 */	b __dl__FPv
lbl_80CF5910:
/* 80CF5910  7F E3 FB 78 */	mr r3, r31
/* 80CF5914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF5918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF591C  7C 08 03 A6 */	mtlr r0
/* 80CF5920  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5924  4E 80 00 20 */	blr 
