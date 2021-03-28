lbl_80D67988:
/* 80D67988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6798C  7C 08 02 A6 */	mflr r0
/* 80D67990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67994  4B FF FE D9 */	bl Delete__9daTitle_cFv
/* 80D67998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6799C  7C 08 03 A6 */	mtlr r0
/* 80D679A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D679A4  4E 80 00 20 */	blr 
