lbl_80BA7EC0:
/* 80BA7EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA7EC4  7C 08 02 A6 */	mflr r0
/* 80BA7EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA7ECC  3C 60 80 BB */	lis r3, data_80BA8DF8@ha
/* 80BA7ED0  38 63 8D F8 */	addi r3, r3, data_80BA8DF8@l
/* 80BA7ED4  4B 6B B2 78 */	b ModuleConstructorsX
/* 80BA7ED8  4B 6B B1 B0 */	b ModuleProlog
/* 80BA7EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA7EE0  7C 08 03 A6 */	mtlr r0
/* 80BA7EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA7EE8  4E 80 00 20 */	blr 
