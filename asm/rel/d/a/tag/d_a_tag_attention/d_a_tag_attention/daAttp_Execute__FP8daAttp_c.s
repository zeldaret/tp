lbl_804D56BC:
/* 804D56BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D56C0  7C 08 02 A6 */	mflr r0
/* 804D56C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D56C8  4B FF FC E5 */	bl execute__8daAttp_cFv
/* 804D56CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D56D0  7C 08 03 A6 */	mtlr r0
/* 804D56D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D56D8  4E 80 00 20 */	blr 
