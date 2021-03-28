lbl_80C33FE0:
/* 80C33FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33FE4  7C 08 02 A6 */	mflr r0
/* 80C33FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33FEC  3C 60 80 C3 */	lis r3, data_80C34EE4@ha
/* 80C33FF0  38 63 4E E4 */	addi r3, r3, data_80C34EE4@l
/* 80C33FF4  4B 62 F1 58 */	b ModuleConstructorsX
/* 80C33FF8  4B 62 F0 90 */	b ModuleProlog
/* 80C33FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34000  7C 08 03 A6 */	mtlr r0
/* 80C34004  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34008  4E 80 00 20 */	blr 
