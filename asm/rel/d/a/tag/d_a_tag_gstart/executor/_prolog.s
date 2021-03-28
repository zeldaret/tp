lbl_805A3400:
/* 805A3400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3404  7C 08 02 A6 */	mflr r0
/* 805A3408  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A340C  3C 60 80 5A */	lis r3, data_805A3680@ha
/* 805A3410  38 63 36 80 */	addi r3, r3, data_805A3680@l
/* 805A3414  4B CB FD 38 */	b ModuleConstructorsX
/* 805A3418  4B CB FC 70 */	b ModuleProlog
/* 805A341C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3420  7C 08 03 A6 */	mtlr r0
/* 805A3424  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3428  4E 80 00 20 */	blr 
