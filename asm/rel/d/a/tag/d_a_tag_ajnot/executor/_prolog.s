lbl_805A25E0:
/* 805A25E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A25E4  7C 08 02 A6 */	mflr r0
/* 805A25E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A25EC  3C 60 80 5A */	lis r3, data_805A2878@ha
/* 805A25F0  38 63 28 78 */	addi r3, r3, data_805A2878@l
/* 805A25F4  4B CC 0B 58 */	b ModuleConstructorsX
/* 805A25F8  4B CC 0A 90 */	b ModuleProlog
/* 805A25FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2600  7C 08 03 A6 */	mtlr r0
/* 805A2604  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2608  4E 80 00 20 */	blr 
