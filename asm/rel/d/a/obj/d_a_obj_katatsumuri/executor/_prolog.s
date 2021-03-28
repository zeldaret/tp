lbl_80C39880:
/* 80C39880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39884  7C 08 02 A6 */	mflr r0
/* 80C39888  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3988C  3C 60 80 C4 */	lis r3, data_80C3C660@ha
/* 80C39890  38 63 C6 60 */	addi r3, r3, data_80C3C660@l
/* 80C39894  4B 62 98 B8 */	b ModuleConstructorsX
/* 80C39898  4B 62 97 F0 */	b ModuleProlog
/* 80C3989C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C398A0  7C 08 03 A6 */	mtlr r0
/* 80C398A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C398A8  4E 80 00 20 */	blr 
