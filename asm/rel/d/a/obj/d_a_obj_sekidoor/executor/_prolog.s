lbl_80CCCF40:
/* 80CCCF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCCF44  7C 08 02 A6 */	mflr r0
/* 80CCCF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCCF4C  3C 60 80 CD */	lis r3, data_80CCD9F4@ha
/* 80CCCF50  38 63 D9 F4 */	addi r3, r3, data_80CCD9F4@l
/* 80CCCF54  4B 59 61 F8 */	b ModuleConstructorsX
/* 80CCCF58  4B 59 61 30 */	b ModuleProlog
/* 80CCCF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCCF60  7C 08 03 A6 */	mtlr r0
/* 80CCCF64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCCF68  4E 80 00 20 */	blr 
