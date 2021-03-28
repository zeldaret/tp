lbl_80CDD218:
/* 80CDD218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD21C  7C 08 02 A6 */	mflr r0
/* 80CDD220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD224  4B 58 5E 6C */	b ModuleUnresolved
/* 80CDD228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD22C  7C 08 03 A6 */	mtlr r0
/* 80CDD230  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD234  4E 80 00 20 */	blr 
