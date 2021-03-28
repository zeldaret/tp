lbl_80BEB984:
/* 80BEB984  1C A5 00 14 */	mulli r5, r5, 0x14
/* 80BEB988  38 A5 05 80 */	addi r5, r5, 0x580
/* 80BEB98C  7C A3 2A 14 */	add r5, r3, r5
/* 80BEB990  A8 05 00 00 */	lha r0, 0(r5)
/* 80BEB994  B0 04 00 00 */	sth r0, 0(r4)
/* 80BEB998  A8 05 00 02 */	lha r0, 2(r5)
/* 80BEB99C  B0 04 00 02 */	sth r0, 2(r4)
/* 80BEB9A0  A8 05 00 04 */	lha r0, 4(r5)
/* 80BEB9A4  B0 04 00 04 */	sth r0, 4(r4)
/* 80BEB9A8  4E 80 00 20 */	blr 
