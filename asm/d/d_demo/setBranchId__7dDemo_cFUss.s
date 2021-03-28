lbl_80039EEC:
/* 80039EEC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80039EF0  A0 0D 88 C0 */	lhz r0, m_branchType__7dDemo_c(r13)
/* 80039EF4  7C 03 00 40 */	cmplw r3, r0
/* 80039EF8  4C 82 00 20 */	bnelr 
/* 80039EFC  B0 8D 80 A0 */	sth r4, m_branchId__7dDemo_c(r13)
/* 80039F00  4E 80 00 20 */	blr 
