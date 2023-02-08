lbl_80296710:
/* 80296710  A0 03 01 58 */	lhz r0, 0x158(r3)
/* 80296714  28 00 00 00 */	cmplwi r0, 0
/* 80296718  40 82 00 18 */	bne lbl_80296730
/* 8029671C  80 0D 8C D8 */	lwz r0, sBlockSize__13JASAramStream(r13)
/* 80296720  54 03 20 36 */	slwi r3, r0, 4
/* 80296724  38 00 00 09 */	li r0, 9
/* 80296728  7C 63 03 96 */	divwu r3, r3, r0
/* 8029672C  4E 80 00 20 */	blr 
lbl_80296730:
/* 80296730  80 0D 8C D8 */	lwz r0, sBlockSize__13JASAramStream(r13)
/* 80296734  54 03 F8 7E */	srwi r3, r0, 1
/* 80296738  4E 80 00 20 */	blr 
