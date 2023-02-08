lbl_80CFE124:
/* 80CFE124  88 03 05 D2 */	lbz r0, 0x5d2(r3)
/* 80CFE128  28 00 00 00 */	cmplwi r0, 0
/* 80CFE12C  4C 82 00 20 */	bnelr 
/* 80CFE130  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 80CFE134  B0 03 05 D0 */	sth r0, 0x5d0(r3)
/* 80CFE138  38 00 00 01 */	li r0, 1
/* 80CFE13C  98 03 05 D2 */	stb r0, 0x5d2(r3)
/* 80CFE140  38 00 00 00 */	li r0, 0
/* 80CFE144  B0 03 04 B8 */	sth r0, 0x4b8(r3)
/* 80CFE148  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80CFE14C  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80CFE150  4E 80 00 20 */	blr 
