lbl_8070A620:
/* 8070A620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A624  7C 08 02 A6 */	mflr r0
/* 8070A628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A62C  3C 60 80 71 */	lis r3, data_80713960@ha
/* 8070A630  38 63 39 60 */	addi r3, r3, data_80713960@l
/* 8070A634  4B B5 8B 18 */	b ModuleConstructorsX
/* 8070A638  4B B5 8A 50 */	b ModuleProlog
/* 8070A63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A640  7C 08 03 A6 */	mtlr r0
/* 8070A644  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A648  4E 80 00 20 */	blr 
