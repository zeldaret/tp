lbl_80AE3600:
/* 80AE3600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE3604  7C 08 02 A6 */	mflr r0
/* 80AE3608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE360C  4B 66 4F 20 */	b execute__8daNpcT_cFv
/* 80AE3610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE3614  7C 08 03 A6 */	mtlr r0
/* 80AE3618  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE361C  4E 80 00 20 */	blr 
