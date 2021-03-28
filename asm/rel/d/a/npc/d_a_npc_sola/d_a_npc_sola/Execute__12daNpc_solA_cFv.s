lbl_80AED12C:
/* 80AED12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED130  7C 08 02 A6 */	mflr r0
/* 80AED134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED138  4B 65 B3 F4 */	b execute__8daNpcT_cFv
/* 80AED13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED140  7C 08 03 A6 */	mtlr r0
/* 80AED144  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED148  4E 80 00 20 */	blr 
