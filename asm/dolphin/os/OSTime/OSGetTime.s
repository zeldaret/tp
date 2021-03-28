lbl_803426FC:
/* 803426FC  7C 6D 42 E6 */	mftbu r3
/* 80342700  7C 8C 42 E6 */	mftb r4, 0x10c
/* 80342704  7C AD 42 E6 */	mftbu r5
/* 80342708  7C 03 28 00 */	cmpw r3, r5
/* 8034270C  40 82 FF F0 */	bne OSGetTime
/* 80342710  4E 80 00 20 */	blr 
