lbl_80C83704:
/* 80C83704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83708  7C 08 02 A6 */	mflr r0
/* 80C8370C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83714  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C83718  41 82 00 1C */	beq lbl_80C83734
/* 80C8371C  3C A0 80 C8 */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80C83720  38 05 38 A8 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80C83724  90 1F 00 00 */	stw r0, 0(r31)
/* 80C83728  7C 80 07 35 */	extsh. r0, r4
/* 80C8372C  40 81 00 08 */	ble lbl_80C83734
/* 80C83730  4B 64 B6 0C */	b __dl__FPv
lbl_80C83734:
/* 80C83734  7F E3 FB 78 */	mr r3, r31
/* 80C83738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8373C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83740  7C 08 03 A6 */	mtlr r0
/* 80C83744  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83748  4E 80 00 20 */	blr 
