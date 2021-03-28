lbl_805A28E0:
/* 805A28E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A28E4  7C 08 02 A6 */	mflr r0
/* 805A28E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A28EC  3C 60 80 5A */	lis r3, data_805A32C0@ha
/* 805A28F0  38 63 32 C0 */	addi r3, r3, data_805A32C0@l
/* 805A28F4  4B CC 08 58 */	b ModuleConstructorsX
/* 805A28F8  4B CC 07 90 */	b ModuleProlog
/* 805A28FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2900  7C 08 03 A6 */	mtlr r0
/* 805A2904  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2908  4E 80 00 20 */	blr 
