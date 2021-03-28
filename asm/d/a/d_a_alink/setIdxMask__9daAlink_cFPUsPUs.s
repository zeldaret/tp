lbl_800A3CE4:
/* 800A3CE4  A0 04 00 00 */	lhz r0, 0(r4)
/* 800A3CE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A3CEC  4C 82 00 20 */	bnelr 
/* 800A3CF0  A0 05 00 00 */	lhz r0, 0(r5)
/* 800A3CF4  54 03 A7 3F */	rlwinm. r3, r0, 0x14, 0x1c, 0x1f
/* 800A3CF8  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 800A3CFC  B0 05 00 00 */	sth r0, 0(r5)
/* 800A3D00  4D 82 00 20 */	beqlr 
/* 800A3D04  B0 64 00 00 */	sth r3, 0(r4)
/* 800A3D08  4E 80 00 20 */	blr 
