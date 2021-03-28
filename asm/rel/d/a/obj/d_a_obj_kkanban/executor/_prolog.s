lbl_80C46620:
/* 80C46620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46624  7C 08 02 A6 */	mflr r0
/* 80C46628  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4662C  3C 60 80 C4 */	lis r3, data_80C46F4C@ha
/* 80C46630  38 63 6F 4C */	addi r3, r3, data_80C46F4C@l
/* 80C46634  4B 61 CB 18 */	b ModuleConstructorsX
/* 80C46638  4B 61 CA 50 */	b ModuleProlog
/* 80C4663C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46640  7C 08 03 A6 */	mtlr r0
/* 80C46644  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46648  4E 80 00 20 */	blr 
