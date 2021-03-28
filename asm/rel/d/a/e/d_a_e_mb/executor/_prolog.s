lbl_80706080:
/* 80706080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80706084  7C 08 02 A6 */	mflr r0
/* 80706088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070608C  3C 60 80 71 */	lis r3, data_807089FC@ha
/* 80706090  38 63 89 FC */	addi r3, r3, data_807089FC@l
/* 80706094  4B B5 D0 B8 */	b ModuleConstructorsX
/* 80706098  4B B5 CF F0 */	b ModuleProlog
/* 8070609C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807060A0  7C 08 03 A6 */	mtlr r0
/* 807060A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807060A8  4E 80 00 20 */	blr 
