lbl_80017E08:
/* 80017E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017E0C  7C 08 02 A6 */	mflr r0
/* 80017E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017E14  7C 64 1B 78 */	mr r4, r3
/* 80017E18  80 6D 87 10 */	lwz r3, sConsole(r13)
/* 80017E1C  48 2C FE 1D */	bl print__10JUTConsoleFPCc
/* 80017E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017E24  7C 08 03 A6 */	mtlr r0
/* 80017E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80017E2C  4E 80 00 20 */	blr 
