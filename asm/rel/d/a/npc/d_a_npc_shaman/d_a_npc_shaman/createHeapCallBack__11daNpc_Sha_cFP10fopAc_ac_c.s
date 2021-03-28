lbl_80AE36B4:
/* 80AE36B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE36B8  7C 08 02 A6 */	mflr r0
/* 80AE36BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE36C0  4B FF FA E1 */	bl CreateHeap__11daNpc_Sha_cFv
/* 80AE36C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE36C8  7C 08 03 A6 */	mtlr r0
/* 80AE36CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE36D0  4E 80 00 20 */	blr 
