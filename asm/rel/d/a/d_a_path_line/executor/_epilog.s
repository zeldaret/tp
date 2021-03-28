lbl_8048572C:
/* 8048572C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485730  7C 08 02 A6 */	mflr r0
/* 80485734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485738  4B DD D9 54 */	b ModuleEpilog
/* 8048573C  3C 60 80 48 */	lis r3, data_8048577C@ha
/* 80485740  38 63 57 7C */	addi r3, r3, data_8048577C@l
/* 80485744  4B DD DA 4C */	b ModuleDestructorsX
/* 80485748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048574C  7C 08 03 A6 */	mtlr r0
/* 80485750  38 21 00 10 */	addi r1, r1, 0x10
/* 80485754  4E 80 00 20 */	blr 
