lbl_807C2558:
/* 807C2558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C255C  7C 08 02 A6 */	mflr r0
/* 807C2560  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C2564  4B AA 0B 2C */	b ModuleUnresolved
/* 807C2568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C256C  7C 08 03 A6 */	mtlr r0
/* 807C2570  38 21 00 10 */	addi r1, r1, 0x10
/* 807C2574  4E 80 00 20 */	blr 
