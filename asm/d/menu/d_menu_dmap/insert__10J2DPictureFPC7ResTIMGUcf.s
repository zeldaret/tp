lbl_801BDD70:
/* 801BDD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BDD74  7C 08 02 A6 */	mflr r0
/* 801BDD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BDD7C  7C A6 2B 78 */	mr r6, r5
/* 801BDD80  38 A0 00 00 */	li r5, 0
/* 801BDD84  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDD88  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 801BDD8C  7D 89 03 A6 */	mtctr r12
/* 801BDD90  4E 80 04 21 */	bctrl 
/* 801BDD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BDD98  7C 08 03 A6 */	mtlr r0
/* 801BDD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 801BDDA0  4E 80 00 20 */	blr 
