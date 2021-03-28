lbl_807CCF3C:
/* 807CCF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CCF40  7C 08 02 A6 */	mflr r0
/* 807CCF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CCF48  4B FF FD DD */	bl execute__8daE_VA_cFv
/* 807CCF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CCF50  7C 08 03 A6 */	mtlr r0
/* 807CCF54  38 21 00 10 */	addi r1, r1, 0x10
/* 807CCF58  4E 80 00 20 */	blr 
