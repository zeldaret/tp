lbl_8001814C:
/* 8001814C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018150  7C 08 02 A6 */	mflr r0
/* 80018154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018158  90 6D 87 10 */	stw r3, sConsole(r13)
/* 8001815C  4B FF FC D5 */	bl dispHeapInfo__Fv
/* 80018160  4B FF FE 71 */	bl dispDateInfo__Fv
/* 80018164  4B FF FF C1 */	bl dispConsoleToTerminal__Fv
/* 80018168  4B FF FE 25 */	bl dispGameInfo__Fv
/* 8001816C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018170  7C 08 03 A6 */	mtlr r0
/* 80018174  38 21 00 10 */	addi r1, r1, 0x10
/* 80018178  4E 80 00 20 */	blr 
