lbl_80598100:
/* 80598100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598104  7C 08 02 A6 */	mflr r0
/* 80598108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059810C  3C 60 80 5A */	lis r3, data_80598F64@ha
/* 80598110  38 63 8F 64 */	addi r3, r3, data_80598F64@l
/* 80598114  4B CC B0 38 */	b ModuleConstructorsX
/* 80598118  4B CC AF 70 */	b ModuleProlog
/* 8059811C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598120  7C 08 03 A6 */	mtlr r0
/* 80598124  38 21 00 10 */	addi r1, r1, 0x10
/* 80598128  4E 80 00 20 */	blr 
