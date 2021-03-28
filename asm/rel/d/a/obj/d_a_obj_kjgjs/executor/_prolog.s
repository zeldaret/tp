lbl_80C46020:
/* 80C46020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46024  7C 08 02 A6 */	mflr r0
/* 80C46028  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4602C  3C 60 80 C4 */	lis r3, data_80C4653C@ha
/* 80C46030  38 63 65 3C */	addi r3, r3, data_80C4653C@l
/* 80C46034  4B 61 D1 18 */	b ModuleConstructorsX
/* 80C46038  4B 61 D0 50 */	b ModuleProlog
/* 80C4603C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46040  7C 08 03 A6 */	mtlr r0
/* 80C46044  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46048  4E 80 00 20 */	blr 
