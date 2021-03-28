lbl_80BFA6F8:
/* 80BFA6F8  3C 60 80 C0 */	lis r3, struct_80BFAFE8+0x0@ha
/* 80BFA6FC  38 83 AF E8 */	addi r4, r3, struct_80BFAFE8+0x0@l
/* 80BFA700  A0 64 00 00 */	lhz r3, 0(r4)
/* 80BFA704  38 03 00 01 */	addi r0, r3, 1
/* 80BFA708  B0 04 00 00 */	sth r0, 0(r4)
/* 80BFA70C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BFA710  28 00 00 04 */	cmplwi r0, 4
/* 80BFA714  4C 81 00 20 */	blelr 
/* 80BFA718  38 00 00 04 */	li r0, 4
/* 80BFA71C  B0 04 00 00 */	sth r0, 0(r4)
/* 80BFA720  4E 80 00 20 */	blr 
